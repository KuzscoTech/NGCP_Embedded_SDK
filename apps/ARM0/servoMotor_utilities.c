#include "servoMotor_utilities.h"

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

	Status = ugvServo_initialize(InstancePtr->pwm, SERVO_BASEADDR);
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
 * @brief Function to get the position of a ugv_servoMotor.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @return Position of the servo motor in degrees.
 * @note: This function contains a while loop such that execution will hang until the XADC has valid data.
 */
float servoMotor_getPosition(ugv_servoMotor *InstancePtr)
{
	int   Status;
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
	temp = (float) convertedVolt;

	// convert voltage to angle
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
	ugvServo_SetDir(InstancePtr->pwm, (u8) InstancePtr->pid->out);
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


















/**
 * @brief Function to convert XADC fractional data to an int.
 *
 * @param FloatNum is a float containing fractional data.
 * @return Integer component of FloatNum.
 */
int fractionToInt(float FloatNum){
	float Temp;
	Temp = FloatNum;
	if(FloatNum < 0) {
		Temp = -(FloatNum);
	}
	return( ((int)((Temp -(float)((int)Temp)) * (1000000.0f))));
}