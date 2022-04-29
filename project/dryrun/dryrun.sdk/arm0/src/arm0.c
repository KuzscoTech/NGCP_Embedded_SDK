/*
Receive commands via UART
*/

#include "arm0.h"

#define DBG_DRIVEMOTOR 1
#define DBG_MGM0       0

/************************** GLOBAL VARIABLES ***********************/
static INTC IntcInstance;
static XUartLite UartLiteInst0;
static XUartLite UartLiteInst1;

// UART VARS
u8 SendBuffer [N_UARTS][UART_BUFFER_SIZE];
u8 RecvBuffer [N_UARTS][UART_BUFFER_SIZE];
static volatile int TotalSentCount [N_UARTS];
static volatile int TotalRecvCount [N_UARTS];
int DATACOUNT[N_UARTS];
_Bool VALID [N_UARTS];
int Errors [N_UARTS];

// PWM INSTANCES
ugv_pwm driveMotorPwmInstance;
ugv_pwm mgm0PwmInstance;

// QEI INSTANCES
ugv_qei driveMotorQeiInstance;
ugv_qei mgm0QeiInstance;

int main()
{
    int Status;
    //
    float driveMotor_setPoint; // drive motor desired rpm
    //
    

    printf("\r\n\nARM0 Inititialized!\r\n\n");

    // Setup interrupt system
    printf("Initializing XscuGic...\r\n");
    Status = SetupIntrSystem(&IntcInstance);
    if(Status != XST_SUCCESS) {
        printf("Xscugic setup failed!\r\n");
        return XST_FAILURE;
    }

    // Initialize UARTs
    printf("Initializing UART drivers...\r\n");
    UartLiteInit(&UartLiteInst0, UART_DEVICE_ID_0);
    UartLiteInit(&UartLiteInst1, UART_DEVICE_ID_1);
    if(Status != XST_SUCCESS) {
        printf("UART setup failed!\r\n");
        return XST_FAILURE;
    }

    // Setup UART0 interrupts
	Status = UartLiteSetupIntrSystem(&IntcInstance,
					                 &UartLiteInst0,
					                 UART_IRPT_INTR_0);
	if (Status != XST_SUCCESS) {
        xil_printf("UART0 Interrupt Config Failed!\r\n");
		return XST_FAILURE;
	}
	xil_printf("UART0 Interrupt Initialized!\r\n");

    // Setup UART1 interrupts
	Status = UartLiteSetupIntrSystem(&IntcInstance,
                                     &UartLiteInst1,
                                     UART_IRPT_INTR_1);
    if (Status != XST_SUCCESS) {
        xil_printf("UART1 Interrupt Config Failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("UART1 Interrupt Initialized!\r\n");

    // Set UART interrupt handlers
    XUartLite_SetSendHandler(&UartLiteInst0, UartLiteSendHandler0, &UartLiteInst0);
    XUartLite_SetRecvHandler(&UartLiteInst0, UartLiteRecvHandler0, &UartLiteInst0);
    XUartLite_SetSendHandler(&UartLiteInst1, UartLiteSendHandler1, &UartLiteInst1);
    XUartLite_SetRecvHandler(&UartLiteInst1, UartLiteRecvHandler1, &UartLiteInst1);

    // Enable UART interrupts
    XUartLite_EnableInterrupt(&UartLiteInst0);
    XUartLite_EnableInterrupt(&UartLiteInst1);

    
    // Initialize Drive Motor
    printf("Initializing drive motor drivers...\r\n");
    arm0_initializeDriveMotorPwm (&driveMotorPwmInstance);
    arm0_initializeDriveMotorQEI (&driveMotorQeiInstance);
    if(Status != XST_SUCCESS) {
        printf("Drive Motor setup failed!\r\n");
        return XST_FAILURE;
    }

    // Initialize Micro Metal Gear Motors
    printf("Initializing Micrometal Gear Motor 0 drivers...\r\n");
    arm0_initializeMicroMetalPwm (&mgm0PwmInstance, DRIVE_MOTOR_ID);
    arm0_initializeMicroMetalQEI (&mgm0QeiInstance, MICROMETAL_ID);
    if(Status != XST_SUCCESS) {
        printf("Micrometal Gear Motor 0 setup failed!\r\n");
        return XST_FAILURE;
    }

    // Initialize PIDs
    printf("Initializing PID modules...\r\n");
    PIDController driveMotorPIDInstance = { DRIVEMOTOR_PID_KP, 
                                            DRIVEMOTOR_PID_KI, 
                                            DRIVEMOTOR_PID_KD,
                                            DRIVEMOTOR_PID_TAU,
                                            DRIVEMOTOR_PID_LIM_MIN, 
                                            DRIVEMOTOR_PID_LIM_MAX,
			                                DRIVEMOTOR_PID_LIM_MIN_INT, 
                                            DRIVEMOTOR_PID_LIM_MAX_INT,
                                            DRIVEMOTOR_PID_SAMPLE_TIME };
    //
    PIDController mgm0PIDInstance = { MGM0_PID_KP, 
                                      MGM0_PID_KI, 
                                      MGM0_PID_KD,
                                      MGM0_PID_TAU,
                                      MGM0_PID_LIM_MIN, 
                                      MGM0_PID_LIM_MAX,
			                          MGM0_PID_LIM_MIN_INT, 
                                      MGM0_PID_LIM_MAX_INT,
                                      MGM0_PID_SAMPLE_TIME };

    sleep(2);

    int cnt_actual;
    int duty_actual;
    int duty_percentage;
    u32 duty;
    //
    float pidout_temp;
    float pid_output;

    driveMotor driveMotor;
    //
    float mgm0_setDelta;
    float mgm0_setPoint;       // mgm0 desired position
    float mgm0_pid_setPoint;
    float mgm0_pid_position;
    _Bool mgm0_setDir;
    _Bool mgm0_currentDir;
    float mgm0_currentRpm;
    float mgm0_rpm;
    float mgm0_currentPosition;




    // receive 4 bytes total
    // [0-1] brushed motor ID + data
    // [2-3] servo ID + data
    XUartLite_Recv(&UartLiteInst0, RecvBuffer[0], DATACOUNT[0]);

    // receive 8 bytes total
    // [0-1] mgm0 ID + data
    // ...
    XUartLite_Recv(&UartLiteInst1, RecvBuffer[1], DATACOUNT[1]);
    while ((TotalRecvCount[0] != DATACOUNT[0]) && (TotalRecvCount[1] != DATACOUNT[1]))
    {
        //TODO: Timeout timer
    }     
    Errors[0] = UartLiteInst0.Stats.ReceiveOverrunErrors;
    Errors[1] = UartLiteInst1.Stats.ReceiveOverrunErrors;
    for (char i=0; i<2; i++) {
        if(Errors[i] > 0) {
            VALID[i] = FALSE;
        }
    }

    while(1) 
    {
        //Used Varibles = 
        driveMotor_setPoint = 300.0;
        arm0_calculateDriveMotorPid(&driveMotor_setPoint, &driveMotor, &driveMotorQeiInstance, &driveMotorPwmInstance, &driveMotorPIDInstance);

        if(ugvQei_getDirection(&driveMotorQeiInstance) == MOTOR_REVERSE) {
        	driveMotor.currentRpm = -driveMotor.currentRpm;
        }

        if(DBG_DRIVEMOTOR == 1) {
        	printf("--------------------------------------\r\n");
        	printf("DRIVE MOTOR:\r\n");
        	printf("\tCurrent RPM    : %3.3f\r\n",  driveMotor.currentRpm);
        	if(driveMotor.currentDir) {
        	    printf("\tCurrent Dir    : FORWARD\r\n\n");
        	}
        	else {
        	    printf("\tCurrent Dir    : REVERSE\r\n\n");
        	}

        	printf("\tSetpoint       : %5.3f RPM\r\n", driveMotor_setPoint);
        	printf("\tMeasurement    : %5.3f RPM\r\n", driveMotor.rpm);
        	printf("\tPID Output     : %6.3f\r\n",     driveMotorPIDInstance.out);
        	printf("\tPID Error      : %6.3f\r\n",     driveMotorPIDInstance.prevError);
        	printf("\tDuty Cycle     : %d\r\n",        driveMotorPwmInstance.speedSelect);
        	if(driveMotorPwmInstance.setDirection) {
        	    printf("\tDrive Dir   : FORWARD\r\n\n");
        	}
        	else {
        	    printf("\tDrive Dir   : REVERSE\r\n\n");
        	}
        }

        // MICROMETAL GEAR MOTOR 0 PID //
        mgm0_setDelta = -30;

        // get current rpm, direction, and position
        mgm0_currentRpm = ugvQei_getRpm (&mgm0QeiInstance);
        mgm0_currentDir = ugvQei_getDirection(&mgm0QeiInstance);
        if(!mgm0_currentDir) {
        	mgm0_currentRpm = -mgm0_currentRpm;
        }
        mgm0_currentPosition = ugvQei_convertMgmPosition (&mgm0QeiInstance);
        mgm0_setPoint = 90.0;

        // if need to go reverse
        if(mgm0_setPoint < mgm0_currentPosition)
        {
        	ugvPwm_setDir(&mgm0PwmInstance, MOTOR_REVERSE);
        	if(mgm0_currentPosition - mgm0_setPoint < 0) {
        		mgm0_pid_setPoint = mgm0_setPoint - mgm0_currentPosition;
        	}
        }
        // else go forward
        else
        {
        	ugvPwm_setDir(&mgm0PwmInstance, MOTOR_FORWARD);
        	mgm0_pid_setPoint = mgm0_setPoint;
        }

        // update PID
        calculatePid(&mgm0PIDInstance, mgm0_pid_setPoint, mgm0_pid_position);
        ugvPwm_setSpeed(&mgm0PwmInstance, (u8) mgm0PIDInstance.out);


        if(DBG_MGM0 == 1) {
        	printf("MICROMETAL GEAR MOTOR 0:\r\n");
        	printf("\tSetpoint    : %5.3f RPM\r\n", mgm0_setPoint);
        	printf("\tCurrent RPM : %3.3f\r\n",     mgm0_currentRpm);
        	printf("\tCurrent Pos : %3.3f\r\n",     mgm0_currentPosition);
        	printf("\tPID Measure : $4.3f\r\n",     mgm0_pid_position);
        	printf("\tPID Output  : %6.3f\r\n",     mgm0PIDInstance.out);
        	printf("\tPID Error   : %6.3f\r\n",     mgm0PIDInstance.prevError);
        	printf("\tDuty Cycle  : %d\r\n",        mgm0PwmInstance.speedSelect);
        	if(mgm0PwmInstance.setDirection) {
        	    printf("\tDrive Dir   : FORWARD\r\n\n");
        	}
        	else {
        	    printf("\tDrive Dir   : REVERSE\r\n\n");
        	}
        }
    }
}

/**
 * @brief Uartlite send interrupt handler for UARTLITE0.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for send events.
 */
void UartLiteSendHandler0(void *CallBackRef, unsigned int EventData) {
	TotalSentCount[0] = EventData;
}

/**
 * @brief Uartlite send interrupt handler for UARTLITE0.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for receive events.
 */
void UartLiteRecvHandler0(void *CallBackRef, unsigned int EventData) {
	TotalRecvCount[0] = EventData;
}

/**
 * @brief Uartlite send interrupt handler for UARTLITE1.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for send events.
 */
void UartLiteSendHandler1(void *CallBackRef, unsigned int EventData) {
	TotalSentCount[1] = EventData;
}

/**
 * @brief Uartlite send interrupt handler for UARTLITE1.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for send events.
 */
void UartLiteRecvHandler1(void *CallBackRef, unsigned int EventData) {
	TotalRecvCount[1] = EventData;
}

