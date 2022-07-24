#include <stdio.h>
#include "driveMotor_utilities.h"
#include "servoMotor_utilities.h"
#include "microMetal_utilities.h"
#include "xuartps.h"
#include "xtime_l.h"
#include "sleep.h"

#define BUFFERSIZE    20
#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR
#define DRIVEMOTOR_ID 4
#define SERVOMOTOR_ID 5
#define MGM0_ID       0
#define MGM1_ID       1
#define MGM2_ID       2
#define MGM3_ID       3

// CUSTOM TYPE
typedef struct {
    int   motorSelect;
    int   setpoint;
    int   runTime;
    _Bool dirSelect;
    char  userInput[BUFFERSIZE];
    _Bool inputValid;
    float deltaT;
} appInputs;


// FUNCTION PROTOTYPES
int   asciiToInt(char text);
void  printMenu();
void  getSetpoint  (appInputs *data);
void  getModeInput (appInputs *data);
float getFloatInput(appInputs *data);


// GLOBAL VARIABLES
static ugv_driveMotor driveMotorInst;
static ugv_servoMotor servoMotorInst;
static ugv_microMetalMotor mgm0Inst;
static ugv_microMetalMotor mgm1Inst;
static ugv_microMetalMotor mgm2Inst;
static ugv_microMetalMotor mgm3Inst;

