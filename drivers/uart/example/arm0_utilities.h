#ifndef ARM0_UTILITIES_H
#define ARM0_UTILITIES_H

#include "motorEncoder.h"
#include "motorPWM.h"
#include "pid.h"
#include "xparameters.h"
#include "math.h"
#include "uart_utilities.h"
#include "driveMotor_utilities.h"
#include "xtime_l.h"

#define UART0_FRAME_LENGTH 10


int timeOutTimer(XTime tStart, int countUs);

/**
 * @brief Function to parse UART0 data for drive motor inputs
 * 			-> "D" followed by "M"
 * 				-> "D"
 * 					-> "F" or "R"
 * 						-> set dir
 * 				-> "R"
 * 					-> high byte
 * 					-> low byte
 * 						-> set rpm
 * @param InstancePtr
 * @return
 */
int arm0_parseUartDriveMotor(unsigned char RecvBuffer[UART_BUFFER_SIZE], ugv_driveMotor *driveMotorInstancePtr);

#endif
