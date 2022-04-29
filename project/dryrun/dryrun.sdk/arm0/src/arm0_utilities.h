#ifndef ARM0_UTILITIES_H
#define ARM0_UTILITIES_H

#include "motorEncoder.h"
#include "motorPWM.h"
#include "pid.h"
#include "xparameters.h"
//#include "servoz3.h"
//#include "xsysmon.h"
#include "math.h"

/* Drive Motor Struct */
typedef struct{
    float pid_setPoint;
    _Bool setDir;
    _Bool currentDir;
    float currentRpm;
    float rpm;
} driveMotor;


/* Servo Motor Struct */
/*
typedef struct{
	struct ugv_servo     servoPwm;
	struct XSysMon       servoAdc;
	struct PIDController servoPid;
	float                currentPos;
} servoMotor;
*/

/* MOTORS */
#define MOTOR_FORWARD  TRUE
#define MOTOR_REVERSE  FALSE
#define DRIVE_MOTOR_ID 0
#define MICROMETAL_ID  1

/* SERVO MOTOR */
#define SERVO_DRIVER_BASEADDR
#define SERVO_XADC_DEVICE_ID


/* PID CONFIG */
// -> servo
#define SERVO_PID_KP           0.5f
#define SERVO_PID_KI           1.0f
#define SERVO_PID_KD           0.1f
#define SERVO_PID_TAU          0.02f
#define SERVO_PID_LIM_MIN      0.0f
#define SERVO_PID_LIM_MAX      255.0f
#define SERVO_PID_SAMPLE_TIME  0.01f // seconds
#define SERVO_PID_LIM_MIN_INT -500.0f
#define SERVO_PID_LIM_MAX_INT  500.0f

// -> drive motor
#define DRIVEMOTOR_PID_KP           0.5f
#define DRIVEMOTOR_PID_KI           1.0f
#define DRIVEMOTOR_PID_KD           0.1f
#define DRIVEMOTOR_PID_TAU          0.02f
#define DRIVEMOTOR_PID_LIM_MIN      0.0f
#define DRIVEMOTOR_PID_LIM_MAX      255.0f
#define DRIVEMOTOR_PID_SAMPLE_TIME  0.01f // seconds
#define DRIVEMOTOR_PID_LIM_MIN_INT -500.0f
#define DRIVEMOTOR_PID_LIM_MAX_INT  500.0f

// -> mgm0
#define MGM0_PID_KP           0.4f
#define MGM0_PID_KI           1.2f
#define MGM0_PID_KD           0.25f
#define MGM0_PID_TAU          0.02f
#define MGM0_PID_LIM_MIN     -255.0f
#define MGM0_PID_LIM_MAX      255.0f
#define MGM0_PID_SAMPLE_TIME  0.01f // seconds
#define MGM0_PID_LIM_MIN_INT -200.0f
#define MGM0_PID_LIM_MAX_INT  200.0f

// -> mgm1
#define MGM1_PID_KP           0.4f
#define MGM1_PID_KI           1.2f
#define MGM1_PID_KD           0.25f
#define MGM1_PID_TAU          0.02f
#define MGM1_PID_LIM_MIN     -255.0f
#define MGM1_PID_LIM_MAX      255.0f
#define MGM1_PID_SAMPLE_TIME  0.01f // seconds
#define MGM1_PID_LIM_MIN_INT -200.0f
#define MGM1_PID_LIM_MAX_INT  200.0f

int   fractionToInt(float FloatNum);

/*
int   arm0_initializeServoPwm (servoMotor *InstancePtr);
int   arm0_initializeServoXADC(servoMotor *InstancePtr);
void  arm0_configPID          (servoMotor *InstancePtr);
float arm0_getServoPos        (servoMotor *InstancePtr);
*/

int arm0_initializeDriveMotorPwm(ugv_pwm *InstancePtr);
int arm0_initializeMicroMetalPwm(ugv_pwm *InstancePtr, u8 motorId);
//
int  arm0_initializeDriveMotorQEI(ugv_qei *InstancePtr);
int  arm0_initializeMicroMetalQEI(ugv_qei *InstancePtr, u8 qeiId);
//
void arm0_calculateDriveMotorPid(float *driveMotor_setPoint, driveMotor *driveMotor, ugv_qei *driveMotorQeiInstance, ugv_pwm *driveMotorPwmInstance, PIDController *driveMotorPIDInstance);
//void arm0_calculateServoMotorPid(float *servoMotor_setPoint, servoMotor *servoMotor, PIDController *servoMotorPIDInstance);

#endif
