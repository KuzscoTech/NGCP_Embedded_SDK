#include <stdio.h>
#include "arm1.h"
#include "xuartps.h"
#include "xtime_l.h"
#include "sleep.h"

#define MOTORID    3 // motor ID
#define MAXDUTY    200
#define MAXANGLE   100
#define INITIALDIR 1

static ugv_microMetalMotor microMotorInst;

int main()
{
	int Status;
	ugv_pwm             microMotorPwmInst;
	ugv_qei    			microMotorQeiInst;
	PIDController 		microMotorPosPidInst;
	_Bool initialDir = INITIALDIR;
	int   duty       = 0;
	int   STATE      = 0;
	int   stateCount = 0;


	Status = microMetal_Initialize(&microMotorInst, &microMotorPwmInst, &microMotorQeiInst, &microMotorPosPidInst, MOTORID);
	if(Status != XST_SUCCESS){
		printf("Micrometal Gear Motor setup failed!\r\n");
		return XST_FAILURE;
	}

	// send start condition to matlab
	printf("START\r\n");

	while(1)
	{

		switch(STATE)
		{
		// go to 255
		case 0:
			microMetal_manualSetDutyDir(&microMotorInst, MAXDUTY, initialDir);
			microMetal_updateStats(&microMotorInst);
			if(microMotorInst.currentPos-360 >= MAXANGLE){
				stateCount++;
				STATE = 1;
				break;
			}

		// go to -255
		case 1:
			microMetal_manualSetDutyDir(&microMotorInst, MAXDUTY, !initialDir);
			microMetal_updateStats(&microMotorInst);
			if(microMotorInst.currentPos-360 <= 0){
				stateCount++;
				STATE = 0;
				break;
			}

		default:
			break;
		}

		// send matlab shit; position first
		printf("%d\r\n", microMotorInst.currentPos);
		// then send duty
		printf("%d\r\n", duty);

		if(stateCount == 4) {
			printf("END!\r\n");
			break;
		}

	}
}