/****************************************************************************/
int main()
{
	int       Status;
    appInputs appData;
    XTime     tStart;
    XTime     tCurrent;
    int       runCount=0;

	ugv_pwm             driveMotorPwmInst;
	ugv_qei             driveMotorQeiInst;
	PIDController       driveMotorPidInst;

	ugv_servo           servoMotorPwmInst;
	XSysMon             servoMotorAdcInst;
	PIDController       servoMotorPidInst;

	ugv_pwm             microMotor0PwmInst;
    ugv_qei    			microMotor0QeiInst;
	PIDController 		microMotor0PidInst;

	ugv_pwm             microMotor1PwmInst;
	ugv_qei    			microMotor1QeiInst;
	PIDController 		microMotor1PidInst;

	ugv_pwm             microMotor2PwmInst;
	ugv_qei    			microMotor2QeiInst;
	PIDController 		microMotor2PidInst;

	ugv_pwm             microMotor3PwmInst;
	ugv_qei    			microMotor3QeiInst;
	PIDController 		microMotor3PidInst;

	printf("\r\n");
	printf("---------------------------------------------------------------\r\n");
	printf("Welcome to the NGCP UGV Manual Control Utility !!\r\n");
	printf("---------------------------------------------------------------\r\n");

	// Initialize all the motors
	// Initialize Drive Motor
	printf("Initializing drive motor drivers...\r\n");
	Status = driveMotor_Initialize(&driveMotorInst, &driveMotorPwmInst, &driveMotorQeiInst, &driveMotorPidInst);
	if(Status != XST_SUCCESS) {
	    printf("Drive Motor setup failed!\r\n");
	    return XST_FAILURE;
	}

	// Initialize Servo Motor
	printf("Initializing servo motor drivers...\r\n");
	Status = servoMotor_Initialize(&servoMotorInst, &servoMotorPwmInst, &servoMotorAdcInst, &servoMotorPidInst);
	if(Status != XST_SUCCESS) {
	    printf("Servo Motor setup failed!\r\n");
	    return XST_FAILURE;
	}

	// Initialize micrometal 0 motor
	printf("Initializing micro metal 0 driver...\r\n");
	Status = microMetal_Initialize(&mgm0Inst, &microMotor0PwmInst, &microMotor0QeiInst, &microMotor0PidInst, 0);
	if(Status != XST_SUCCESS){
		printf("Micro Motor 0 setup failed!\r\n");
		return XST_FAILURE;
	}

	// Initialize micrometal 1 motor
	printf("Initializing micro metal 1 driver...\r\n");
	Status = microMetal_Initialize(&mgm1Inst, &microMotor1PwmInst, &microMotor1QeiInst, &microMotor1PidInst, 1);
	if(Status != XST_SUCCESS){
		printf("Micro Motor 1 setup failed!\r\n");
		return XST_FAILURE;
	}

	// Initialize micrometal 2 motor
	printf("Initializing micro metal 2 driver...\r\n");
	Status = microMetal_Initialize(&mgm2Inst, &microMotor2PwmInst, &microMotor2QeiInst, &microMotor2PidInst, 2);
	if(Status != XST_SUCCESS){
		printf("Micro Motor 2 setup failed!\r\n");
		return XST_FAILURE;
	}

	// Initialize micrometal 3 motor
	printf("Initializing micro metal 3 driver...\r\n");
	Status = microMetal_Initialize(&mgm3Inst, &microMotor3PwmInst, &microMotor3QeiInst, &microMotor3PidInst, 3);
	if(Status != XST_SUCCESS){
		printf("Micro Motor 3 setup failed!\r\n");
		return XST_FAILURE;
	}

	printf("All motors initialized!\r\n\n");

	
    appData.deltaT      = 0;
	appData.dirSelect   = 0;
	appData.inputValid  = 0;
	appData.motorSelect = 0;
	appData.runTime     = 0;
	appData.setpoint    = 0;

	// Main Loop
	while(1)
	{
        while(!appData.inputValid)
        {
            appData.inputValid = 0;
            printf("\r\n");
            printf("---------------------------------------------------------------\r\n");
		    switch(appData.motorSelect)
            {
                case DRIVEMOTOR_ID:
                    printf("-> Drive Motor selected.\r\n");
                    printf("Direction 0 - drive UGV forward\r\n");
                    printf("Direction 1 - drive UGV reverse\r\n");
                    break;

                case SERVOMOTOR_ID:
                    printf("-> Servo Motor selected.\r\n");
                    break;

                case MGM0_ID:
                    printf("Micrometal Motor 0 selected.\r\n");
                    printf("Direction 0 - lower the arm\r\n");
    	    		printf("Direction 1 - raise the arm\r\n");
                    break;

                case MGM1_ID:
    	    		printf("Micrometal Motor 1 selected.\r\n");
                    printf("Direction 0 - counterclockwise\r\n");
    	    		printf("Direction 1 - clockwise\r\n");
                    break;

    	    	case MGM2_ID:
    	    		printf("Micrometal Motor 2 selected.\r\n");
                    printf("Direction 0 - extend platform\r\n");
    	    		printf("Direction 1 - retract platform\r\n");
                    break;

                case MGM3_ID:
                    printf("Micrometal Motor 3 selected.\r\n");
    	    		printf("Direction 0 - open the lid\r\n");
    	    		printf("Direction 1 - close the lid\r\n");
    	    		break;

    	    	default:
                    printf("Invalid motor selected.\r\n");
    	    		break;
            }
            printf("---------------------------------------------------------------\r\n");
            printMenu(&appData);
            getModeInput(&appData);
            printf("\r\n");
            switch(appData.userInput[0])
            {
                case '0':
                    if(appData.motorSelect==SERVOMOTOR_ID)
                        printf("Enter a duty cycle from 70-220:\r\n"); 
                    else
                        printf("Enter a duty cycle from 0-255:\r\n");
                    appData.setpoint = (int) getFloatInput(&appData);
                    if(appData.setpoint>255) appData.setpoint = 255;
                    printf("New duty cycle value: %d\r\n", appData.setpoint);
                    break;

                case '1':
                    printf("Enter a runtime in ms:\r\n");
                    appData.runTime = (int) getFloatInput(&appData);
                    printf("New runtime value: %d\r\n", appData.setpoint);
                    break;

                case '2':
                    if(appData.motorSelect==SERVOMOTOR_ID)
                        printf("Invalid\r\n");
                    else {
                        appData.dirSelect = !appData.dirSelect;
                        printf("Toggled direction.\r\n");
                        printf("New direction: %d\r\n", appData.dirSelect);
                    }
                    break;

                case '9':
                	printf("\r\nEnter a new motor ID.\r\n");
                	printf("0 - Micrometal 0 (Lift arm)\r\n");
                	printf("1 - Micrometal 1 (Turret)\r\n");
                	printf("2 - Micrometal 2 (Platform)\r\n");
                	printf("3 - Micrometal 3 (Lid)\r\n");
                	printf("4 - Drive Motor\r\n");
                	printf("5 - Servo Motor\r\n");
                	getModeInput(&appData);
                	printf("\r\n");
                    if(asciiToInt(appData.userInput[0]) == appData.motorSelect) {
                        printf("That motor's already selected doofus...\r\n");
                    }
                    else {
                        switch(asciiToInt(appData.userInput[0]))
                        {
                            case 4:
                                printf("Drive motor selected!\r\n");
                                appData.motorSelect = 4;
                                break;

                            case 5:
                                printf("Servo motor selected!\r\n");
                                appData.motorSelect = 5;
                                break;

                            case 0:
                                printf("MGM0 selected!\r\n");
                                appData.motorSelect = 0;
                                break;

                            case 1:
                                printf("MGM1 selected!\r\n");
                                appData.motorSelect = 1;
                                break;

                            case 2:
                                printf("MGM2 selected!\r\n");
                                appData.motorSelect = 2;
                                break;

                            case 3:
                                printf("MGM3 selected!\r\n");
                                appData.motorSelect = 3;
                                break;

                            default:
                                printf("That's not a valid input doofus...\r\n");
                                break;
                        }
                    }
                    break;

                case 0x20:
                    printf("\r\nStarting motor run in 2 seconds...\r\n");
                    sleep(0.75);
                    printf("Starting motor run in 1 second...\r\n\n");
                    sleep(0.75);
                    appData.inputValid = 1;
                    break;

                default:
                    printf("That's an invalid input...\r\n");
                    printf("Try again dummy.\r\n");
                    break;
            }
        }


        //
        appData.deltaT = 0;
        XTime_GetTime(&tStart);
        while(appData.deltaT < appData.runTime)
        {
            switch(appData.motorSelect)
            {
                case DRIVEMOTOR_ID:
                    driveMotor_manualSetDutyDir(&driveMotorInst, appData.setpoint, appData.dirSelect);
                    driveMotor_updateStatus(&driveMotorInst);
                    driveMotor_printStatus(&driveMotorInst);
                    break;

                case SERVOMOTOR_ID:
                    servoMotor_setManualPos(&servoMotorInst, appData.setpoint);
                    servoMotor_getPosition(&servoMotorInst);
                    servoMotor_printStatus(&servoMotorInst);
                    break;

                case MGM0_ID:
                    microMetal_manualSetDutyDir(&mgm0Inst, appData.setpoint, appData.dirSelect);
                    microMetal_updateStats(&mgm0Inst);
                    microMetal_printStatus(&mgm0Inst);
                    break;

                case MGM1_ID:
                    microMetal_manualSetDutyDir(&mgm1Inst, appData.setpoint, appData.dirSelect);
                    microMetal_updateStats(&mgm1Inst);
                    microMetal_printStatus(&mgm1Inst);
                    break;

                case MGM2_ID:
                    microMetal_manualSetDutyDir(&mgm2Inst, appData.setpoint, appData.dirSelect);
                    microMetal_updateStats(&mgm2Inst);
                    microMetal_printStatus(&mgm2Inst);
                    break;

                case MGM3_ID:
                    microMetal_manualSetDutyDir(&mgm3Inst, appData.setpoint, appData.dirSelect);
                    microMetal_updateStats(&mgm3Inst);
                    microMetal_printStatus(&mgm3Inst);
                    break;

                default:
                    break;
            }
            XTime_GetTime(&tCurrent);
            appData.deltaT = 1.0 * (tCurrent - tStart) / (COUNTS_PER_SECOND/1000);
            printf("\r\n");
        }
        printf("\r\n");
        for(int i=0; i<BUFFERSIZE; i++) {
        	appData.userInput[i] = 0;
        }

        driveMotor_manualSetDutyDir(&driveMotorInst, 0, appData.dirSelect);
        servoMotor_setManualPos(&servoMotorInst, 135);
        microMetal_manualSetDutyDir(&mgm0Inst, 0, appData.dirSelect);
        microMetal_manualSetDutyDir(&mgm1Inst, 0, appData.dirSelect);
        microMetal_manualSetDutyDir(&mgm2Inst, 0, appData.dirSelect);
        microMetal_manualSetDutyDir(&mgm3Inst, 0, appData.dirSelect);
        //
        appData.inputValid = 0;
    }

    return 0;
}


int asciiToInt(char text) {
	return text - '0';
}

void printMenu(appInputs *data)
{
    printf("\r\nCurrent Parameters:\r\n");
    printf("Setpoint   : %d\r\n", data->setpoint);
    printf("Runtime    : %d ms\r\n", data->runTime);
    if(data->motorSelect != SERVOMOTOR_ID && data->motorSelect < 6) {
        printf("Direction  : %d\r\n", data->dirSelect);
    }
    else {
        printf("Motor select error\r\n");
    }

    printf("\r\nOption Select:\r\n");
    printf("0 - Change setpoint\r\n");
    printf("1 - Change runtime\r\n");
    if(data->motorSelect != SERVOMOTOR_ID) {
        printf("2 - Change direction\r\n");
    }
    printf("9 - Change motor\r\n");
    printf("\r\nPress spacebar to run motor with parameters shown above.\r\n");
}

void getModeInput(appInputs *data)
{
    while(!XUartPs_IsReceiveData(UART_BASEADDR)){
	}
    if (XUartPs_IsReceiveData(UART_BASEADDR)) {
		data->userInput[0] = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
		xil_printf("%c", data->userInput[0]);
	}
}


float getFloatInput(appInputs *data)
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












