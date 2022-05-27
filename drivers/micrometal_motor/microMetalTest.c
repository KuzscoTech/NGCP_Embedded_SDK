#include <stdio.h>
#include "arm1.h"
#include "xuartps.h"
#include "xtime_l.h"
#include "sleep.h"


// CONFIG
#define MOTORID                1 // motor ID
#define DBG_CASCADE            0
#define DBG_MANUAL             1
#define DBG_MATLAB             0
#define DBG_VERBOSE_MM         0

#define DBG_MANUAL_DUTY        255
#define DBG_MANUAL_DIR         1

#define USERINPUT_BUFFERSIZE   20

// DEVICE PARAMETERS
#define UART_BASEADDR          XPAR_PS7_UART_1_BASEADDR

// GLOBAL VARS
static ugv_microMetalMotor microMotorInst;
int runTime;

// FUNCTION PROTOTYPES
void printMenu();
void getSetPoint(char recvData[USERINPUT_BUFFERSIZE]);
float getPidParam(char recvData[USERINPUT_BUFFERSIZE]);

int asciiToInt(char text) {
	return text - '0';
}



//************************************************************************************/
int main()
{
	int Status;
	ugv_pwm             microMotorPwmInst;
	ugv_qei    			microMotorQeiInst;
	PIDController 		microMotorPosPidInst;
	PIDController       microMotorSpdPidInst;

	char  userInput [10];
	int   userInputCount;
	XTime tStart, tEnd;
	float deltaT;
	_Bool validInput = FALSE;
	int   userDuty;
    int   motorSelect = MOTORID;
    int   initFlag = 1;


	#if DBG_MATLAB == 1
    long stepCount;
	#endif

    printf("\r\n");
    printf("---------------------------------------------------------------\r\n");
    printf("Welcome to the NGCP Micrometal Gear Motor PID Tuning Utility !!\r\n");
    printf("\r\n-> Currently tuning Micrometal Gear Motor %d\r\n", MOTORID);
    printf("---------------------------------------------------------------\r\n");

    // Initialize micrometal motor
   	Status = microMetal_Initialize(&microMotorInst, &microMotorPwmInst, &microMotorQeiInst, &microMotorPosPidInst, MOTORID);
    if(Status != XST_SUCCESS){
    	printf("Micrometal Gear Motor setup failed!\r\n");
   		return XST_FAILURE;
    }

    // Initialize cascaded inner PID if applicable
	#if DBG_CASCADE
    microMotorInst.pid_inner = &microMotorSpdPidInst;
    microMotorInst.pid_inner->Kp        = MGM0_SPD_PID_KP;
    microMotorInst.pid_inner->Ki        = MGM0_SPD_PID_KI;
    microMotorInst.pid_inner->Kd        = MGM0_SPD_PID_KD;
    microMotorInst.pid_inner->tau       = MGM0_SPD_PID_TAU;
    microMotorInst.pid_inner->limMin    = MGM0_SPD_PID_LIM_MIN;
    microMotorInst.pid_inner->limMax    = MGM0_SPD_PID_LIM_MAX;
    microMotorInst.pid_inner->limMinInt = MGM0_SPD_PID_LIM_MIN_INT;
    microMotorInst.pid_inner->limMaxInt = MGM0_SPD_PID_LIM_MAX_INT;
    microMotorInst.pid_inner->T         = MGM0_SPD_PID_SAMPLE_TIME;
	#endif


    while(1)
    {

    	// USER INTERFACE
    	validInput = 0;
    	while(!validInput) {

    		if(!initFlag) {
    			printf("---------------------------------------------------------------\r\n");
    			printf("-> Currently tuning Micrometal Gear Motor %d\r\n", motorSelect);
    			switch(motorSelect)
    			{
    			case 0:
    				printf("Direction 0 - counterclockwise\r\n");
    				printf("Direction 1 - clockwise\r\n");
    				break;
    			case 1:
    				printf("Direction 0 - raise the arm\r\n");
    				printf("Direction 1 - lower the arm\r\n");
    				break;
    			case 2:
    				printf("Direction 0 - unknown\r\n");
    				printf("Direction 1 - unknown\r\n");
    				break;
    			case 3:
    				printf("Direction 0 - close the lid\r\n");
    				printf("Direction 1 - open the lid\r\n");
    				break;
    			default:
    				break;
    			}
    			printf("---------------------------------------------------------------\r\n");
    		}
			printMenu();
			initFlag = 0;

			// get mode select
			while(!XUartPs_IsReceiveData(UART_BASEADDR)){
			}
			if (XUartPs_IsReceiveData(UART_BASEADDR)) {
				userInput[0] = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
				xil_printf("%c", userInput[0]);
			}

			// modes
			printf("\r\n");
			switch(userInput[0])
			{
				case '0':
					#if(DBG_MANUAL == 1)
					printf("Enter duty cycle 0-255:\r\n");
					#else
					printf("Enter Setpoint 0-360 degrees:\r\n");
					#endif
					getSetPoint(userInput);
					validInput = 1;
					break;

				case '1':
					#if(DBG_MANUAL == 1)
					printf("Enter direction:\r\n");
					microMotorInst.setDir = (_Bool) getPidParam(userInput);
					#else
					printf("Enter Position PID Kp:\r\n");
					#endif
					microMotorInst.pid->Kp = getPidParam(userInput);
					validInput = 0;
					break;

				#if(DBG_MANUAL != 1)
				case '2':
					printf("Enter Position PID Ki:\r\n");
					microMotorInst.pid->Ki = getPidParam(userInput);
					validInput = 0;
					break;
				#endif

				#if(DBG_MANUAL != 1)
				case '3':
					printf("Enter Position PID Kd:\r\n");
					microMotorInst.pid->Kd = getPidParam(userInput);
					validInput = 0;
					break;
				#endif

				case '7':
					printf("Enter runtime in ms:\r\n");
					runTime = getPidParam(userInput);
					validInput = 0;
					break;

                case '8':
                    printf("Enter motor ID:\r\n");
                    while(!XUartPs_IsReceiveData(UART_BASEADDR)){
                    }
                    if (XUartPs_IsReceiveData(UART_BASEADDR)) {
                    	userInput[0] = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
                    	xil_printf("%c", userInput[0]);
                    }
                    userInput[0] = asciiToInt(userInput[0]);
                    if(userInput[0]>3 || userInput[0]<0) {
                    	printf("Invalid motor selection! \r\n");
                        break;
                    }
                    else {
                        motorSelect = userInput[0];
                        Status = microMetal_Initialize(&microMotorInst, &microMotorPwmInst, &microMotorQeiInst, &microMotorPosPidInst, motorSelect);
                        if(Status != XST_SUCCESS){
                        	printf("Micrometal Gear Motor setup failed!\r\n");
                        	return XST_FAILURE;
                        }
                        break;
                    }


				#if DBG_CASCADE == 1
				case '4':
					printf("Enter Speed PID Kp:\r\n");
					microMotorInst.pid_inner->Kp = getPidParam(userInput);
					validInput = 0;
					break;

				case '5':
					printf("Enter Speed PID Ki:\r\n");
					microMotorInst.pid_inner->Ki = getPidParam(userInput);
					validInput = 0;
					break;

				case '6':
					printf("Enter Speed PID Kd:\r\n");
					microMotorInst.pid_inner->Kd = getPidParam(userInput);
					validInput = 0;
					break;

				#endif

				default:
					printf("Invalid input you stupid fucking idiot\r\n");
					printf("Are you incapable of following basic instructions?\r\n");
					printf("Or are you illiterate?\r\n");
					printf("Or were you dropped on your head as a child?\r\n");
					printf("Try again dumbass. \r\n");
					sleep(0.5);
					validInput = 0;
			}
    	}
    	sleep(2);

    	// Run the motor for DBG_RUNTIME_MS milliseconds
    	deltaT = 0;
    	XTime_GetTime(&tStart);
    	printf("START\r\n");
    	while(deltaT < runTime) {

    		// set duty
			#if DBG_CASCADE == 1
    		microMetal_setCascadedPidOutput(&microMotorInst);
			#elif DBG_MANUAL == 1
    		microMetal_manualSetDutyDir(&microMotorInst, microMotorInst.setPos, microMotorInst.setDir);
			#else
    		microMetal_setPidOutput(&microMotorInst);
			#endif

    		microMetal_updateStats  (&microMotorInst);
    		XTime_GetTime(&tEnd);
    		deltaT = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND/1000);

    		if(DBG_MATLAB) {
    			printf("%d\r\n", microMotorInst.currentPos-359);
    		}
    		else {
    			microMetal_printStatus(&microMotorInst);
    			printf("\r\n");
    		}

    		if(DBG_VERBOSE_MM) {
    			printf("\r\nMicrometal %d:\r\n", MOTORID);
    		    microMetal_printStatus(&microMotorInst);
    		    microMetal_printDuty  (&microMotorInst);
    		    microMetal_printPid   (&microMotorInst);
    		}
    	}
    	printf("END!\r\n");
    	userInputCount = 0;
    	microMetal_manualSetDutyDir(&microMotorInst, 0, 0);


    }

    return 0;
}


