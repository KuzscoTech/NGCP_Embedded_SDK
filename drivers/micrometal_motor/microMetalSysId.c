#include <stdio.h>
#include "arm1.h"
#include "xuartps.h"
#include "xtime_l.h"
#include "sleep.h"

#define MOTORID        3 // motor ID
#define MAXDUTY        200
#define MAXANGLE       100
#define INITIALDIR     1
#define STATETIME_MS   100

static ugv_microMetalMotor microMotorInst;

int main()
{
	int Status;
	ugv_pwm             microMotorPwmInst;
	ugv_qei    			microMotorQeiInst;
	PIDController 		microMotorPosPidInst;
	_Bool initialDir = INITIALDIR;
	int   STATE      = 0;
	int   stateCount = 0;

	XTime startTime;
	XTime currentTime;
	float deltaTime = 0;

	Status = microMetal_Initialize(&microMotorInst, &microMotorPwmInst, &microMotorQeiInst, &microMotorPosPidInst, MOTORID);
	if(Status != XST_SUCCESS){
		printf("Micrometal Gear Motor setup failed!\r\n");
		return XST_FAILURE;
	}

	// send start condition to matlab
	printf("START\r\n");
	XTime_GetTime(&startTime);
	while(1)
	{

		if(STATE == 0) {
			microMetal_manualSetDutyDir(&microMotorInst, MAXDUTY, initialDir);
			microMetal_updateStats(&microMotorInst);

			// send matlab shit
			if(microMotorInst.currentDir == MICROMETAL_REVERSE)
				printf("%d\r\n", -microMotorInst.currentRpm);
			else
				printf("%d\r\n", microMotorInst.currentRpm);
			printf("%d\r\n", microMotorInst.pwm->speedSelect);

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
			if(microMotorInst.currentDir == MICROMETAL_REVERSE)
				printf("%d\r\n", -microMotorInst.currentRpm);
			else
				printf("%d\r\n", microMotorInst.currentRpm);
			printf("%d\r\n", (int) -microMotorInst.pwm->speedSelect);

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
			printf("END!\r\n");
			break;
		}

	}
}
