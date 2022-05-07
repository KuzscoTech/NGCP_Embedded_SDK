#ifndef UART_UTILITIES_H
#define UART_UTILITIES_H

/****************************** CONFIG *****************************/
#define UART_DRIVEMOTOR_EN       1

// UART BUFFER SIZE
#define UART_BUFFER_SIZE         25
static int STUPID_BITCH_FUCK_CUCK_BASTARD[3] = {10, 10, 10};


/************************** INCLUDE FILES **************************/
#include <stdio.h>
#include "xuartlite.h"
#include "xscugic.h"
#include "xil_printf.h"
#include "ocm.h"

/************************ UART0 Data struct ***********************/
typedef struct{
	int       index; // sendbuffer current index; number of bytes to send

	// DRIVE MOTOR
    u8        rx_dm_manualMode; // manual mode set value
	u8        rx_dm_dir;        // set dir
	u8        rx_dm_setpoint;   // setpoint, rpm or duty
	u8        tx_dm_dir;        // motor current dir
	u16       tx_dm_rpm;        // motor current rpm

	// SERVO MOTOR
    u8        rx_servo_manualMode; // manual mode set value
	u16       rx_servo_setpoint;   // motor setpoint, duty
	u16       tx_servo_pos;        // motor current pos
} uart0Data;

typedef struct{
	int       index; // sendbuffer current index; number of bytes to send

    u8        rx_mm_manualMode [4]; // manual mode set value
	u8        rx_mm_setpoint   [4]; // set pos
	u8        rx_mm_setDir     [4]; // manual set dir
	u16       tx_mm_pos        [4]; // motor current pos
} uart1Data;


/************************* Function Definitions *****************************/
/**
 * @brief Function to initialize a UART instance.
 *
 * @param UartLiteInstPtr is a pointer to an XUartLite instance to initialize.
 * @param UartLiteDeviceId is the device ID of the UART to initialize.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int uart_Initialize(XUartLite *UartLiteInstPtr, u16 UartLiteDeviceId);

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
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int uart_setupIntrSystem(XScuGic *IntcInstancePtr, XUartLite *UartLiteInstancePtr, u16 UartLiteIntrId);


/**
 * @brief Function to print the contents of a u8 array in ASCII and hex.
 * @param buffer is a u8 array to print.
 */
void uart_printBuffer(u8 buffer[UART_BUFFER_SIZE]);


/**
 * @brief Function to parse a UART receive buffer for drive motor direction
 *        and setpoint data and write into a uart0Data instance.
 *        
 *        Valid commands: 
 *          "DMD<1>R<2>"
 *              -> 1: indicates direction; 0 for reverse, 1 for forwards
 *              -> 2: if manual mode; indicates duty cycle 0-255 duty cycle
 *                    if pid mode;    indicates setpoint 0-255 RPM
 *          
 *         "DM<1>":
 *              -> 1: indicates mode select; 
 *                  - "M" for manual mode
 *                  - "P" for PID mode
 * 
 * @param RecvBuffer is an unsigned char array that serves as a UART receive buffer.
 * @param dataPtr is a pointer to a uart0Data instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int uart_parseDriveMotor(unsigned char RecvBuffer[UART_BUFFER_SIZE], uart0Data *dataPtr);

/**
 * @brief Function to parse a UART receive buffer for servo motor setpoint data
 *        and write into a uart0Data instance.
 *        
 *        Valid commands: 
 *          Set Setpoint | "SS<1>" 
 *              -> 1: indicates desired angle 0-180
 *          
 *          Set Mode     | "SM<1>":
 *              -> 1: indicates mode select; 
 *                  - "M" for manual mode
 *                  - "P" for PID mode
 *  
 * @param RecvBuffer is an unsigned char array that serves as a UART receive buffer.
 * @param dataPtr is a pointer to a uart0Data instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int uart_parseServoMotor(unsigned char RecvBuffer [UART_BUFFER_SIZE], uart0Data *dataPtr);

/**
 * @brief Function to parse UART data for micrometal setpoints.
 *        MG<low><high> <low><high> <low><high> <low><high>
 * @param RecvBuffer
 * @param dataPtr
 * @return
 */
int uart_parseMicroMetal(unsigned char RecvBuffer[UART_BUFFER_SIZE], uart1Data *dataPtr);

/**
 * @brief Function to write UART0 drive motor and servo motor setpoint
 *        data to OCM addresses specified in ocm.h
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_data0ToOcm(uart0Data *dataPtr);

/**
 * @brief Function to read UART0 drive motor and servo motor setpoint data
 *        from OCM addresses specified in ocm.h to a uart0Data instance.
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_data0FromOcm(uart0Data *dataPtr);


/**
 * @brief Function to read UART0 data to a UART TX buffer.
 * @param SendBuffer is a unsigned char array used as a TX buffer.
 * @param index is the index from which to start loading data into.
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_loadData0(unsigned char SendBuffer[UART_BUFFER_SIZE], uart0Data *dataPtr);

/**
 * @brief Function to write UART1 micrometal gear drive motor setpoint
 *        data to OCM addresses specified in ocm.h
 * @param dataPtr is a pointer to a uart1Data instance.
 */
void uart_data1ToOcm(uart1Data *dataPtr);

/**
 * @brief Function to read UART1 drive motor setpoint data
 *        from OCM addresses specified in ocm.h to a uart0Data instance.
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_data1FromOcm(uart1Data *dataPtr);

/**
 * @brief Function to read UART1 data to a UART TX buffer.
 * @param SendBuffer is a unsigned char array used as a TX buffer.
 * @param index is the index from which to start loading data into.
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_loadData1(unsigned char SendBuffer[UART_BUFFER_SIZE], uart1Data *dataPtr);

#endif