void printMenu() {
	printf("\r\nCurrent Parameters:\r\n");
	printf("Runtime    : %d ms\r\n", runTime);
    #if DBG_MANUAL
	printf("Direction  : %d\r\n", microMotorInst.setDir);
    #else
    printf("Position Kp: %0.3f\r\n", microMotorInst.pid->Kp);
    printf("Position Ki: %0.3f\r\n", microMotorInst.pid->Ki);
	printf("Position Kd: %0.3f\r\n", microMotorInst.pid->Kd);
    #endif

	#if DBG_CASCADE
	printf("\r\n");
	printf("Speed    Kp: %0.3f\r\n", microMotorInst.pid_inner->Kp);
	printf("Speed    Ki: %0.3f\r\n", microMotorInst.pid_inner->Ki);
	printf("Speed    Kd: %0.3f\r\n", microMotorInst.pid_inner->Kd);
	#endif

	printf("\r\nOption Select:\r\n");
	printf("0 - Set Setpoint\r\n");
	printf("7 - Set Runtime\r\n");
    printf("8 - Change selected motor\r\n");

	#if DBG_MANUAL
	printf("1 - Change Direction\r\n");
	#else
	printf("1 - Change Position Kp\r\n");
    printf("2 - Change Position Ki\r\n");
	printf("3 - Change Position Kd\r\n");
	#endif

	#if DBG_CASCADE
	printf("4 - Change Speed Kp\r\n");
	printf("5 - Change Speed Ki\r\n");
	printf("6 - Change Speed Kd\r\n");
	#endif
	printf("\r\n");
}

