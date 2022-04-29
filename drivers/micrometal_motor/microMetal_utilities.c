#include "microMetal_utilities.h"

/**
 * @brief Function to initialize a ugv_microMetalMotor's PWM, QEI, and PID instances.
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param PwmInstancePtr is a pointer to a PIDController instance.
 * @param QeiInstancePtr is a pointer to a ugv_qei instance.
 * @param id can be 0-3. Indicates which micrometal motor is being initialized.
 * @return
 */
int microMetal_Initialize(ugv_microMetalMotor *InstancePtr, ugv_pwm *PwmInstancePtr, ugv_qei *QeiInstancePtr,
		PIDController *PidInstancePtr, u8 id)
{
	int Status;

	Status = microMetal_pwmInitialize(InstancePtr, PwmInstancePtr, id);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	Status = microMetal_qeiInitialize(InstancePtr, QeiInstancePtr, id);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	Status = microMetal_pidInitialize(InstancePtr, PidInstancePtr, id);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	return XST_SUCCESS;
}

/**
 * @brief Function to initialize a ugv_microMetalMotor's PWM instance to parameters specified in
 *        microMetal_utilities.h
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param PwmInstancePtr is a pointer to a ugv_pwm instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int microMetal_pwmInitialize(ugv_microMetalMotor *InstancePtr, ugv_pwm *PwmInstancePtr, u8 id)
{
	int Status;
	//
	InstancePtr->pwm = PwmInstancePtr;

	switch(id)
	{
		case 0:
			Status = ugvPwm_Initialize(InstancePtr->pwm, MGM0_PWM_BASEADDR);
			if(Status != XST_SUCCESS) return XST_FAILURE;
			else break;

		case 1:
			Status = ugvPwm_Initialize(InstancePtr->pwm, MGM1_PWM_BASEADDR);
			if(Status != XST_SUCCESS) return XST_FAILURE;
			else break;

		default:
			return XST_FAILURE;
	}

	ugvPwm_setPeriod   (InstancePtr->pwm, (u16) MGM_PWM_PERIOD);
	ugvPwm_setMinPeriod(InstancePtr->pwm, (u16) MGM_PWM_MIN);
	ugvPwm_setScaling  (InstancePtr->pwm, (u8)  MGM_PWM_SCALE);
	ugvPwm_setL298Mode (InstancePtr->pwm);
	ugvPwm_Enable      (InstancePtr->pwm, TRUE);

	return XST_SUCCESS;
}

/**
 * @brief Function to initialize a ugv_microMetalMotor's QEI instance to parameters specified in
 *        microMetal_utilities.h
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param QeiInstancePtr is a pointer to a ugv_qei instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int microMetal_qeiInitialize(ugv_microMetalMotor *InstancePtr, ugv_qei *QeiInstancePtr, u8 id)
{
	int Status;
	//
	InstancePtr->qei = QeiInstancePtr;

	switch(id)
	{
		case 0:
			Status = ugvQei_Initialize(InstancePtr->qei, MGM0_QEI_BASEADDR);
			if(Status != XST_SUCCESS) return XST_FAILURE;
			else break;

		case 1:
			Status = ugvQei_Initialize(InstancePtr->qei, MGM1_QEI_BASEADDR);
			if(Status != XST_SUCCESS) return XST_FAILURE;
			else break;

		default:
			break;
	}
	ugvQei_setMicroMetalRatio      (InstancePtr->qei, MGM_GEAR_RATIO);
	ugvQei_setMicroMetalResolution (InstancePtr->qei, MGM_RESOLUTION);
	ugvQei_setMicroMetalMode       (InstancePtr->qei, TRUE);
	return XST_SUCCESS;
}

/**
 * @brief Function to initialize a ugv_microMetalMotor's PWM instance to parameters specified in
 *        microMetal_utilities.h
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param PidInstancePtr is a pointer to a PIDController instance.
 */
