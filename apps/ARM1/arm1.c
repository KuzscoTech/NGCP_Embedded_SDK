#include "arm1.h"
#include "string.h"

#define DBG_VERBOSE_DRIVEMOTOR 0
#define DBG_VERBOSE_SERVOMOTOR 0
#define DBG_VERBOSE_MGM0       0
#define DBG_VERBOSE_MGM1       0
#define DBG_VERBOSE_MGM2       0
#define DBG_VERBOSE_MGM3       0

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

	ugv_servoMotor servoMotorInst;
	ugv_servo      servoMotorPwmInst;
	XSysMon        servoMotorAdcInst;
	PIDController  servoMotorPidInst;

	ugv_microMetalMotor microMetal0Inst;
	ugv_pwm             microMetal0PwmInst;
	ugv_qei             microMetal0QeiInst;
	PIDController       microMetal0PidInst;

	ugv_microMetalMotor microMetal1Inst;
	ugv_pwm             microMetal1PwmInst;
	ugv_qei             microMetal1QeiInst;
	PIDController       microMetal1PidInst;

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

	// Initialize Micrometal 0
	printf("Initializing micro metal drivers...\r\n");
	Status = microMetal_Initialize(&microMetal0Inst, &microMetal0PwmInst, &microMetal0QeiInst, &microMetal0PidInst, 0);
	if(Status != XST_SUCCESS) {
	    printf("Micrometal 0 setup failed!\r\n");
	    return XST_FAILURE;
	}

	Status = microMetal_Initialize(&microMetal1Inst, &microMetal1PwmInst, &microMetal1QeiInst, &microMetal1PidInst, 1);
	if(Status != XST_SUCCESS) {
	    printf("Micrometal 1 setup failed!\r\n");
	    return XST_FAILURE;
	}

	// Main Loop
	while(1)
	{

		// Update motors from OCM
		SM_Status = ocm_getMemFlag();
		if(SM_Status == 1)
		{
			ocm_updateDriveMotor(&driveMotorInst);
			ocm_updateServoMotor(&servoMotorInst);
			ocm_updateMicroMetal(&microMetal0Inst, &microMetal1Inst);
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

        // set micrometal
        microMetal_setPidOutput(&microMetal0Inst, &microMetal0Inst.setPos);
        microMetal_setPidOutput(&microMetal1Inst, &microMetal1Inst.setPos);

        // print stats
        if(DBG_VERBOSE_DRIVEMOTOR) {
        	driveMotor_printStatus(&driveMotorInst);
        	driveMotor_printDuty(&driveMotorInst);
        }
        if(DBG_VERBOSE_SERVOMOTOR) {
        	servoMotor_printStatus(&servoMotorInst);
        }
        if(DBG_VERBOSE_MGM0) {
        	printf("\r\nMGM0:\r\n");
        	microMetal_printStatus(&microMetal0Inst);
        }
        if(DBG_VERBOSE_MGM1) {
        	printf("\r\nMGM1:\r\n");
        	microMetal_printStatus(&microMetal1Inst);
        }
	}
}
