#include "driveMotor_utilities.h"


/* Function to initialize a ugv_driveMotor instance. */
int driveMotor_Initialize(ugv_driveMotor *InstancePtr, ugv_pwm *PwmInstancePtr, ugv_qei *QeiInstancePtr, PIDController *PidInstancePtr)
{
	int Status;

	// initialize PWM
	Status = driveMotor_pwmInitialize(InstancePtr, PwmInstancePtr);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	// initialize QEI
	Status = driveMotor_qeiInitialize(InstancePtr, QeiInstancePtr);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	// initialize PID
	driveMotor_pidInitialize(InstancePtr, PidInstancePtr);

	return XST_SUCCESS;
}

/* Function to initialize the PWM of a ugv_driveMotor instance. */
int driveMotor_pwmInitialize(ugv_driveMotor *InstancePtr, ugv_pwm *PwmInstancePtr)
{
	int Status;

	// Set the ugv_driveMotor pwm pointer
	InstancePtr->pwm = PwmInstancePtr;

	// initialize the pwm
	Status = ugvPwm_Initialize(InstancePtr->pwm, DRIVEMOTOR_PWM_BASEADDR);
	if(Status != XST_SUCCESS) {
	    return XST_FAILURE;
	}

	// set parameters
	ugvPwm_setPeriod   (InstancePtr->pwm, (u16) DRIVEMOTOR_PWM_PERIOD);
	ugvPwm_setMinPeriod(InstancePtr->pwm, (u16) DRIVEMOTOR_PWM_MIN);
	ugvPwm_setScaling  (InstancePtr->pwm, (u8)  DRIVEMOTOR_PWM_SCALE);
	ugvPwm_setIBT2Mode (InstancePtr->pwm);
	ugvPwm_Enable      (InstancePtr->pwm, TRUE);

	return XST_SUCCESS;
}

/* Function to initialize the QEI of a ugv_driveMotor instance */
int driveMotor_qeiInitialize(ugv_driveMotor *InstancePtr, ugv_qei *QeiInstancePtr)
{
	int Status;

	// Set the ugv_driveMotor qei pointer
	InstancePtr->qei = QeiInstancePtr;

	// Initialize the qei
	Status = ugvQei_Initialize(InstancePtr->qei, DRIVEMOTOR_QEI_BASEADDR);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Configure qei for IBT2
	ugvQei_setMicroMetalMode(InstancePtr->qei, FALSE);

	return XST_SUCCESS;
}

/* Function to initialize the PID of a ugv_driveMotor instance. */
void driveMotor_pidInitialize(ugv_driveMotor *InstancePtr, PIDController *PidInstancePtr)
{
	InstancePtr->pid = PidInstancePtr;
	//
	InstancePtr->pid->Kp        = DRIVEMOTOR_PID_KP;
	InstancePtr->pid->Ki        = DRIVEMOTOR_PID_KI;
	InstancePtr->pid->Kd        = DRIVEMOTOR_PID_KD;
	InstancePtr->pid->tau       = DRIVEMOTOR_PID_TAU;
	InstancePtr->pid->limMin    = DRIVEMOTOR_PID_LIM_MIN;
	InstancePtr->pid->limMax    = DRIVEMOTOR_PID_LIM_MAX;
	InstancePtr->pid->limMinInt = DRIVEMOTOR_PID_LIM_MIN_INT;
	InstancePtr->pid->limMaxInt = DRIVEMOTOR_PID_LIM_MAX_INT;
	InstancePtr->pid->T         = DRIVEMOTOR_PID_SAMPLE_TIME;
}

/* Function to update and set the PID output of a ugv_driveMotor instance. */
void driveMotor_setPidOutput(ugv_driveMotor *InstancePtr, float *driveMotor_setPoint)
{
	// get rpm
	InstancePtr->currentRpm = ugvQei_getRpm (InstancePtr->qei);
	InstancePtr->currentDir = ugvQei_getDirection   (InstancePtr->qei);

	// If motor going opposite way, set PID measurement to 0
	if(InstancePtr->pwm->setDirection == DRIVEMOTOR_REVERSE) {
		// get abs of setpoint
		InstancePtr->pid->setPoint = -*driveMotor_setPoint;

		// set direction
		ugvPwm_setDir(InstancePtr->pwm, DRIVEMOTOR_REVERSE);

		// adjust pid measurement
		if(InstancePtr->currentDir == DRIVEMOTOR_FORWARD && InstancePtr->currentRpm > 2) {
			InstancePtr->pid->measurement = (float) 0.0;
		}
		else {
			InstancePtr->pid->measurement = (float) InstancePtr->currentRpm;
		}
	}
	else {
		// get abs of setpoint
		InstancePtr->pid->setPoint = *driveMotor_setPoint;

		// set direction
		ugvPwm_setDir(InstancePtr->pwm, DRIVEMOTOR_FORWARD);

		// adjust pid measurement
		if(InstancePtr->currentDir == DRIVEMOTOR_REVERSE && InstancePtr->currentRpm > 2) {
			InstancePtr->pid->measurement = (float) 0.0;
		}
		else {
			InstancePtr->pid->measurement = (float) InstancePtr->currentRpm;
		}
	}

	// calculate pid output and set pwm duty cycle
	calculatePid(InstancePtr->pid, InstancePtr->pid->setPoint, InstancePtr->pid->measurement);
	ugvPwm_setSpeed(InstancePtr->pwm, (u8) InstancePtr->pid->out);
}


















