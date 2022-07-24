#include <stdio.h>
#include "driveMotor_utilities.h"
#include "xuartps.h"
#include "xtime_l.h"
#include "sleep.h"

#define MOTORID        0 // motor ID
#define MAXDUTY        255
#define INITIALDIR     DRIVEMOTOR_FORWARD
#define STATETIME_S    5

static ugv_driveMotor driveMotorInst;

void printCsv(ugv_driveMotor *InstancePtr, int *count, int duty)
{
	// print rpm
	if(InstancePtr->currentDir == DRIVEMOTOR_REVERSE)
		printf("%d", -InstancePtr->currentRpm);
	else
		printf("%d", InstancePtr->currentRpm);
	printf(",%d", *count);

	// print duty
	printf(",%d,%d", duty, *count);

	// end line
	printf("\r\n");
	*count = *count+1;
}

int main()
{
	int Status;
	ugv_pwm             driveMotorPwmInst;
	ugv_qei    			driveMotorQeiInst;
	PIDController 		driveMotorPidInst;
	_Bool initialDir = INITIALDIR;
	int   STATE      = 0;
	int   stateCount = 0;
	int   stepCount  = 0;

	XTime startTime;
	XTime currentTime;
	float deltaTime = 0;

	Status = driveMotor_Initialize(&driveMotorInst, &driveMotorPwmInst, &driveMotorQeiInst, &driveMotorPidInst);
	if(Status != XST_SUCCESS){
		printf("Drive Motor setup failed!\r\n");
		return XST_FAILURE;
	}

	// send start condition to matlab
	XTime_GetTime(&startTime);
	while(1)
	{

		if(STATE == 0) {
			driveMotor_manualSetDutyDir(&driveMotorInst, MAXDUTY, initialDir);
			driveMotor_updateStatus(&driveMotorInst);

			// send matlab shit
			printCsv(&driveMotorInst, &stepCount, MAXDUTY);

			if(deltaTime > STATETIME_S){
				stateCount++;
				XTime_GetTime(&startTime);
				deltaTime = 0;
				STATE = 1;
			}
		}

		// go to -255
		else if(STATE == 1) {
			driveMotor_manualSetDutyDir(&driveMotorInst, MAXDUTY, !initialDir);
			driveMotor_updateStatus(&driveMotorInst);

			// send matlab shit
			printCsv(&driveMotorInst, &stepCount, -MAXDUTY);

			if(deltaTime > STATETIME_S){
				stateCount++;
				XTime_GetTime(&startTime);
			    deltaTime = 0;
				STATE = 0;
			}
		}


		XTime_GetTime(&currentTime);
		deltaTime = 1.0 * (currentTime - startTime) / (COUNTS_PER_SECOND);

		if(stateCount == 4) {
			break;
		}
	}

	driveMotor_manualSetDutyDir(&driveMotorInst, 0, initialDir);
}

