#ifndef MICROMETAL_UTILITIES_H
#define MICROMETAL_UTILITIES_H

/************************** INCLUDE FILES **************************/
#include <stdio.h>
#include "xparameters.h"
#include "motorEncoder.h"
#include "motorPwm.h"
#include "pid.h"

/****************************** CONFIG *****************************/
#define OCM_DRIVEMOTOR_EN   1
#ifdef OCM_DRIVEMOTOR_EN
#include "ocm.h"
#endif

#define MICROMETAL_FORWARD TRUE
#define MICROMETAL_REVERSE FALSE

/* MICROMETAL MOTORS SHARED DEFINITIONS */
#define MGM_PWM_PERIOD             9995
#define MGM_PWM_MIN                 0
#define MGM_PWM_SCALE               39
#define MGM_GEAR_RATIO              1000
#define MGM_RESOLUTION              12

/* MICROMETAL MOTOR 0 DEFINITIONS */
#define MGM0_PWM_BASEADDR           XPAR_MOTORPWM_1_S00_AXI_BASEADDR
#define MGM0_QEI_BASEADDR           XPAR_MOTORENCODER_1_S00_AXI_BASEADDR

/* MICROMETAL MOTOR 1 DEFINITIONS */
#define MGM1_PWM_BASEADDR           XPAR_MOTORPWM_2_S00_AXI_BASEADDR
#define MGM1_QEI_BASEADDR           XPAR_MOTORENCODER_2_S00_AXI_BASEADDR

/* MGM0 PID PARAMETERS */
#define MGM0_PID_KP           0.4f
#define MGM0_PID_KI           1.2f
#define MGM0_PID_KD           0.25f
#define MGM0_PID_TAU          0.02f
#define MGM0_PID_LIM_MIN     -255.0f
#define MGM0_PID_LIM_MAX      255.0f
#define MGM0_PID_SAMPLE_TIME  0.01f // seconds
#define MGM0_PID_LIM_MIN_INT -200.0f
#define MGM0_PID_LIM_MAX_INT  200.0f

/* MGM1 PID PARAMETERS */
#define MGM1_PID_KP           0.4f
#define MGM1_PID_KI           1.2f
#define MGM1_PID_KD           0.25f
#define MGM1_PID_TAU          0.02f
#define MGM1_PID_LIM_MIN     -255.0f
#define MGM1_PID_LIM_MAX      255.0f
#define MGM1_PID_SAMPLE_TIME  0.01f // seconds
#define MGM1_PID_LIM_MIN_INT -200.0f
#define MGM1_PID_LIM_MAX_INT  200.0f

/* Micrometal Motor Struct */
typedef struct{
	int           currentPos;
	_Bool         currentDir;
	int           currentRpm;
	//
	int           setPos;
	//
	ugv_qei       *qei;
	ugv_pwm       *pwm;
	PIDController *pid;
} ugv_microMetalMotor;

/**
 * @brief Function to initialize a ugv_microMetalMotor's PWM, QEI, and PID instances.
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param PwmInstancePtr is a pointer to a PIDController instance.
 * @param QeiInstancePtr is a pointer to a ugv_qei instance.
 * @param id can be 0-3. Indicates which micrometal motor is being initialized.
 * @return
 */
int microMetal_Initialize(ugv_microMetalMotor *InstancePtr, ugv_pwm *PwmInstancePtr, ugv_qei *QeiInstancePtr, PIDController *PidInstancePtr, u8 id);

/**
 * @brief Function to initialize a ugv_microMetalMotor's PWM instance to parameters specified in
 *        microMetal_utilities.h
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param PwmInstancePtr is a pointer to a ugv_pwm instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int microMetal_pwmInitialize(ugv_microMetalMotor *InstancePtr, ugv_pwm *PwmInstancePtr, u8 id);

/**
 * @brief Function to initialize a ugv_microMetalMotor's QEI instance to parameters specified in
 *        microMetal_utilities.h
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param QeiInstancePtr is a pointer to a ugv_qei instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int microMetal_qeiInitialize(ugv_microMetalMotor *InstancePtr, ugv_qei *QeiInstancePtr, u8 id);

/**
 * @brief Function to initialize a ugv_microMetalMotor's PWM instance to parameters specified in
 *        microMetal_utilities.h
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param PidInstancePtr is a pointer to a PIDController instance.
 */
int microMetal_pidInitialize(ugv_microMetalMotor *InstancePtr, PIDController *PidInstancePtr, u8 id);

/**
 * @brief Function to update a ugv_microMetalMotor instance's rpm, direction, and position
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void microMetal_updateStats(ugv_microMetalMotor *InstancePtr);

/**
 * @brief Function to update and set the PID output of a ugv_microMetalMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param setPos is a pointer to an int (0-359) representing desired absolute
 *        position of the micrometal.
 * @param setDir is a pointer to a bool representing the direction the motor should take
 *        to get to the desired position.
 *
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int microMetal_setPidOutput(ugv_microMetalMotor *InstancePtr, int *setPos);

/**
 * @brief Function to manually set the duty cycle and direction of a ugv_microMetalMotor
 *        instance. Also updates currentPos, currentRpm, and currentDir values.
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param duty is the desired duty cycle from 0-255.
 * @param dir is the desired direction to set.
 */
void microMetal_manualSetDutyDir(ugv_microMetalMotor *InstancePtr, u8 duty, _Bool dir);

/**
 * @brief Function to print mode and position of a ugv_microMetalMotor instance.
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void microMetal_printStatus(ugv_microMetalMotor *InstancePtr);

/*************************** OCM Functions *******************************/
#ifdef OCM_DRIVEMOTOR_EN
/**
 * @brief Function to load micrometal current RPM, dir, and pos to OCM. Also
 *        reads setpoint from OCM and sets it in the struct. Targets addresses
 *        specified in ocm.h
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void ocm_updateMicroMetal(ugv_microMetalMotor *InstancePtr0, ugv_microMetalMotor *InstancePtr1);
#endif

#endif
