#include "arm1.h"
#include "string.h"


int main()
{
	printf("\r\n\nARM1 Initialized!\r\n\n");

	int            Status;
	u8             SM_Status;
	//
	ugv_driveMotor driveMotorInst;
	ugv_pwm        driveMotorPwmInst;
	ugv_qei        driveMotorQeiInst;
	PIDController  driveMotorPidInst;

	 // Initialize Drive Motor
	printf("Initializing drive motor drivers...\r\n");
	Status = driveMotor_Initialize(&driveMotorInst, &driveMotorPwmInst, &driveMotorQeiInst, &driveMotorPidInst);
	if(Status != XST_SUCCESS) {
	    printf("Drive Motor setup failed!\r\n");
	    return XST_FAILURE;
	}


	// Main Loop
	while(1)
	{
		// Update motor setpoint and dump stats if SM Flag is 1
		SM_Status = ocm_getMemFlag();
		if(SM_Status == 1)
		{
			ocm_updateDriveMotor(&driveMotorInst);
			ocm_clearMemFlag();
		}

		// do the pid stuff
		driveMotor_setPidOutput(&driveMotorInst, driveMotorInst.uartSetPoint);
		driveMotor_printStatus(&driveMotorInst);
		//driveMotor_printDuty(&driveMotorInst);
	}
}
