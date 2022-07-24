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

	InstancePtr->setDir      = FALSE;
	InstancePtr->setDuration = 0;
	InstancePtr->manualMode  = TRUE;

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

		case 2:
			Status = ugvPwm_Initialize(InstancePtr->pwm, MGM2_PWM_BASEADDR);
			if(Status != XST_SUCCESS) return XST_FAILURE;
			else break;

		case 3:
			Status = ugvPwm_Initialize(InstancePtr->pwm, MGM3_PWM_BASEADDR);
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

		case 2:
			Status = ugvQei_Initialize(InstancePtr->qei, MGM2_QEI_BASEADDR);
			if(Status != XST_SUCCESS) return XST_FAILURE;
			else break;

		case 3:
			Status = ugvQei_Initialize(InstancePtr->qei, MGM3_QEI_BASEADDR);
			if(Status != XST_SUCCESS) return XST_FAILURE;
			else break;

		default:
			return XST_FAILURE;
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

		case 2:
			InstancePtr->pid->Kp        = MGM2_PID_KP;
			InstancePtr->pid->Ki        = MGM2_PID_KI;
			InstancePtr->pid->Kd        = MGM2_PID_KD;
			InstancePtr->pid->tau       = MGM2_PID_TAU;
			InstancePtr->pid->limMin    = MGM2_PID_LIM_MIN;
			InstancePtr->pid->limMax    = MGM2_PID_LIM_MAX;
			InstancePtr->pid->limMinInt = MGM2_PID_LIM_MIN_INT;
			InstancePtr->pid->limMaxInt = MGM2_PID_LIM_MAX_INT;
			InstancePtr->pid->T         = MGM2_PID_SAMPLE_TIME;
			break;

		case 3:
			InstancePtr->pid->Kp        = MGM3_PID_KP;
			InstancePtr->pid->Ki        = MGM3_PID_KI;
			InstancePtr->pid->Kd        = MGM3_PID_KD;
			InstancePtr->pid->tau       = MGM3_PID_TAU;
			InstancePtr->pid->limMin    = MGM3_PID_LIM_MIN;
			InstancePtr->pid->limMax    = MGM3_PID_LIM_MAX;
			InstancePtr->pid->limMinInt = MGM3_PID_LIM_MIN_INT;
			InstancePtr->pid->limMaxInt = MGM3_PID_LIM_MAX_INT;
			InstancePtr->pid->T         = MGM3_PID_SAMPLE_TIME;
			break;

		default:
			return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/**
 * @brief Function to update a ugv_microMetalMotor instance's rpm, direction, and position
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void microMetal_updateStats(ugv_microMetalMotor *InstancePtr)
{
	InstancePtr->currentPos = (int) ugvQei_getPosition  (InstancePtr->qei);
	InstancePtr->currentRpm = (int) ugvQei_getRpm       (InstancePtr->qei);
	InstancePtr->currentDir = (_Bool) ugvQei_getDirection (InstancePtr->qei);
	InstancePtr->currentDir = !InstancePtr->currentDir;
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
int microMetal_setPidOutput(ugv_microMetalMotor *InstancePtr)
{
	float tempPidOut;

	// update current stats
	microMetal_updateStats(InstancePtr);
	InstancePtr->pid->setPoint    = (float) InstancePtr->setDuration + 360;
	InstancePtr->pid->measurement = (float) InstancePtr->currentPos;

	calculatePid(InstancePtr->pid, InstancePtr->pid->setPoint, InstancePtr->pid->measurement);

	// set direction and duty cycle based on PID output
	if(InstancePtr->pid->out < 0)
		ugvPwm_setDir(InstancePtr->pwm, MICROMETAL_REVERSE);
	else
		ugvPwm_setDir(InstancePtr->pwm, MICROMETAL_FORWARD);

	tempPidOut = abs((int) InstancePtr->pid->out);
	ugvPwm_setSpeed(InstancePtr->pwm, tempPidOut);

	return XST_SUCCESS;
}

/**
 * @brief Function to update and set cascaded PID output of a ugv_microMetalMotor instance.
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
int microMetal_setCascadedPidOutput(ugv_microMetalMotor *InstancePtr)
{
	float tempPidOut;

	// update stats
	microMetal_updateStats(InstancePtr);

	// update the positional PID
	InstancePtr->pid->setPoint    = (float) InstancePtr->setDuration + 360;
	InstancePtr->pid->measurement = (float) InstancePtr->currentPos;
	calculatePid(InstancePtr->pid, InstancePtr->pid->setPoint, InstancePtr->pid->measurement);

	// update the speed PID
	InstancePtr->pid_inner->setPoint = InstancePtr->pid->out;
	InstancePtr->pid_inner->measurement = InstancePtr->currentRpm;
	calculatePid(InstancePtr->pid_inner, InstancePtr->pid_inner->setPoint, InstancePtr->pid_inner->measurement);

	if(InstancePtr->pid_inner->out < 0)
		ugvPwm_setDir(InstancePtr->pwm, MICROMETAL_REVERSE);
	else
		ugvPwm_setDir(InstancePtr->pwm, MICROMETAL_FORWARD);

	tempPidOut = abs((int)InstancePtr->pid_inner->out);
	ugvPwm_setSpeed(InstancePtr->pwm, tempPidOut);

	return XST_SUCCESS;
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

/**
 * @brief Function to update the time elapsed of a ugv_microMetalMotor.
 * @param InstancePtr is a pointer to a ugv_microMetalMotor struct.
 */
