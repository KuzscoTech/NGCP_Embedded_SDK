#include "servoMotor_utilities.h"

/**
 * @brief Function to initialize a ugv_servoMotor's PWM and XADC instances.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param PwmInstancePtr is a pointer to a ugv_servo instance (PWM).
 * @param AdcInstancePtr is a pointer to a XSysMon instance (XADC).
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int servoMotor_Initialize(ugv_servoMotor *InstancePtr, ugv_servo *PwmInstancePtr, XSysMon *AdcInstancePtr,
		                  PIDController *PidInstancePtr)
{
	int Status;

	Status = servoMotor_pwmInitialize(InstancePtr, PwmInstancePtr);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	Status = servoMotor_adcInitialize(InstancePtr, AdcInstancePtr);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	Status = servoMotor_pidInitialize(InstancePtr, PidInstancePtr);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	return XST_SUCCESS;
}


/**
 * @brief Function to initialize a ugv_servoMotor's PWM instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param PwmInstancePtr is a pointer to a ugv_servo instance (PWM).
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int servoMotor_pwmInitialize(ugv_servoMotor *InstancePtr, ugv_servo *PwmInstancePtr)
{
	int Status;
	//
	InstancePtr->pwm = PwmInstancePtr;

	Status = ugvServo_Initialize(InstancePtr->pwm, SERVO_BASEADDR);
	if(Status != XST_SUCCESS) return XST_FAILURE;
}

/**
 * @brief Function to initialize a ugv_servoMotor's XADC instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param AdcInstancePtr is a pointer to an XSysMon instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int servoMotor_adcInitialize(ugv_servoMotor *InstancePtr, XSysMon *AdcInstancePtr)
{
	int Status;
	XSysMon_Config *adcConfigPtr;
	//
	adcConfigPtr = XSysMon_LookupConfig(SERVO_XADC_DEVICE_ID);
	if(adcConfigPtr == NULL) {
		return XST_FAILURE;
	}

	Status = XSysMon_CfgInitialize(InstancePtr->adc, adcConfigPtr, adcConfigPtr->BaseAddress);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/**
 * @brief Function to initialize a ugv_servoMotor's PID instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param PidInstancePtr is a pointer to a PIDController instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int servoMotor_pidInitialize(ugv_servoMotor *InstancePtr, PIDController *PidInstancePtr)
{
	int Status;
	InstancePtr->pid = PidInstancePtr;
	PIDController_Init(InstancePtr->pid);
	//
	InstancePtr->pid->Kp        = SERVO_PID_KP;
	InstancePtr->pid->Ki        = SERVO_PID_KI;
	InstancePtr->pid->Kd        = SERVO_PID_KD;
	InstancePtr->pid->tau       = SERVO_PID_TAU;
	InstancePtr->pid->limMin    = SERVO_PID_LIM_MIN;
	InstancePtr->pid->limMax    = SERVO_PID_LIM_MAX;
	InstancePtr->pid->limMinInt = SERVO_PID_LIM_MIN_INT;
	InstancePtr->pid->limMaxInt = SERVO_PID_LIM_MAX_INT;
	InstancePtr->pid->T         = SERVO_PID_SAMPLE_TIME;

	return XST_SUCCESS;
}

/**
 * @brief Function to get the position of a ugv_servoMotor.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @return Position of the servo motor in degrees.
 * @note: This function contains a while loop such that execution will hang until the XADC has valid data.
 */
float servoMotor_getPosition(ugv_servoMotor *InstancePtr)
{
	u32   ExtVolRawData;
	float ExtVolData;
	int   convertedVolt;
	int   convertedAngle;
	float temp;

	// block until ADC indicates End Of Sequence
	while ((XSysMon_GetStatus(InstancePtr->adc) & XSM_SR_EOS_MASK) != XSM_SR_EOS_MASK);

	// read data from channel 14
	ExtVolRawData = XSysMon_GetAdcData(InstancePtr->adc, XSM_CH_AUX_MIN+14);
	ExtVolData    = XSysMon_RawToExtVoltage(ExtVolRawData);

	// convert raw data to voltage
	convertedVolt = (AdcfractionToInt(ExtVolData)/10000);
	//printf("ADC Voltage in Function  : %0d V \r\n", convertedVolt);
	InstancePtr->adcVoltage = convertedVolt;

	// convert voltage to angle
	temp = (float) convertedVolt;
	convertedAngle = 25.0 * log(0.005 * pow(temp, 3) + 0.8) + 7;
	if(convertedAngle < 0) convertedAngle = 0;

	// update struct and return converted angle
	InstancePtr->currentPos = convertedAngle;
	return convertedAngle;
}

/**
 * @brief Function to update and set the PID output of a ugv_servoMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param setPoint is a pointer to a float representing the desired angle of the servo.
 */
void servoMotor_setPidOutput(ugv_servoMotor *InstancePtr, float *setPoint)
{
	// get position
	InstancePtr->currentPos = servoMotor_getPosition(InstancePtr);

	// update PID struct with position and setpoint
	InstancePtr->pid->measurement = InstancePtr->currentPos;
	InstancePtr->pid->setPoint = *setPoint;

	// calculate pid output and set pwm duty cycle
	calculatePid(InstancePtr->pid, InstancePtr->pid->setPoint, InstancePtr->pid->measurement);
	ugvServo_SetDir(InstancePtr->pwm, (u32) InstancePtr->pid->out);
}

/**
 * @brief Function to manually set the duty cycle of a ugv_servoMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param duty is the duty cycle from 75-250, where 75 is far left and 250 is far right.
 */
void servoMotor_setManualDuty(ugv_servoMotor *InstancePtr, u32 duty)
{
	ugvServo_SetDir(InstancePtr->pwm, duty);
	InstancePtr->manualSetDuty = duty;
	//
	InstancePtr->manualSetPos = (float) duty-75;
}

/**
 * @brief Function to convert XADC fractional data to an int.
 *
 * @param FloatNum is a float containing fractional data.
 * @return Integer component of FloatNum.
 */
int AdcfractionToInt(float FloatNum)
{
	float Temp;
	Temp = FloatNum;
	if(FloatNum < 0) {
		Temp = -(FloatNum);
	}

	return( ((int)((Temp -(float)((int)Temp)) * (1000000.0f))));
}



