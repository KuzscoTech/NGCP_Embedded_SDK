#include "arm1.h"
#include "string.h"

#define DBG_VERBOSE 1

int main()
{
	printf("\r\n\nARM1 Initialized!\r\n\n");

	volatile u32 *modePtr     = (u32 *) (SM_DM_BASEADDR + SM_DM_SETMANUAL_OFFSET);
	int            Status;
	u8             SM_Status;
	//
	ugv_driveMotor driveMotorInst;
	ugv_pwm        driveMotorPwmInst;
	ugv_qei        driveMotorQeiInst;
	PIDController  driveMotorPidInst;

	ugv_servoMotor servoMotorInst;
	ugv_servo      servoMotorPwmInst;
	XSysMon        servoMotorAdcInst;
	PIDController  servoMotorPidInst;

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
	printf("ARM1 all motors initialized!\r\n\n");

	// Main Loop
	while(1)
	{

		// Update motors from OCM
		SM_Status = ocm_getMemFlag();
		if(SM_Status == 1)
		{
			ocm_updateDriveMotor(&driveMotorInst);
			ocm_updateServoMotor(&servoMotorInst);
			ocm_clearMemFlag();
		}

		// set drive motor 
        if(driveMotorInst.uartManualMode) {
            if(driveMotorInst.uartSetPoint < 0) 
                driveMotor_manualSetDutyDir(&driveMotorInst, -driveMotorInst.uartSetPoint, DRIVEMOTOR_REVERSE);
            else
                driveMotor_manualSetDutyDir(&driveMotorInst, driveMotorInst.uartSetPoint, DRIVEMOTOR_FORWARD);
        }
        else {
            driveMotor_setPidOutput(&driveMotorInst, driveMotorInst.uartSetPoint);
        }

        // set servo motor
        if(servoMotorInst.uartManualMode) {
            servoMotor_setManualPos(&servoMotorInst, servoMotorInst.uartSetPoint);
        }
        else {
            servoMotor_setPidOutput(&servoMotorInst, servoMotorInst.uartSetPoint);
        }

        if(DBG_VERBOSE) {
        	driveMotor_printStatus(&driveMotorInst);
        	driveMotor_printDuty(&driveMotorInst);
        	//servoMotor_printStatus(&servoMotorInst);
        }
	}
}