void microMetal_updateRunDuration(ugv_microMetalMotor *InstancePtr)
{
	XTime tCurrent;

	// get the initial time if a timer start is detected
	// on timer start:
	// -> set duty cycle
	// -> set direction
	if(InstancePtr->manualMode && !InstancePtr->inProgress) {
		XTime_GetTime(&InstancePtr->startTime);
		InstancePtr->inProgress = 1;
		if(InstancePtr->setDir)
			microMetal_manualSetDutyDir(InstancePtr, InstancePtr->manualDutyTrue, InstancePtr->setDir);
		else
			microMetal_manualSetDutyDir(InstancePtr, InstancePtr->manualDutyFalse, InstancePtr->setDir);
		InstancePtr->manualMode = 0;
		if(InstancePtr->motorId == 2) {
			InstancePtr->setDuration = InstancePtr->setDuration*10;
		}
		if(InstancePtr->motorId == 0) {
			InstancePtr->mgm0Counter = 0;
		}
	}

	// get current time
	XTime_GetTime(&tCurrent);
	InstancePtr->deltaT = 1.0 * (tCurrent - InstancePtr->startTime) / (COUNTS_PER_SECOND/1000);

	// if delta time > setDuration:
	// -> reset inProgress
	// -> reset duty cycle
	if(InstancePtr->deltaT > (float)InstancePtr->setDuration) {
		InstancePtr->inProgress = 0;
		InstancePtr->manualMode = 0;
		microMetal_manualSetDutyDir(InstancePtr, 0, InstancePtr->setDir);
	}
}


