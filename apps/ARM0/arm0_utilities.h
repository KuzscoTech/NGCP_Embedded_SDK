#ifndef ARM0_UTILITIES_H
#define ARM0_UTILITIES_H

#include "motorEncoder.h"
#include "motorPWM.h"
#include "pid.h"
#include "xparameters.h"
//#include "arm0.h"

/* Drive Motor Struct */
typedef struct{
    float pid_setPoint;
    _Bool setDir;
    _Bool currentDir;
    float currentRpm;
    float rpm;
} driveMotor;

/* MOTORS */
#define MOTOR_FORWARD  TRUE
#define MOTOR_REVERSE  FALSE
#define DRIVE_MOTOR_ID 0
#define MICROMETAL_ID  1

/* DRIVE MOTOR */
#define DRIVEMOTOR_PWM_BASEADDR     XPAR_MOTORPWM_0_S00_AXI_BASEADDR
#define DRIVEMOTOR_PWM_PERIOD       9995
#define DRIVEMOTOR_PWM_MIN          5500
#define DRIVEMOTOR_PWM_SCALE        18
//
#define DRIVEMOTOR_QEI_BASEADDR     XPAR_MOTORENCODER_0_S00_AXI_BASEADDR

/* MICROMETAL MOTORS */
#define MGM0_PWM_BASEADDR           XPAR_MOTORPWM_1_S00_AXI_BASEADDR
#define MGM0_PWM_PERIOD             9995
#define MGM0_PWM_MIN                0
#define MGM0_PWM_SCALE              39
#define MGM0_QEI_BASEADDR           XPAR_MOTORENCODER_1_S00_AXI_BASEADDR
#define MGM0_GEAR_RATIO             1000
#define MGM0_RESOLUTION             12

#define MGM1_PWM_BASEADDR           XPAR_MOTORPWM_2_S00_AXI_BASEADDR
#define MGM1_PWM_PERIOD             9995
#define MGM1_PWM_MIN                0
#define MGM1_PWM_SCALE              39
#define MGM1_QEI_BASEADDR           XPAR_MOTORENCODER_2_S00_AXI_BASEADDR
#define MGM1_GEAR_RATIO             1000
#define MGM1_RESOLUTION             12

/* PID CONFIG */
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


int arm0_initializeDriveMotorPwm(ugv_pwm *InstancePtr);
int arm0_initializeMicroMetalPwm(ugv_pwm *InstancePtr, u8 motorId);
//
int  arm0_initializeDriveMotorQEI(ugv_qei *InstancePtr);
int  arm0_initializeMicroMetalQEI(ugv_qei *InstancePtr, u8 qeiId);
void arm0_utilities_CalculatePid(float *driveMotor_setPoint, driveMotor *driveMotor, ugv_qei *driveMotorQeiInstance, ugv_pwm *driveMotorPwmInstance, PIDController *driveMotorPIDInstance);
#endif
