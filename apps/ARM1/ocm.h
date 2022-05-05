#ifndef OCM_H
#define OCM_H

#include "xil_cache.h"
#include "xil_types.h"

// OCM Flag Addresses
#define SM_BASEADDR                 0x3000000
#define SM_FLAG_OFFSET              0x1

// OCM Drive Motor Addresses
#define SM_DM_BASEADDR              0x3000020
#define SM_DM_SETMANUAL_OFFSET      0         // drive motor manual enable; 1 byte
#define SM_DM_SETPOINT_OFFSET       4         // drive motor setpoint;      1 byte
#define SM_DM_SETDIR_OFFSET         8         // drive motor set dir;       1 byte
#define SM_DM_RPM_OFFSET            12        // drive motor current rpm;   2 bytes
#define SM_DM_DIR_OFFSET            16        // drive motor direction;     1 byte

// OCM Servo Motor Addresses
#define SM_SERVO_BASEADDR           0x3000040
#define SM_SERVO_SETMANUAL_OFFSET   0        // servo motor manual enable;  1 byte
#define SM_SERVO_SETPOINT_OFFSET    4        // servo motor setpoint;       1 byte
#define SM_SERVO_CURRENT_OFFSET     8        // servo motor current pos;    1 byte


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
