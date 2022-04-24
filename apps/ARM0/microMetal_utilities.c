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
	InstancePtr->pid = PwmInstancePtr;

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

	ugvPwm_setPeriod   (InstancePtr->pid, (u16) MGM_PWM_PERIOD);
	ugvPwm_setMinPeriod(InstancePtr->pid, (u16) MGM_PWM_MIN);
	ugvPwm_setScaling  (InstancePtr->pid, (u8)  MGM_PWM_SCALE);
	ugvPwm_setL298Mode (InstancePtr->pid);
	ugvPwm_Enable      (InstancePtr->pid, TRUE);

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
	ugvQei_setMicroMetalRatio      (InstancePtr, MGM_GEAR_RATIO);
	ugvQei_setMicroMetalResolution (InstancePtr, MGM_RESOLUTION);
	ugvQei_setMicroMetalMode       (InstancePtr, TRUE);
	ugvPwm_Enable                  (InstancePtr, TRUE);

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

















