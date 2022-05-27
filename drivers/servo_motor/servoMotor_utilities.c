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

	InstancePtr->uartManualMode = FALSE;
	InstancePtr->uartSetPoint = 122;

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

	ugvServo_SetDir(InstancePtr->pwm, 165);
	return XST_SUCCESS;
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
	InstancePtr->adc = AdcInstancePtr;

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
void servoMotor_setPidOutput(ugv_servoMotor *InstancePtr, float setPoint)
{
	float temp;
	// get position
	InstancePtr->currentPos = servoMotor_getPosition(InstancePtr);

	// update PID struct with position and setpoint
	InstancePtr->pid->measurement = InstancePtr->currentPos;
	InstancePtr->pid->setPoint = setPoint;

	if(abs(InstancePtr->pid->setPoint - InstancePtr->pid->measurement) < 8){
		// calculate pid output and set pwm duty cycle
		calculatePid(InstancePtr->pid, InstancePtr->pid->setPoint, InstancePtr->pid->measurement);
		temp = 325 - InstancePtr->pid->out;
		ugvServo_SetDir(InstancePtr->pwm, (u32) temp);
	}
	else{

	}
	//Xil_Out32(InstancePtr->pwm->RegBaseAddress, (u32) InstancePtr->pid->out);
}

/**
 * @brief Function to manually set the position of a ugv_servoMotor instance.
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param pos is the desired angle from 60-170. 122 is neutral.
 */
void servoMotor_setManualPos(ugv_servoMotor *InstancePtr, u32 pos)
{
	u32 temp;
	temp = pos+75;
	if(temp > 250) temp = 250;
	ugvServo_SetDir(InstancePtr->pwm, temp);
	InstancePtr->manualSetPos = (int) temp;
}

/**
 * @brief Function to print status of a ugv_servoMotor instance.
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 */
void servoMotor_printStatus(ugv_servoMotor *InstancePtr)
{
    printf("\r\n");
    servoMotor_getPosition(InstancePtr);
    if(InstancePtr->uartManualMode) 
        printf("Servo Mode    : MANUAL\r\n");
    else
        printf("Servo Mode    : PID\r\n");
    printf("Servo Position: %d\r\n", InstancePtr->currentPos);
    printf("Servo Setpoint: %d\r\n", InstancePtr->uartSetPoint);
    printf("Servo Input   : %d\r\n", InstancePtr->pwm->inputVal);
}

/**
 * @brief Function to convert XADC fractional data to an int.
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
 * @brief Function to load servo motor current position to OCM. Also
 *        reads setpoint and manual mode enable and sets it in the struct. 
 *        Targets addresses specified in ocm.h
 */
void ocm_updateServoMotor(ugv_servoMotor *InstancePtr)
{
    volatile u32 *manualModePtr = (u32 *) (SM_SERVO_BASEADDR + SM_SERVO_SETMANUAL_OFFSET);
	volatile u32 *setPointPtr   = (u32 *) (SM_SERVO_BASEADDR + SM_SERVO_SETPOINT_OFFSET);
	volatile u32 *positionPtr   = (u32 *) (SM_SERVO_BASEADDR + SM_SERVO_CURRENT_OFFSET);

    _Bool tempMode;

    // get the mode
    Xil_DCacheInvalidateRange((u32) manualModePtr, 1);
    tempMode = (_Bool) *manualModePtr;
    if(!tempMode & InstancePtr->uartManualMode) {
        PIDController_Init(InstancePtr->pid);
    }
    InstancePtr->uartManualMode = tempMode;

	// get the setpoint
	Xil_DCacheInvalidateRange((u32) setPointPtr, 2);
	InstancePtr->uartSetPoint = (u16) *setPointPtr;

	// update the position
	*positionPtr = (u16) InstancePtr->currentPos;
	Xil_DCacheFlushRange((u32) positionPtr, 2);
}

