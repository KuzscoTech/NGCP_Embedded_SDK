#include <stdio.h>
#include "xil_printf.h"
#include "sleep.h"
#include "driveMotor_utilities.h"

#define STATE_RAMP_UP    1
#define STATE_RAMP_DOWN  2

int main()
{
	printf("Device initialized!\r\n");

	// VARIABLE DECLARATION
	int Status;
	ugv_driveMotor driveMotorInst;
	ugv_qei        driveMotorQeiInst;
	ugv_pwm        driveMotorPwmInst;
    PIDController  driveMotorPidInst;

    // MOTOR CONTROL PARAMETERS
    int   TEST_STATE            = STATE_RAMP_UP;
    u8    driveMotor_manualDuty = 35;
    _Bool driveMotor_manualDir  = DRIVEMOTOR_FORWARD;

	// DRIVE MOTOR INSTANCE INIT
	Status = driveMotor_Initialize(&driveMotorInst, &driveMotorPwmInst,
				                   &driveMotorQeiInst, &driveMotorPidInst);
	if(Status != XST_SUCCESS) {
		printf("Drive motor initialization failed!\r\n");
		return XST_FAILURE;
	}

	// MAIN LOOP
	printf("Starting Test!\r\n\n");
	while(1)
	{
		driveMotor_printStatus (&driveMotorInst);
		driveMotor_printDuty   (&driveMotorInst);

		// state machine
		switch (TEST_STATE)
		{
			// increment duty by 5 until max
			// -> at max, goto STATE_RAMP_DOWN
			case STATE_RAMP_UP:
				driveMotor_manualSetDutyDir(&driveMotorInst, driveMotor_manualDuty, driveMotor_manualDir);
				driveMotor_manualDuty += 5;
				printf("STATE: RAMP UP\r\n");
				sleep(1);
				if(driveMotor_manualDuty == 255) {
					TEST_STATE = STATE_RAMP_DOWN;
				}
				break;

			// decrement duty by 5 until min
			// -> at min, reverse directions and goto STATE_RAMP_UP
			case STATE_RAMP_DOWN:
				driveMotor_manualSetDutyDir(&driveMotorInst, driveMotor_manualDuty, driveMotor_manualDir);
				driveMotor_manualDuty -= 5;
				printf("STATE: RAMP DOWN\r\n");
				sleep(1);
				if(driveMotor_manualDuty == 35) {
					driveMotor_manualDir = !driveMotor_manualDir;
					TEST_STATE = STATE_RAMP_UP;
				}
				break;

		}
	}
}
