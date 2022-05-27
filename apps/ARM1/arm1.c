#include "arm1.h"
#include "string.h"
#include "xtime_l.h"

#define DBG_MSG_DELAY_MS       5000

#define DBG_ENABLE             0

// Drivemotor Debug Options
#define DBG_VERBOSE_DRIVEMOTOR 1
#define DBG_DUTY_DRIVEMOTOR    0

// Servo Debug Options
#define DBG_VERBOSE_SERVOMOTOR 1

// Micrometal 0 Debug Options
#define DBG_VERBOSE_MM0        1
#define DBG_DUTY_MM0           0
#define DBG_PID_MM0            0

// Micrometal 1 Debug Options
#define DBG_VERBOSE_MM1        1
#define DBG_DUTY_MM1           0
#define DBG_PID_MM1            0

// Micrometal 2 Debug Options
#define DBG_VERBOSE_MM2        1
#define DBG_DUTY_MM2           0
#define DBG_PID_MM2            0

// Micrometal 3 Debug Options
#define DBG_VERBOSE_MM3        1
#define DBG_DUTY_MM3           0
#define DBG_PID_MM3            0


int main()
{
	printf("\r\n\nARM1 Initialized!\r\n\n");

	int            Status;
	u8             SM_Status;

	XTime startTime;
	XTime stopTime;
	float deltaTime;

	//
	ugv_driveMotor      driveMotorInst;
	ugv_pwm             driveMotorPwmInst;
	ugv_qei             driveMotorQeiInst;
	PIDController       driveMotorPidInst;

	ugv_servoMotor      servoMotorInst;
	ugv_servo           servoMotorPwmInst;
	XSysMon             servoMotorAdcInst;
	PIDController       servoMotorPidInst;

    ugv_microMetalMotor microMotor0Inst;
    ugv_pwm             microMotor0PwmInst;
	ugv_qei    			microMotor0QeiInst;
	PIDController 		microMotor0PidInst;

    ugv_microMetalMotor microMotor1Inst;
    ugv_pwm             microMotor1PwmInst;
	ugv_qei    			microMotor1QeiInst;
	PIDController 		microMotor1PidInst;

	ugv_microMetalMotor microMotor2Inst;
	ugv_pwm             microMotor2PwmInst;
	ugv_qei    			microMotor2QeiInst;
	PIDController 		microMotor2PidInst;

	ugv_microMetalMotor microMotor3Inst;
	ugv_pwm             microMotor3PwmInst;
	ugv_qei    			microMotor3QeiInst;
	PIDController 		microMotor3PidInst;


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
	Status = microMetal_Initialize(&microMotor0Inst, &microMotor0PwmInst, &microMotor0QeiInst, &microMotor0PidInst, 0);
    if(Status != XST_SUCCESS){
		printf("Micro Motor 0 setup failed!\r\n");
		return XST_FAILURE;
	}

    // Initialize micrometal 1 motor
    printf("Initializing micro metal 1 driver...\r\n");
	Status = microMetal_Initialize(&microMotor1Inst, &microMotor1PwmInst, &microMotor1QeiInst, &microMotor1PidInst, 1);
    if(Status != XST_SUCCESS){
		printf("Micro Motor 1 setup failed!\r\n");
		return XST_FAILURE;
	}

    // Initialize micrometal 2 motor
    printf("Initializing micro metal 2 driver...\r\n");
    Status = microMetal_Initialize(&microMotor2Inst, &microMotor2PwmInst, &microMotor2QeiInst, &microMotor2PidInst, 2);
    if(Status != XST_SUCCESS){
    	printf("Micro Motor 2 setup failed!\r\n");
    	return XST_FAILURE;
    }

    // Initialize micrometal 3 motor
    printf("Initializing micro metal 3 driver...\r\n");
    Status = microMetal_Initialize(&microMotor3Inst, &microMotor3PwmInst, &microMotor3QeiInst, &microMotor3PidInst, 3);
    if(Status != XST_SUCCESS){
    	printf("Micro Motor 3 setup failed!\r\n");
    	return XST_FAILURE;
    }

	printf("ARM1 all motors initialized!\r\n\n");

	XTime_GetTime(&startTime);

	// Main Loop
	while(1)
	{

		// Update motors from OCM
		SM_Status = ocm_getMemFlag();
		if(SM_Status == 1)
		{
			ocm_updateDriveMotor(&driveMotorInst);
			ocm_updateServoMotor(&servoMotorInst);
			ocm_updateMicroMetal(&microMotor0Inst, &microMotor1Inst, &microMotor2Inst, &microMotor3Inst);
			ocm_clearMemFlag();
		}

		// set drive motor 
		/*
        if(driveMotorInst.uartManualMode) {
            if(driveMotorInst.uartSetPoint < 0) 
                driveMotor_manualSetDutyDir(&driveMotorInst, -driveMotorInst.uartSetPoint, DRIVEMOTOR_REVERSE);
            else
                driveMotor_manualSetDutyDir(&driveMotorInst, driveMotorInst.uartSetPoint, DRIVEMOTOR_FORWARD);
        }
        else {
            driveMotor_setPidOutput(&driveMotorInst, driveMotorInst.uartSetPoint);
        }
        */
		if(driveMotorInst.uartSetPoint < 0)
		    driveMotor_manualSetDutyDir(&driveMotorInst, -driveMotorInst.uartSetPoint, DRIVEMOTOR_REVERSE);
		else
		    driveMotor_manualSetDutyDir(&driveMotorInst, driveMotorInst.uartSetPoint, DRIVEMOTOR_FORWARD);

		/*
        // set servo motor
        if(servoMotorInst.uartManualMode) {
            servoMotor_setManualPos(&servoMotorInst, servoMotorInst.uartSetPoint);
        }
        else {
            servoMotor_setPidOutput(&servoMotorInst, servoMotorInst.uartSetPoint);
        }
        */
        servoMotor_setManualPos(&servoMotorInst, servoMotorInst.uartSetPoint);

		// set micrometal 0 motor
        //microMetal_setPidOutput     (&microMotor0Inst);
        //microMetal_setPidOutput     (&microMotor1Inst);
        //microMetal_setPidOutput     (&microMotor2Inst);
        microMetal_manualSetDutyDir (&microMotor0Inst, microMotor0Inst.setPos, microMotor0Inst.setDir);
        microMetal_manualSetDutyDir (&microMotor1Inst, microMotor1Inst.setPos, microMotor1Inst.setDir);
        microMetal_manualSetDutyDir (&microMotor2Inst, microMotor2Inst.setPos, microMotor2Inst.setDir);
        microMetal_manualSetDutyDir (&microMotor3Inst, microMotor3Inst.setPos, microMotor3Inst.setDir);

        XTime_GetTime(&stopTime);
        deltaTime = 1.0 * (stopTime - startTime) / (COUNTS_PER_SECOND/1000);

        if(deltaTime >= DBG_MSG_DELAY_MS && DBG_ENABLE == 1)
        {

			if(DBG_VERBOSE_DRIVEMOTOR) driveMotor_printStatus(&driveMotorInst);
			if(DBG_DUTY_DRIVEMOTOR) driveMotor_printDuty(&driveMotorInst);


			if(DBG_VERBOSE_SERVOMOTOR) servoMotor_printStatus(&servoMotorInst);

			if(DBG_VERBOSE_MM0) {
				printf("\r\nMicrometal 0:\r\n");
				microMetal_printStatus(&microMotor0Inst);
			}
			if(DBG_DUTY_MM0) microMetal_printDuty(&microMotor0Inst);
		    if(DBG_PID_MM0)  microMetal_printPid (&microMotor0Inst);

		    if(DBG_VERBOSE_MM1) {
		    	printf("\r\nMicrometal 1:\r\n");
		    	microMetal_printStatus(&microMotor1Inst);
		    }
		    if(DBG_DUTY_MM1) microMetal_printDuty(&microMotor1Inst);
		    if(DBG_PID_MM1)  microMetal_printPid (&microMotor1Inst);

		    if(DBG_VERBOSE_MM2) {
		    	printf("\r\nMicrometal 2:\r\n");
		    	microMetal_printStatus(&microMotor2Inst);
		    }
		    if(DBG_DUTY_MM2) microMetal_printDuty(&microMotor2Inst);
		    if(DBG_PID_MM2)  microMetal_printPid (&microMotor2Inst);

		    if(DBG_VERBOSE_MM3) {
		    	printf("\r\nMicrometal 3:\r\n");
		    	microMetal_printStatus(&microMotor3Inst);
		    }
		    if(DBG_DUTY_MM3) microMetal_printDuty(&microMotor3Inst);
		    if(DBG_PID_MM3)  microMetal_printPid (&microMotor3Inst);

			XTime_GetTime(&startTime);
			deltaTime = 0;
        }
	}
}
