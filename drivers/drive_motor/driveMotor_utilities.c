#include "driveMotor_utilities.h"


/**
 * @brief Function to initialize a ugv_driveMotor instance's PWM, QEI, and PID instances.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int driveMotor_Initialize(ugv_driveMotor *InstancePtr, ugv_pwm *PwmInstancePtr, ugv_qei *QeiInstancePtr, PIDController *PidInstancePtr)
{
	int Status;

	InstancePtr->uartSetPoint = 0;

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

/**
 * @brief Function to initialize PWM of a ugv_driveMotor instance to
 *        parameters specified in driveMotor_utilities.h.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param PwmInstancePtr is a pointer to a ugv_pwm instance to be stored in the
 *        ugv_driveMotor instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
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

/**
 * @brief Function to initialize QEI of a ugv_driveMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param QeiInstancePtr is a pointer to a ugv_qei instance to be stored in the ugv_driveMotor instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
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

/**
 * @brief Function to initialize PID of a ugv_driveMotor instance to parameters specified in
 *        driveMotor_utilities.h
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param PidInstancePtr is a pointer to a PID instance to be stored in the ugv_driveMotor instance.
 */
void driveMotor_pidInitialize(ugv_driveMotor *InstancePtr, PIDController *PidInstancePtr)
{
	InstancePtr->pid = PidInstancePtr;
	PIDController_Init(InstancePtr->pid);
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

/**
 * @brief Function to manually update the current RPM and direction of a ugv_driveMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void driveMotor_updateStatus(ugv_driveMotor *InstancePtr)
{
	InstancePtr->currentRpm = ugvQei_getRpm       (InstancePtr->qei);
	InstancePtr->currentDir = ugvQei_getDirection (InstancePtr->qei);
}


/**
 * @brief Function to update and set the PID output of a ugv_driveMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param driveMotor_setPoint is a pointer to a float representing the desired RPM
 *        of the driveMotor. Negative values represent reverse drive.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
void driveMotor_setPidOutput(ugv_driveMotor *InstancePtr, float driveMotor_setPoint)
{
	// get rpm and direction
	driveMotor_updateStatus(InstancePtr);

	// set pid setpoint
	if(driveMotor_setPoint < 0) {
		InstancePtr->pid->setPoint = -driveMotor_setPoint;
	}
	else InstancePtr->pid->setPoint = driveMotor_setPoint;

	// If motor going opposite way, set PID measurement to 0
	//if(InstancePtr->pwm->setDirection == DRIVEMOTOR_REVERSE) {

	if(driveMotor_setPoint < 0) {

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

/**
 * @brief Function to manually set duty cycle and direction of a ugv_driveMotor instance.
 *        This function also updates the current direction and rpm of the instance.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param duty is a u8 representing duty cycle from 0-255.
 */
void driveMotor_manualSetDutyDir(ugv_driveMotor *InstancePtr, u8 duty, _Bool dir)
{
	// set given direction
	ugvPwm_setDir(InstancePtr->pwm, dir);

	// set given duty cycle
	ugvPwm_setSpeed(InstancePtr->pwm, duty);

	// update current rpm and direction
	driveMotor_updateStatus(InstancePtr);
}

/**
 * @brief Function to print drive motor current rpm and direction.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void driveMotor_printStatus(ugv_driveMotor *InstancePtr)
{
	// update rpm and dir
	InstancePtr->currentRpm = ugvQei_getRpm       (InstancePtr->qei);
	InstancePtr->currentDir = ugvQei_getDirection (InstancePtr->qei);
	//
	xil_printf("--------------------------------------------------\r\n");
	if(InstancePtr->uartManualMode)
		xil_printf("Drivemotor Mode: MANUAL\r\n");
	else
		xil_printf("Drivemotor Mode: PID\r\n");
	xil_printf("Drive Motor Current RPM: %d\r\n", InstancePtr->currentRpm);
	if(InstancePtr->currentDir == DRIVEMOTOR_REVERSE){
		xil_printf("Drive Motor Current Dir: REVERSE\r\n\n");
	}
	else {
		xil_printf("Drive Motor Current Dir: FORWARD\r\n\n");
	}
}

/**
 * @brief Function to print the actual and expected duty cycle of the pwm object of a
 *        ugv_driveMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void driveMotor_printDuty(ugv_driveMotor *InstancePtr)
{
	u32 cnt_actual;
	xil_printf("UART speed sel : %d\r\n", InstancePtr->uartSetPoint);
	cnt_actual = MOTORPWM_mReadReg(InstancePtr->pwm->RegBaseAddress, 0);
	cnt_actual = cnt_actual & 0xFF;
	xil_printf("IP speed sel   : %d\r\n", cnt_actual);
	cnt_actual = MOTORPWM_mReadReg(InstancePtr->pwm->RegBaseAddress, 12);
	xil_printf("Counter Value  : %d\r\n", cnt_actual);
	xil_printf("Expected duty  : %d\r\n", InstancePtr->pwm->speedSelect);
	xil_printf("Actual duty    : %d\r\n\n", (cnt_actual-DRIVEMOTOR_PWM_MIN)/DRIVEMOTOR_PWM_SCALE);
}

#ifdef OCM_DRIVEMOTOR_EN
/**
 * @brief Function to load ugv_driveMotor current RPM and direction to OCM. Also
 *        reads setpoint and manual mode enable from OCM and writes it to
 *        the ugv_driveMotor instance. Targets addresses specified in ocm.h
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void ocm_updateDriveMotor(ugv_driveMotor *InstancePtr)
{
    volatile u32 *modePtr     = (u32 *) (SM_DM_BASEADDR + SM_DM_SETMANUAL_OFFSET);
	volatile u32 *setPointPtr = (u32 *) (SM_DM_BASEADDR + SM_DM_SETPOINT_OFFSET);
	volatile u32 *setDirPtr   = (u32 *) (SM_DM_BASEADDR + SM_DM_SETDIR_OFFSET);
	volatile u32 *rpmPtr      = (u32 *) (SM_DM_BASEADDR + SM_DM_RPM_OFFSET);
	volatile u32 *dirPtr      = (u32 *) (SM_DM_BASEADDR + SM_DM_DIR_OFFSET);

    _Bool tempMode;
	u8 tempDir;
	u16 tempSetPoint;

    // get the mode
    Xil_DCacheInvalidateRange((u32) modePtr, 1);
    tempMode = (_Bool) *modePtr;
    if(!tempMode & InstancePtr->uartManualMode) {
        PIDController_Init(InstancePtr->pid);
    }
    InstancePtr->uartManualMode = tempMode;
    
	// get the dir
	Xil_DCacheInvalidateRange((u32) setDirPtr, 1);
	tempDir = (u8) *setDirPtr;

	// get the setpoint
	Xil_DCacheInvalidateRange((u32) setPointPtr, 1);
	tempSetPoint = (u16) *setPointPtr;
	InstancePtr->uartSetPoint = (int) tempSetPoint;

	if(tempDir == 0)
		InstancePtr->uartSetPoint = -InstancePtr->uartSetPoint;

	// update the drive motor stats
	driveMotor_updateStatus(InstancePtr);

	// load rpm to ocm
	*rpmPtr = (u16) InstancePtr->currentRpm;
	Xil_DCacheFlushRange((u32) rpmPtr, 2); // 2 bytes

	// load dir to ocm
	*dirPtr = (u8)  InstancePtr->currentDir;
	Xil_DCacheFlushRange((u32) dirPtr, 1); // 1 byte
}
#endif