/**
 * @brief Function to print mode and position of a ugv_microMetalMotor instance.
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void microMetal_printStatus(ugv_microMetalMotor *InstancePtr)
{
	microMetal_updateStats(InstancePtr);
	printf("Micrometal Current Position: %d\r\n", InstancePtr->currentPos-360);
	if(InstancePtr->currentDir == MICROMETAL_FORWARD)
		printf("Micrometal Current Dir     : FORWARD\r\n");
	else
		printf("Micrometal Current Dir     : REVERSE\r\n");

	if(InstancePtr->pwm->setDirection == MICROMETAL_FORWARD)
		printf("Micrometal Set Dir         : FORWARD\r\n");
	else
		printf("Micrometal Set Dir         : REVERSE\r\n");

	printf("Micrometal Current RPM     : %d\r\n", InstancePtr->currentRpm);
	printf("Micrometal Setpoint        : %d\r\n", InstancePtr->setDuration);
}

/**
 * @brief Function to print the actual and expected duty cycle of the pwm object of a
 *        ugv_driveMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void microMetal_printDuty(ugv_microMetalMotor *InstancePtr)
{
	u32 cnt_actual;
	xil_printf("UART Timer Duration : %d\r\n", InstancePtr->setDuration);
	cnt_actual = MOTORPWM_mReadReg(InstancePtr->pwm->RegBaseAddress, 0);
	cnt_actual = cnt_actual & 0xFF;
	xil_printf("IP speed sel   : %d\r\n", cnt_actual);
	cnt_actual = MOTORPWM_mReadReg(InstancePtr->pwm->RegBaseAddress, 12);
	xil_printf("Counter Value  : %d\r\n", cnt_actual);
	xil_printf("Expected duty  : %d\r\n", InstancePtr->pwm->speedSelect);
	xil_printf("Actual duty    : %d\r\n\n", (cnt_actual-MGM_PWM_MIN)/MGM_PWM_SCALE);
}

/**
 * @brief Function to print the PID stats of a ugv_microMetalMotor instance.
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void microMetal_printPid(ugv_microMetalMotor *InstancePtr)
{
	printf("PID Setpoint: %d\r\n", (int) InstancePtr->pid->setPoint);
	printf("PID Measure : %d\r\n", (int) InstancePtr->pid->measurement);
	printf("PID Error   : %d\r\n", (int) InstancePtr->pid->prevError);
	printf("PID Integral: %d\r\n", (int) InstancePtr->pid->integrator);
	printf("PID Output  : %d\r\n", (int) InstancePtr->pid->out);
}

#ifdef OCM_DRIVEMOTOR_EN
/**
 * @brief Function to get micrometal control values from OCM.
 *
 * 	      Four one-byte timer values.
 * 				[mm0 time]
 * 				[mm1 time]
 * 				[mm2 time]
 * 				[mm3 time]
 *        One byte directional control:
 *        		[4'b0] [mm0 dir] [mm1 dir] [mm2 dir] [mm3 dir]
 *        One byte timer controls:
 *        		- '1' indicates start the timer.
 *        		- A timer cannot be restarted once it is in progress.
 *        		[4'b0] [mm0 enable] [mm1 enable] [mm2 enable] [mm3 enable]
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void ocm_updateMicroMetal(ugv_microMetalMotor *InstancePtr0, ugv_microMetalMotor *InstancePtr1,
		                  ugv_microMetalMotor *InstancePtr2, ugv_microMetalMotor *InstancePtr3)
{
	volatile u32 *mm0_timePtr   = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETPOINT_OFFSET);
	volatile u32 *mm1_timePtr   = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETPOINT_OFFSET);
	volatile u32 *mm2_timePtr   = (u32 *) (SM_MM_BASEADDR + SM_MM2_SETPOINT_OFFSET);
	volatile u32 *mm3_timePtr   = (u32 *) (SM_MM_BASEADDR + SM_MM3_SETPOINT_OFFSET);

	volatile u32 *mm0_enablePtr = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETMANUAL_OFFSET);
	volatile u32 *mm1_enablePtr = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETMANUAL_OFFSET);
	volatile u32 *mm2_enablePtr = (u32 *) (SM_MM_BASEADDR + SM_MM2_SETMANUAL_OFFSET);
	volatile u32 *mm3_enablePtr = (u32 *) (SM_MM_BASEADDR + SM_MM3_SETMANUAL_OFFSET);

	volatile u32 *mm0_setDirPtr = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETDIR_OFFSET);
	volatile u32 *mm1_setDirPtr = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETDIR_OFFSET);
	volatile u32 *mm2_setDirPtr = (u32 *) (SM_MM_BASEADDR + SM_MM2_SETDIR_OFFSET);
	volatile u32 *mm3_setDirPtr = (u32 *) (SM_MM_BASEADDR + SM_MM3_SETDIR_OFFSET);

	// get the time for each micrometal
	Xil_DCacheInvalidateRange((u32) mm0_timePtr, 1);
	InstancePtr0->setDuration = *mm0_timePtr;
	Xil_DCacheInvalidateRange((u32) mm1_timePtr, 1);
	InstancePtr1->setDuration = *mm1_timePtr;
	Xil_DCacheInvalidateRange((u32) mm2_timePtr, 1);
	InstancePtr2->setDuration = *mm2_timePtr;
	Xil_DCacheInvalidateRange((u32) mm3_timePtr, 1);
	InstancePtr3->setDuration = *mm3_timePtr;

	// get the enables for each micrometal
	Xil_DCacheInvalidateRange((u32) mm0_enablePtr, 1);
	InstancePtr0->manualMode = *mm0_enablePtr;
	Xil_DCacheInvalidateRange((u32) mm1_enablePtr, 1);
	InstancePtr1->manualMode = *mm1_enablePtr;
	Xil_DCacheInvalidateRange((u32) mm2_enablePtr, 1);
	InstancePtr2->manualMode = *mm2_enablePtr;
	Xil_DCacheInvalidateRange((u32) mm3_enablePtr, 1);
	InstancePtr3->manualMode = *mm3_enablePtr;

	// set the directions for each micrometal
	Xil_DCacheInvalidateRange((u32) mm0_setDirPtr, 1);
	InstancePtr0->setDir = *mm0_setDirPtr;
	Xil_DCacheInvalidateRange((u32) mm1_setDirPtr, 1);
	InstancePtr1->setDir = *mm1_setDirPtr;
	Xil_DCacheInvalidateRange((u32) mm2_setDirPtr, 1);
	InstancePtr2->setDir = *mm2_setDirPtr;
	Xil_DCacheInvalidateRange((u32) mm3_setDirPtr, 1);
	InstancePtr3->setDir = *mm3_setDirPtr;
}
#endif





