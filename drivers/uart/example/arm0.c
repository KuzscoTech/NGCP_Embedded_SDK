/*
Receive commands via UART
*/

#include "arm0.h"


/************************** GLOBAL VARIABLES ***********************/
static INTC IntcInstance;
static XUartLite UartLiteInst0;
static XUartLite UartLiteInst1;

// UART VARS
u8 SendBuffer [2][UART_BUFFER_SIZE];
u8 RecvBuffer [2][UART_BUFFER_SIZE];

static volatile int TotalSentCount [2];
static volatile int TotalRecvCount [2];

int   DATACOUNT[2];
_Bool VALID    [2];
int   ERRORS   [2];

// UART0 STATE MACHINE
int UART0_STATE;

int main()
{
    int Status;
    _Bool          uart0RecvDone;
    _Bool          uart0SendDone;
    ugv_driveMotor driveMotorInst;
    ugv_pwm        driveMotorPwmInst;
    ugv_qei        driveMotorQeiInst;
    PIDController  driveMotorPidInst;
    

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
	Status = UartLiteSetupIntrSystem(&IntcInstance, &UartLiteInst0, UART_IRPT_INTR_0);
	if (Status != XST_SUCCESS) {
        xil_printf("UART0 Interrupt Config Failed!\r\n");
		return XST_FAILURE;
	}
	xil_printf("UART0 Interrupt Initialized!\r\n");

    // Setup UART1 interrupts
	Status = UartLiteSetupIntrSystem(&IntcInstance, &UartLiteInst1, UART_IRPT_INTR_1);
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
    Status = driveMotor_Initialize(&driveMotorInst, &driveMotorPwmInst, &driveMotorQeiInst, &driveMotorPidInst);
    if(Status != XST_SUCCESS) {
        printf("Drive Motor setup failed!\r\n");
        return XST_FAILURE;
    }

    // MAIN LOOP
    uart0SendDone = TRUE;
    uart0RecvDone = FALSE;

    TotalSentCount[0] = 0;
    TotalSentCount[1] = 0;
    TotalRecvCount[0] = 0;
    TotalRecvCount[1] = 0;

    while(1)
    {

    	driveMotor_setPidOutput(&driveMotorInst, (float) driveMotorInst.uartSetPoint);

    	if(uart0SendDone) {
    		//printf("Sending!\r\n");
    		for(int i=0; i<UART_BUFFER_SIZE; i++) {
    			SendBuffer[0][i] = 0;
    		}
			UartLite_sendDriveMotorStats(&driveMotorInst, SendBuffer[0], 0);
			TotalSentCount[0] = 0;
			XUartLite_Send(&UartLiteInst0, SendBuffer[0], DRIVEMOTOR_FRAME_SIZE);
			uart0SendDone = FALSE;
			//uart_printBuffer(SendBuffer[0]);
    	}

    	if(TotalSentCount[0] >= DRIVEMOTOR_FRAME_SIZE) {
    		uart0SendDone = TRUE;
    	}

    	/*
    	if(uart0RecvDone) {
    		printf("Receiving!\r\n");
    		uart_printBuffer(RecvBuffer[0]);
    		Uart0_parseDriveMotor(RecvBuffer[0], &driveMotorInst);
    		uart_printBuffer(RecvBuffer[0]);
    		printf("\r\n\n\n");
    		TotalRecvCount[0] = 0;
    		XUartLite_Recv(&UartLiteInst0, RecvBuffer[0], 7);
    		uart0RecvDone = FALSE;
    	}

    	//uart_printBuffer(RecvBuffer[0]);
		if(TotalRecvCount[0] >= 7) {
			uart0RecvDone = TRUE;
		}
		*/

    	printf("Receiving!\r\n");
    	XUartLite_Recv(&UartLiteInst0, RecvBuffer[0], DRIVEMOTOR_CMD_SIZE);
    	while(TotalRecvCount[0] != DRIVEMOTOR_CMD_SIZE) {
    	}
    	uart_printBuffer(RecvBuffer[0]);
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