void getSetPoint(char recvData[USERINPUT_BUFFERSIZE])
{
	char userInput[3];
	int  userInputCount=0;
	while(userInputCount < 3) {
		while(!XUartPs_IsReceiveData(UART_BASEADDR)){
		}
		if (XUartPs_IsReceiveData(UART_BASEADDR))
		{
			userInput[userInputCount] = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
			xil_printf("%c", userInput[userInputCount]);
			userInput[userInputCount] = asciiToInt(userInput[userInputCount]);
			userInputCount++;
		}
	}
	// Set user input
	if(userInput[2] == 0xDD)
		microMotorInst.setPos = userInput[0]*10 + userInput[1];
	else
		microMotorInst.setPos = userInput[0]*100 + userInput[1]*10 + userInput[2];

	printf("\r\nSetting position: %d\r\n", microMotorInst.setPos);
}

float getPidParam(char recvData[USERINPUT_BUFFERSIZE])
{
	char decimalInput [10];
	char fracInput   [10];
	int decimalCount = 0;
	int fracCount = 0;
	int fracFlag = 0;
	float setVal = 0.0;



	while(1) {
		while(!XUartPs_IsReceiveData(UART_BASEADDR)) {}
		if(XUartPs_IsReceiveData(UART_BASEADDR))
		{
			decimalInput[decimalCount] = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
			xil_printf("%c", decimalInput[decimalCount]);

			if(decimalInput[decimalCount] == 0x0D) {
				fracFlag = 0;
				break;
			}
			else if(decimalInput[decimalCount] != 0x2E) {
				decimalInput[decimalCount] = asciiToInt(decimalInput[decimalCount]);
				decimalCount++;
			}
			else {
				fracFlag = 1;
				break;
			}
		}
	}

	while(1) {
		if(!fracFlag) break;

		while(!XUartPs_IsReceiveData(UART_BASEADDR)) {}
		if(XUartPs_IsReceiveData(UART_BASEADDR))
		{
			fracInput[fracCount] = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
			xil_printf("%c", fracInput[fracCount]);
			if(fracInput[fracCount] != 0x0D) {
				fracInput[fracCount] = asciiToInt(fracInput[fracCount]);
				fracCount++;
			}
			else {
				break;
			}
		}
	}

	int exp=0;
	printf("\r\n");
	for(int i=decimalCount-1; i>=0; i--) {
		setVal = setVal + decimalInput[i] * pow(10, exp);
		exp++;
	}

	exp = 1;
	if(fracFlag) {
		for(int i=0; i<fracCount; i++) {
			setVal = setVal + (double) fracInput[i] * pow(10, -exp);
			exp++;
		}
	}

	printf("\r\nSetting to %0.3f\r\n", setVal);
	return setVal;
}
