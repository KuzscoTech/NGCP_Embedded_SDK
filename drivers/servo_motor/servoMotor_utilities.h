#ifndef SERVOMOTOR_UTILITIES_H
#define SERVOMOTOR_UTILITIES_H

#include "stdio.h"
#include "xparameters.h"
#include "xsysmon.h"
#include "servoz3.h"
#include "math.h"
#include "pid.h"


/* SERVO DEFINITIONS */
#define SERVO_BASEADDR         XPAR_SERVOZ3_0_S00_AXI_BASEADDR
#define SERVO_XADC_DEVICE_ID   XPAR_XADC_WIZ_0_DEVICE_ID

/* SERVO PID PARAMETERS */
#define SERVO_PID_KP           0.5f
#define SERVO_PID_KI           1.0f
#define SERVO_PID_KD           0.1f
#define SERVO_PID_TAU          0.02f
#define SERVO_PID_LIM_MIN      75.0f
#define SERVO_PID_LIM_MAX      250.0f
#define SERVO_PID_SAMPLE_TIME  0.01f // seconds
#define SERVO_PID_LIM_MIN_INT -500.0f
#define SERVO_PID_LIM_MAX_INT  500.0f

/* XADC MACROS */
#define XSysMon_RawToExtVoltage(AdcData)  ((((float)(AdcData))*(1.0f))/65536.0f)

/* Servo Motor Struct */
typedef struct{
	u32           manualSetDuty;
	float         manualSetPos;
	//
	float         currentPos;
	int           adcVoltage;
	//
	ugv_servo     *pwm;
	XSysMon       *adc;
	PIDController *pid;
}ugv_servoMotor;


/**
 * @brief Function to initialize a ugv_servoMotor's PWM and XADC instances.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param PwmInstancePtr is a pointer to a ugv_servo instance (PWM).
 * @param AdcInstancePtr is a pointer to a XSysMon instance (XADC).
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int servoMotor_Initialize(ugv_servoMotor *InstancePtr, ugv_servo *PwmInstancePtr, XSysMon *AdcInstancePtr,
		                  PIDController *PidInstancePtr);

/**
 * @brief Function to initialize a ugv_servoMotor's PWM instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param PwmInstancePtr is a pointer to a ugv_servo instance (PWM).
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int servoMotor_pwmInitialize(ugv_servoMotor *InstancePtr, ugv_servo *PwmInstancePtr);

/**
 * @brief Function to initialize a ugv_servoMotor's XADC instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param AdcInstancePtr is a pointer to an XSysMon instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int servoMotor_adcInitialize(ugv_servoMotor *InstancePtr, XSysMon *AdcInstancePtr);

/**
 * @brief Function to initialize a ugv_servoMotor's PID instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param PidInstancePtr is a pointer to a PIDController instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int servoMotor_pidInitialize(ugv_servoMotor *InstancePtr, PIDController *PidInstancePtr);

/**
 * @brief Function to get the position of a ugv_servoMotor.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @return Position of the servo motor in degrees.
 * @note: This function contains a while loop such that execution will hang until the XADC has valid data.
 */
float servoMotor_getPosition(ugv_servoMotor *InstancePtr);

/**
 * @brief Function to update and set the PID output of a ugv_servoMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param setPoint is a pointer to a float representing the desired angle of the servo.
 */
void servoMotor_setPidOutput(ugv_servoMotor *InstancePtr, float *setPoint);


/**
 * @brief Function to manually set the duty cycle of a ugv_servoMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_servoMotor instance.
 * @param duty is the duty cycle from 75-250, where 75 is far left and 250 is far right.
 *
 */
void servoMotor_setManualDuty(ugv_servoMotor *InstancePtr, u32 duty);

/**
 * @brief Function to convert XADC fractional data to an int.
 *
 * @param FloatNum is a float containing fractional data.
 * @return Integer component of FloatNum.
 */
int AdcfractionToInt(float FloatNum);

#endif
