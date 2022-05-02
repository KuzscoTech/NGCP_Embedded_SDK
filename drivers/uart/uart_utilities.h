#ifndef UART_UTILITIES_H
#define UART_UTILITIES_H


#include "xuartlite.h"
#include "xscugic.h"
#include "xil_printf.h"

#define UART_DRIVEMOTOR_EN 1

#ifdef UART_DRIVEMOTOR_EN
#include "driveMotor_utilities.h"
#endif

#ifdef UART_SERVOMOTOR_EN
#include "servoMotor_utilities.h"
#endif

#ifdef UART_MICROMETAL_EN
#include "microMetal_utilities.h"
#endif

// UART BUFFER SIZE
#define UART_BUFFER_SIZE 25

// DRIVEMOTOR FRAME SIZE
#define DRIVEMOTOR_FRAME_SIZE 19
#define DRIVEMOTOR_CMD_SIZE   7

/**
 * @brief Function to initialize a UART instance.
 *
 * @param UartLiteInstPtr is a pointer to an XUartLite instance to initialize.
 * @param UartLiteDeviceId is the device ID of the UART to initialize.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int UartLiteInit(XUartLite *UartLiteInstPtr, u16 UartLiteDeviceId);

/**
 * @brief Function to connect an initialized UartLite interrupt to the XScuGic.
 *        It requires that the XScuGic already be configured and initialized.
 *
 *        Note that the UART interrupt handlers still need to be set outside of
 *        this function.
 *
 * @param IntcInstancePtr is a pointer to the XScuGic instance.
 * @param UartLiteInstancePtr is a pointer to the UartLite instance.
 * @param UartLiteIntrId is the ID of the interrupt to connect to the XScuGic.
 * @return
 */
int UartLiteSetupIntrSystem(XScuGic *IntcInstancePtr, XUartLite *UartLiteInstancePtr, u16 UartLiteIntrId);


void uart_printBuffer(u8 buffer[UART_BUFFER_SIZE]);


#ifdef UART_DRIVEMOTOR_EN
/**
 * @brief A function to load ugv_driveMotor current direction and rpm into a designated
 *        send buffer starting from the current index.
 *        -> DIR:
 *            - prefixed with "DM_DIR"
 *            - "F" or "R"
 *        -> RPM:
 *        	  - prefixed with "DM_RPM"
 *        	  - low byte
 *        	  - high byte
 *
 * @param InstancePtr is a pointer to a ugv_driveMotor instance.
 * @param sendBuffer is a unsigned char array used as a UART TX send buffer.
 * @param index is a pointer to an int indicating the index from which to start loading
 *        motor data.
 */
void UartLite_sendDriveMotorStats(ugv_driveMotor *InstancePtr, unsigned char sendBuffer [UART_BUFFER_SIZE], int index);
#endif

#endif
