#include "arm0_utilities.h"
/**
 * @brief 
 * 
 * @param InstancePtr 
 * @return int 
 */


int fractionToInt(float FloatNum){
	float Temp;
	Temp = FloatNum;
	if(FloatNum < 0) {
		Temp = -(FloatNum);
	}
	return( ((int)((Temp -(float)((int)Temp)) * (1000000.0f))));
}

int arm0_initializeServoPwm(servoMotor *InstancePtr)
{
	int Status;
	Status = ugvServo_intialize(servoMotor->servoPwm, SERVO_DRIVER_BASEADDR);
	return Status;
}

int arm0_initializeServoXADC(servoMotor *InstancePtr)
{
	int Status;
	XSysMon_Config *adcConfigPtr;
	//
	adcConfigPtr = XSysMon_LookupConfig(SERVO_XADC_DEVICE_ID);
	if(adcConfigPtr == NULL) {
		return XST_FAILURE;
	}

	Status = XSysMon_CfgInitialize(InstancePtr->servoAdc, adcConfigPtr, adcConfigPtr->BaseAddress);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

void arm0_configPID(servoMotor *InstancePtr)
{
	InstancePtr->servoPid.Kp        = SERVO_PID_KP;
	InstancePtr->servoPid.Ki        = SERVO_PID_KI;
	InstancePtr->servoPid.Kd        = SERVO_PID_KD;
	InstancePtr->servoPid.tau       = SERVO_PID_TAU;
	InstancePtr->servoPid.limMin    = SERVO_PID_LIM_MIN;
	InstancePtr->servoPid.limMax    = SERVO_PID_LIM_MAX;
	InstancePtr->servoPid.limMinInt = SERVO_PID_LIM_MIN_INT;
	InstancePtr->servoPid.limMaxInt = SERVO_PID_LIM_MAX_INT;
	InstancePtr->servoPid.T         = SERVO_PID_SAMPLE_TIME;
}


float arm0_getServoPos(servoMotor *InstancePtr)
{
	u32   ExtVolRawData;
	float ExtVolData;
	int   Status;
	int   convertedVolt;
	int   convertedAngle;
	float temp;

	// XADC not ready yet
	if ((XSysMon_GetStatus(SysMonInstPtr) & XSM_SR_EOS_MASK) != XSM_SR_EOS_MASK){
		return XST_FAILURE;
	}
	else {
		ExtVolRawData = XSysMon_GetAdcData(InstancePtr->servoAdc, XSM_CH_AUX_MIN+14);
		ExtVolData    = XSysMon_RawToExtVoltage(ExtVolRawData);
		convertedVolt = fractionToInt(ExtVolData)/10000;
		temp = (float) convertedVolt;
		convertedAngle = 25.0 * log(0.005 * pow(temp, 3) + 0.8) + 7;
		if(convertedAngle < 0) {
			convertedAngle = 0;
		}
		InstancePtr->currentPos = convertedAngle;
		return convertedAngle;
	}
}


int arm0_initializeDriveMotorPwm(ugv_pwm *InstancePtr)
{
    int Status;
    //
    Status = ugvPwm_Initialize(InstancePtr, DRIVEMOTOR_PWM_BASEADDR);
    if(Status != XST_SUCCESS) {
        printf("Drive Motor PWM initialization failed...\r\n");
        return XST_FAILURE;
    }

    ugvPwm_setPeriod   (InstancePtr, (u16) DRIVEMOTOR_PWM_PERIOD);
    ugvPwm_setMinPeriod(InstancePtr, (u16) DRIVEMOTOR_PWM_MIN);
    ugvPwm_setScaling  (InstancePtr, (u8)  DRIVEMOTOR_PWM_SCALE);
    ugvPwm_setIBT2Mode (InstancePtr);
    ugvPwm_Enable      (InstancePtr, TRUE);

    return XST_SUCCESS;
}

/**
 * @brief 
 * 
 * @param InstancePtr 
 * @param motorId 
 * @return int 
 */
int arm0_initializeMicroMetalPwm(ugv_pwm *InstancePtr, u8 motorId)
{
    int Status;
    //
    if(motorId == 0)
    {
        Status = ugvPwm_Initialize(InstancePtr, MGM0_PWM_BASEADDR);
        if(Status != XST_SUCCESS) {
            printf("Drive Motor PWM initialization failed...\r\n");
            return XST_FAILURE;
        }
        ugvPwm_setPeriod   (InstancePtr, (u16) MGM0_PWM_PERIOD);
        ugvPwm_setMinPeriod(InstancePtr, (u16) MGM0_PWM_MIN);
        ugvPwm_setScaling  (InstancePtr, (u8)  MGM0_PWM_SCALE);
        ugvPwm_setL298Mode (InstancePtr);
        ugvPwm_Enable      (InstancePtr, TRUE);
        return XST_SUCCESS;
    }
    else if(motorId == 1)
    {
        Status = ugvPwm_Initialize(InstancePtr, MGM1_PWM_BASEADDR);
        if(Status != XST_SUCCESS) {
            printf("Drive Motor PWM initialization failed...\r\n");
            return XST_FAILURE;
        }
        ugvPwm_setPeriod   (InstancePtr, (u16) MGM1_PWM_PERIOD);
        ugvPwm_setMinPeriod(InstancePtr, (u16) MGM1_PWM_MIN);
        ugvPwm_setScaling  (InstancePtr, (u8)  MGM1_PWM_SCALE);
        ugvPwm_setL298Mode (InstancePtr);
        ugvPwm_Enable      (InstancePtr, TRUE);
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

/**
 * @brief 
 * 
 * @param InstancePtr 
 * @return int 
 */
int arm0_initializeDriveMotorQEI(ugv_qei *InstancePtr)
{
    int Status;
    Status = ugvQei_Initialize(InstancePtr, DRIVEMOTOR_QEI_BASEADDR);
    ugvQei_setMicroMetalMode(InstancePtr, FALSE);
    return Status;
}

/**
 * @brief 
 * 
 * @param InstancePtr 
 * @param qeiId 
 * @return int 
 */
int arm0_initializeMicroMetalQEI(ugv_qei *InstancePtr, u8 qeiId)
{
    int Status;
    if(qeiId == 0) 
    {   
        Status = ugvQei_Initialize(InstancePtr, MGM0_QEI_BASEADDR);
        if(Status != XST_SUCCESS) {
            printf("Micrometal Encoder initialization failed...\r\n");
            return XST_FAILURE;
        }
        ugvQei_setMicroMetalRatio      (InstancePtr, MGM0_GEAR_RATIO);
        ugvQei_setMicroMetalResolution (InstancePtr, MGM0_RESOLUTION);
        ugvQei_setMicroMetalMode       (InstancePtr, TRUE);
        ugvPwm_Enable                  (InstancePtr, TRUE);
        return XST_SUCCESS;
    }
    else if(qeiId == 1) 
    {
        Status = ugvQei_Initialize(InstancePtr, MGM1_QEI_BASEADDR);
        if(Status != XST_SUCCESS) {
            printf("Micrometal Encoder initialization failed...\r\n");
            return XST_FAILURE;
        }
        ugvQei_setMicroMetalRatio      (InstancePtr, MGM1_GEAR_RATIO);
        ugvQei_setMicroMetalResolution (InstancePtr, MGM1_RESOLUTION);
        ugvQei_setMicroMetalMode       (InstancePtr, TRUE);
        ugvPwm_Enable                  (InstancePtr, TRUE);
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

/**
 * @brief 
 * 
 * @param driveMotor_setPoint 
 * @param driveMotor_rpm 
 * @param driveMotor_pid_setPoint 
 * @param driveMotorQeiInstance 
 * @param driveMotorPwmInstance 
 * @param driveMotorPIDInstance 
 */
void arm0_calculateDriveMotorPid(float *driveMotor_setPoint, driveMotor *driveMotor, ugv_qei *driveMotorQeiInstance, ugv_pwm *driveMotorPwmInstance, PIDController *driveMotorPIDInstance){

	if(driveMotor_setPoint < 0) {
		driveMotor->setDir = MOTOR_REVERSE;
	}
	else {
		driveMotor->setDir = MOTOR_FORWARD;
	}

	// get rpm
	driveMotor->currentRpm = (float) ugvQei_getRpm(driveMotorQeiInstance);
	driveMotor->currentDir = ugvQei_getDirection(driveMotorQeiInstance);

	// If motor going opposite way, set PID rpm measurement to 0
	if(driveMotor->setDir == MOTOR_REVERSE) {
		driveMotor->pid_setPoint = -*driveMotor_setPoint;
		ugvPwm_setDir(driveMotorPwmInstance, MOTOR_REVERSE);
		if(driveMotor->currentDir == MOTOR_FORWARD && driveMotor->currentRpm > 2) {
			driveMotor->rpm = 0;
		}
		else {
			driveMotor->rpm = driveMotor->currentRpm;
		}
	}
	else {
		driveMotor->pid_setPoint = *driveMotor_setPoint;
		ugvPwm_setDir(driveMotorPwmInstance, MOTOR_FORWARD);
		if(driveMotor->currentDir == MOTOR_REVERSE && driveMotor->currentRpm > 2) {
			driveMotor->rpm = 0;
		}
		else {
			driveMotor->rpm = driveMotor->currentRpm;
		}
	}

	calculatePid (driveMotorPIDInstance, driveMotor->pid_setPoint, driveMotor->rpm);
	ugvPwm_setSpeed(driveMotorPwmInstance, (u8) driveMotorPIDInstance->out);
}
