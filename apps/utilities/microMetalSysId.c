#include <stdio.h>
#include "microMetal_utilities.h"
#include "xuartps.h"
#include "xtime_l.h"
#include "sleep.h"

#define MOTORID        0 // motor ID
#define MAXDUTY        200
#define MAXANGLE       360
#define INITIALDIR     1
#define STATETIME_MS   500

static ugv_microMetalMotor microMotorInst;

void printCsv(ugv_microMetalMotor *InstancePtr, int *count, int duty)
{
	// print rpm
	if(InstancePtr->currentDir == MICROMETAL_REVERSE)
		printf("%d", -InstancePtr->currentRpm);
	else
		printf("%d", InstancePtr->currentRpm);
	printf(",%d", *count);

	// print duty
	printf(",%d,%d", duty, *count);

	// print position
	printf(",%d,%d", InstancePtr->currentPos-360, *count);

	// end line
	printf("\r\n");
	*count = *count+1;
}

int main()
{
	int Status;
	ugv_pwm             microMotorPwmInst;
	ugv_qei    			microMotorQeiInst;
	PIDController 		microMotorPosPidInst;
	_Bool initialDir = INITIALDIR;
	int   STATE      = 0;
	int   stateCount = 0;
	int   stepCount  = 0;

	XTime startTime;
	XTime currentTime;
	float deltaTime = 0;

	Status = microMetal_Initialize(&microMotorInst, &microMotorPwmInst, &microMotorQeiInst, &microMotorPosPidInst, MOTORID);
	if(Status != XST_SUCCESS){
		printf("Micrometal Gear Motor setup failed!\r\n");
		return XST_FAILURE;
	}

	// send start condition to matlab
	XTime_GetTime(&startTime);
	while(1)
	{

		if(STATE == 0) {
			microMetal_manualSetDutyDir(&microMotorInst, MAXDUTY, initialDir);
			microMetal_updateStats(&microMotorInst);

			// send matlab shit
			printCsv(&microMotorInst, &stepCount, MAXDUTY);

			if(microMotorInst.currentPos-359 >= MAXANGLE || deltaTime > STATETIME_MS){
				stateCount++;
				XTime_GetTime(&startTime);
				deltaTime = 0;
				STATE = 1;
			}
		}

		// go to -255
		else if(STATE == 1) {
			microMetal_manualSetDutyDir(&microMotorInst, MAXDUTY, !initialDir);
			microMetal_updateStats(&microMotorInst);

			// send matlab shit
			printCsv(&microMotorInst, &stepCount, -MAXDUTY);

			if(microMotorInst.currentPos-359 < 0 || deltaTime > STATETIME_MS){
				stateCount++;
				XTime_GetTime(&startTime);
			    deltaTime = 0;
				STATE = 0;
			}
		}


		XTime_GetTime(&currentTime);
		deltaTime = 1.0 * (currentTime - startTime) / (COUNTS_PER_SECOND/1000);

		if(stateCount == 4) {
			break;
		}
	}
	microMetal_manualSetDutyDir(&microMotorInst, 0, initialDir);
}

