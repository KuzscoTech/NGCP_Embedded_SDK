#ifndef OCM_H
#define OCM_H

#include "xil_cache.h"
#include "xil_types.h"



#ifdef OCM_SERVOMOTOR_EN
#include "servoMotor_utilities.h"
#endif

#ifdef OCM_MICROMETAL_EN
#include "microMetal_utilities.h"
#endif

// OCM Flag Addresses
#define SM_BASEADDR            0x3000000
#define SM_FLAG_OFFSET         0x1

// OCM Drive Motor Addresses
#define SM_DM_BASEADDR         0x3000010
#define SM_DM_SETPOINT_OFFSET  0         // drive motor setpoint;    1 byte
#define SM_DM_SETDIR_OFFSET    1         // drive motor set dir;     1 byte
#define SM_DM_RPM_OFFSET       2         // drive motor current rpm; 2 bytes
#define SM_DM_DIR_OFFSET       4         // drive motor direction;   1 byte


/**
 * @brief Function to get the value of the shared memory flag from the address
 *        specified in ocm.h
 * @return the value of the memory flag as a u8.
 */
u8 ocm_getMemFlag();

/**
 * @brief Function to set the value of the shared memory flag at the address
 *        specified in ocm.h to 1.
 */
void ocm_setMemFlag();

/**
 * @brief Function to set the value of the shared memory flag at the address
 *        specified in ocm.h to 0.
 */
void ocm_clearMemFlag();

/**
 * @brief Function to initialize OCM flag to 0 and all values to 0.
 */
void ocm_initialize();


#endif