int microMetal_pidInitialize(ugv_microMetalMotor *InstancePtr, PIDController *PidInstancePtr, u8 id)
{
	InstancePtr->pid = PidInstancePtr;
	//
	switch(id)
	{
		case 0:
			InstancePtr->pid->Kp        = MGM0_PID_KP;
			InstancePtr->pid->Ki        = MGM0_PID_KI;
			InstancePtr->pid->Kd        = MGM0_PID_KD;
			InstancePtr->pid->tau       = MGM0_PID_TAU;
			InstancePtr->pid->limMin    = MGM0_PID_LIM_MIN;
			InstancePtr->pid->limMax    = MGM0_PID_LIM_MAX;
			InstancePtr->pid->limMinInt = MGM0_PID_LIM_MIN_INT;
			InstancePtr->pid->limMaxInt = MGM0_PID_LIM_MAX_INT;
			InstancePtr->pid->T         = MGM0_PID_SAMPLE_TIME;
			break;

		case 1:
			InstancePtr->pid->Kp        = MGM1_PID_KP;
			InstancePtr->pid->Ki        = MGM1_PID_KI;
			InstancePtr->pid->Kd        = MGM1_PID_KD;
			InstancePtr->pid->tau       = MGM1_PID_TAU;
			InstancePtr->pid->limMin    = MGM1_PID_LIM_MIN;
			InstancePtr->pid->limMax    = MGM1_PID_LIM_MAX;
			InstancePtr->pid->limMinInt = MGM1_PID_LIM_MIN_INT;
			InstancePtr->pid->limMaxInt = MGM1_PID_LIM_MAX_INT;
			InstancePtr->pid->T         = MGM1_PID_SAMPLE_TIME;
			break;

		default:
			return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/**
 * @brief Function to update and set the PID output of a ugv_microMetalMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param setPos is a pointer to an int (0-359) representing desired absolute
 *        position of the micrometal. CROSSOVER IS NOT ALLOWED! 0-360 are the ABSOLUTE
 *        BOUNDS of the micrometal!
 * @param setDir is a pointer to a bool representing the direction the motor should take
 *        to get to the desired position.
 *
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int microMetal_setPidOutput(ugv_microMetalMotor *InstancePtr, int *setPos)
{
	float tempPidOut;

	// update current stats
	InstancePtr->currentPos = (int) ugvQei_getPosition  (InstancePtr->qei);
	InstancePtr->currentRpm = (int) ugvQei_getRpm       (InstancePtr->qei);
	InstancePtr->currentDir = (int) ugvQei_getDirection (InstancePtr->qei);

	// normalize new set position from 0-360.
	if(*setPos > 359 || *setPos < 0) {
		return XST_FAILURE;
	}

	// to prevent crossover, add 359 to both current and setpoint measurements.
	if(InstancePtr->currentPos <= 359) {
		InstancePtr->pid->measurement = (float) InstancePtr->currentPos + 359;
		InstancePtr->pid->setPoint    = (float) *setPos + 359;
	}

	// calculate PID output
	calculatePid(InstancePtr->pid, InstancePtr->pid->setPoint, InstancePtr->pid->measurement);

	// set direction and duty cycle based on PID output
	if(InstancePtr->pid->out < 0) {
		ugvPwm_setDir(InstancePtr->pwm, MICROMETAL_REVERSE);
		tempPidOut = -InstancePtr->pid->out;
	}
	else {
		ugvPwm_setDir(InstancePtr->pwm, MICROMETAL_FORWARD);
		tempPidOut = InstancePtr->pid->out;
	}
	ugvPwm_setSpeed(InstancePtr->pwm, tempPidOut);
}

/**
 * @brief Function to manually set the duty cycle and direction of a ugv_microMetalMotor
 *        instance. Also updates currentPos, currentRpm, and currentDir values.
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param duty is the desired duty cycle from 0-255.
 * @param dir is the desired direction to set.
 */
void microMetal_manualSetDutyDir(ugv_microMetalMotor *InstancePtr, u8 duty, _Bool dir)
{
	// Set dir
	ugvPwm_setDir(InstancePtr->pwm, dir);

	// Set duty
	ugvPwm_setSpeed(InstancePtr->pwm, duty);

	// update struct
	InstancePtr->currentDir = ugvQei_getDirection (InstancePtr->qei);
	InstancePtr->currentRpm = ugvQei_getRpm       (InstancePtr->qei);
	InstancePtr->currentPos = ugvQei_getPosition  (InstancePtr->qei);
}














