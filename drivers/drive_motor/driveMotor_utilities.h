#ifndef DRIVEMOTOR_UTILITIES_H
#define DRIVEMOTOR_UTILITIES_H

/****************************** CONFIG *****************************/
#define OCM_DRIVEMOTOR_EN   1

/************************** INCLUDE FILES **************************/
#include <stdio.h>
#include "xparameters.h"
#include "motorEncoder.h"
#include "motorPWM.h"
#include "pid.h"

#ifdef OCM_DRIVEMOTOR_EN
#include "ocm.h"
#include "xil_cache.h"
#endif

/******************** DRIVE MOTOR DEFINITIONS *********************/
#define DRIVEMOTOR_FORWARD FALSE
#define DRIVEMOTOR_REVERSE TRUE

#define DRIVEMOTOR_PWM_BASEADDR     XPAR_MOTORPWM_0_S00_AXI_BASEADDR
#define DRIVEMOTOR_PWM_PERIOD       9995
#define DRIVEMOTOR_PWM_MIN          5500
#define DRIVEMOTOR_PWM_SCALE        17
//
#define DRIVEMOTOR_QEI_BASEADDR     XPAR_MOTORENCODER_0_S00_AXI_BASEADDR

/******************* DRIVE MOTOR PID PARAMETERS *******************/
#define DRIVEMOTOR_PID_KP           0.5f
#define DRIVEMOTOR_PID_KI           1.0f
#define DRIVEMOTOR_PID_KD           0.1f
#define DRIVEMOTOR_PID_TAU          0.02f
#define DRIVEMOTOR_PID_LIM_MIN      0.0f
#define DRIVEMOTOR_PID_LIM_MAX      255.0f
#define DRIVEMOTOR_PID_SAMPLE_TIME  0.01f // seconds
#define DRIVEMOTOR_PID_LIM_MIN_INT -500.0f
#define DRIVEMOTOR_PID_LIM_MAX_INT  500.0f

/*********************** Drive Motor struct ***********************/
typedef struct{
    _Bool         uartManualMode; // '1' for manual drive, '0' for PID
	int           uartSetPoint;   // setpoint from uart
	//  
	_Bool         currentDir;     // actual motor direction
	int           currentRpm;     // actual motor rpm
	//  
	ugv_qei       *qei;           // encoder instance
	ugv_pwm       *pwm;           // pwm instance
	PIDController *pid;           // pid instance
} ugv_driveMotor;


/*********************** INIT FUNCTIONS **************************//**
 * @brief Function to initialize a ugv_driveMotor instance's PWM, QEI, and PID instances.
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int driveMotor_Initialize(ugv_driveMotor *InstancePtr, ugv_pwm *PwmInstancePtr, ugv_qei *QeiInstancePtr, PIDController *PidInstancePtr);

/**
 * @brief Function to initialize PWM of a ugv_driveMotor instance to
 *        parameters specified in driveMotor_utilities.h.
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param PwmInstancePtr is a pointer to a ugv_pwm instance to be stored in the
 *        ugv_driveMotor instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int driveMotor_pwmInitialize(ugv_driveMotor *InstancePtr, ugv_pwm *PwmInstancePtr);

/**
 * @brief Function to initialize QEI of a ugv_driveMotor instance.
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param QeiInstancePtr is a pointer to a ugv_qei instance to be stored in the ugv_driveMotor instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int driveMotor_qeiInitialize(ugv_driveMotor *InstancePtr, ugv_qei *QeiInstancePtr);

/**
 * @brief Function to initialize PID of a ugv_driveMotor instance to parameters specified in
 *        driveMotor_utilities.h
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param PidInstancePtr is a pointer to a PID instance to be stored in the ugv_driveMotor instance.
 */
void driveMotor_pidInitialize(ugv_driveMotor *InstancePtr, PIDController *PidInstancePtr);


/*********************** UTILITY FUNCTIONS **************************/
/**
 * @brief Function to manually update the current RPM and direction of a ugv_driveMotor instance.
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void driveMotor_updateStatus(ugv_driveMotor *InstancePtr);

/**
 * @brief Function to update and set the PID output of a ugv_driveMotor instance.
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param driveMotor_setPoint is a pointer to a float representing the desired RPM
 *        of the driveMotor. Negative values represent reverse drive.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
void driveMotor_setPidOutput(ugv_driveMotor *InstancePtr, float driveMotor_setPoint);

/**
 * @brief Function to manually set duty cycle and direction of a ugv_driveMotor instance.
 *        This function also updates the current direction and rpm of the instance.
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param duty is a u8 representing duty cycle from 0-255.
 */
void driveMotor_manualSetDutyDir(ugv_driveMotor *InstancePtr, u8 duty, _Bool dir);

/************************** PRINT FUNCTIONS ******************************/
/**
 * @brief Function to print drive motor current rpm and direction.
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void driveMotor_printStatus(ugv_driveMotor *InstancePtr);

/**
 * @brief Function to print the actual and expected duty cycle of the pwm object of a
 *        ugv_driveMotor instance.
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void driveMotor_printDuty(ugv_driveMotor *InstancePtr);


/*************************** OCM Functions *******************************/
#ifdef OCM_DRIVEMOTOR_EN
/**
 * @brief Function to load drive motor current RPM and direction to OCM. Also
 *        reads setpoint from OCM and sets it in the struct. Targets addresses
 *        specified in ocm.h
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 */
void ocm_updateDriveMotor(ugv_driveMotor *InstancePtr);
#endif

#endif
