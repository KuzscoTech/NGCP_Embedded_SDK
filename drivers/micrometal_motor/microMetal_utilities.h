#ifndef MICROMETAL_UTILITIES_H
#define MICROMETAL_UTILITIES_H

/****************************** CONFIG *****************************/
#define OCM_DRIVEMOTOR_EN 1


/************************** INCLUDE FILES **************************/
#include <stdlib.h>
#include "xparameters.h"
#include "motorEncoder.h"
#include "motorPwm.h"
#include "pid.h"

#ifdef OCM_DRIVEMOTOR_EN
#include "ocm.h"
#endif

#define MICROMETAL_FORWARD TRUE
#define MICROMETAL_REVERSE FALSE

/***************** MICROMETAL SHARED DEFINITIONS ******************/
#define MGM_PWM_PERIOD             9995
#define MGM_PWM_MIN                 0
#define MGM_PWM_SCALE               39
#define MGM_GEAR_RATIO              1000
#define MGM_RESOLUTION              12

/******************** MICROMETAL 0 DEFINITIONS ********************/
#define MGM0_PWM_BASEADDR           XPAR_MOTORPWM_1_S00_AXI_BASEADDR
#define MGM0_QEI_BASEADDR           XPAR_MOTORENCODER_1_S00_AXI_BASEADDR

/******************** MICROMETAL 1 DEFINITIONS ********************/
#define MGM1_PWM_BASEADDR           XPAR_MOTORPWM_2_S00_AXI_BASEADDR
#define MGM1_QEI_BASEADDR           XPAR_MOTORENCODER_2_S00_AXI_BASEADDR

/******************** MICROMETAL 2 DEFINITIONS ********************/
#define MGM2_PWM_BASEADDR           XPAR_MOTORPWM_3_S00_AXI_BASEADDR
#define MGM2_QEI_BASEADDR           XPAR_MOTORENCODER_3_S00_AXI_BASEADDR

/******************** MICROMETAL 3 DEFINITIONS ********************/
#define MGM3_PWM_BASEADDR           XPAR_MOTORPWM_4_S00_AXI_BASEADDR
#define MGM3_QEI_BASEADDR           XPAR_MOTORENCODER_4_S00_AXI_BASEADDR

/****************** MICROMETAL 0 PID PARAMETERS *******************/
#define MGM0_PID_KP           0.4f
#define MGM0_PID_KI           0.2f
#define MGM0_PID_KD           0.01f
#define MGM0_PID_TAU          0.02f
#define MGM0_PID_LIM_MIN     -255.0f
#define MGM0_PID_LIM_MAX      255.0f
#define MGM0_PID_SAMPLE_TIME  0.01f // seconds
#define MGM0_PID_LIM_MIN_INT -200.0f
#define MGM0_PID_LIM_MAX_INT  200.0f

/****************** MICROMETAL 1 PID PARAMETERS *******************/
#define MGM1_PID_KP           0.4f
#define MGM1_PID_KI           0.2f
#define MGM1_PID_KD           0.25f
#define MGM1_PID_TAU          0.02f
#define MGM1_PID_LIM_MIN     -255.0f
#define MGM1_PID_LIM_MAX      255.0f
#define MGM1_PID_SAMPLE_TIME  0.01f // seconds
#define MGM1_PID_LIM_MIN_INT -200.0f
#define MGM1_PID_LIM_MAX_INT  200.0f

/****************** MICROMETAL 2 PID PARAMETERS *******************/
#define MGM2_PID_KP           0.4f
#define MGM2_PID_KI           0.2f
#define MGM2_PID_KD           0.25f
#define MGM2_PID_TAU          0.02f
#define MGM2_PID_LIM_MIN     -255.0f
#define MGM2_PID_LIM_MAX      255.0f
#define MGM2_PID_SAMPLE_TIME  0.01f // seconds
#define MGM2_PID_LIM_MIN_INT -200.0f
#define MGM2_PID_LIM_MAX_INT  200.0f

/****************** MICROMETAL 3 PID PARAMETERS *******************/
#define MGM3_PID_KP           0.4f
#define MGM3_PID_KI           0.2f
#define MGM3_PID_KD           0.25f
#define MGM3_PID_TAU          0.02f
#define MGM3_PID_LIM_MIN     -255.0f
#define MGM3_PID_LIM_MAX      255.0f
#define MGM3_PID_SAMPLE_TIME  0.01f // seconds
#define MGM3_PID_LIM_MIN_INT -200.0f
#define MGM3_PID_LIM_MAX_INT  200.0f

/*********************** MICROMETAL STRUCT ************************/
typedef struct{
	int           currentPos;
	_Bool         currentDir;
	int           currentRpm;
	//
	_Bool         setDir;
	int           setPos;
	//
	ugv_qei       *qei;
	ugv_pwm       *pwm;
	PIDController *pid;
} ugv_microMetalMotor;

/*********************** INIT FUNCTIONS **************************/
/**
 * @brief Function to initialize a ugv_microMetalMotor's PWM, QEI, and PID instances.
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param PwmInstancePtr is a pointer to a PIDController instance.
 * @param QeiInstancePtr is a pointer to a ugv_qei instance.
 * @param id can be 0-3. Indicates which micrometal motor is being initialized.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
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

/*********************** UTILITY FUNCTIONS **************************/
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
int microMetal_setPidOutput(ugv_microMetalMotor *InstancePtr);

/**
 * @brief Function to manually set the duty cycle and direction of a ugv_microMetalMotor
 *        instance. Also updates currentPos, currentRpm, and currentDir values.
 *
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 * @param duty is the desired duty cycle from 0-255.
 * @param dir is the desired direction to set.
 */
void microMetal_manualSetDutyDir(ugv_microMetalMotor *InstancePtr, u8 duty, _Bool dir);


/************************** PRINT FUNCTIONS ******************************/
/**
 * @brief Function to print mode and position of a ugv_microMetalMotor instance.
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void microMetal_printStatus(ugv_microMetalMotor *InstancePtr);

/**
 * @brief Function to print the actual and expected duty cycle of the pwm object of a
 *        ugv_driveMotor instance.
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void microMetal_printDuty(ugv_microMetalMotor *InstancePtr);

/**
 * @brief Function to print the PID stats of a ugv_microMetalMotor instance.
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void microMetal_printPid(ugv_microMetalMotor *InstancePtr);


/*************************** OCM FUNCTIONS *******************************/
#ifdef OCM_DRIVEMOTOR_EN
/**
 * @brief Function to load micrometal current RPM, dir, and pos to OCM. Also
 *        reads setpoint from OCM and sets it in the struct. Targets addresses
 *        specified in ocm.h
 * @param InstancePtr is a pointer to a ugv_microMetalMotor instance.
 */
void ocm_updateMicroMetal(ugv_microMetalMotor *InstancePtr0, ugv_microMetalMotor *InstancePtr1,
		                  ugv_microMetalMotor *InstancePtr2, ugv_microMetalMotor *InstancePtr3);
#endif

#endif
