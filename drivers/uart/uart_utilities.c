#include "uart_utilities.h"

/**
 * @brief Function to initialize a UART instance.
 *
 * @param UartLiteInstPtr is a pointer to an XUartLite instance to initialize.
 * @param UartLiteDeviceId is the device ID of the UART to initialize.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int UartLiteInit(XUartLite *UartLiteInstPtr, u16 UartLiteDeviceId)
{
    int Status;
    Status = XUartLite_Initialize(UartLiteInstPtr, UartLiteDeviceId);
	if (Status != XST_SUCCESS) {
        xil_printf("UART initialization failed! Device ID: %x\r\n", UartLiteDeviceId);
		return XST_FAILURE;
	}

	Status = XUartLite_SelfTest(UartLiteInstPtr);
	if (Status != XST_SUCCESS) {
        xil_printf("UART self test failed! Device ID: %d\r\n", UartLiteDeviceId);
		return XST_FAILURE;
	}

    return XST_SUCCESS;
}

/* This function connects the UartLite interrupt to an XScuGic object.
*  It requires the XScuGic to already be configured and initialized.
*
*  The UART interrupt handlers and device interrupt STILL NEED to
*  be set outside of this function before proper operation!!!!
*
*  @param IntcInstancePtr is a pointer to the XScuGic instance.
*  @param UartLiteInstPtr is a pointer to the UartLite instance.
*  @param UartLiteIntrId is the ID of the interrupt to connect to the XScuGic.
*
*  @return XST_SUCCESS if successful, else the error from XScuGic_Connect.
*/
int UartLiteSetupIntrSystem(XScuGic *IntcInstancePtr,
				            XUartLite *UartLiteInstPtr,
				            u16 UartLiteIntrId)
{
	int Status;

    // Set UART interrupt priority
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, UartLiteIntrId,
					0xA0, 0x3);

    // Connect interrupts
	Status = XScuGic_Connect(IntcInstancePtr, UartLiteIntrId,
				 (Xil_ExceptionHandler)XUartLite_InterruptHandler,
				 UartLiteInstPtr);
	if (Status != XST_SUCCESS) {
        xil_printf("UART Interrupt xscugic connection failed!\r\n");
		return Status;
	}

    // Enable the UART interrupt
	XScuGic_Enable(IntcInstancePtr, UartLiteIntrId);

	return XST_SUCCESS;
}

void uart_printBuffer(u8 buffer[UART_BUFFER_SIZE])
{
	for(int i=0; i<UART_BUFFER_SIZE; i++) {
		xil_printf("Buffer [%d] = %c\r\n", i, buffer[i]);
	}
}

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
void UartLite_sendDriveMotorStats(ugv_driveMotor *InstancePtr, unsigned char sendBuffer [UART_BUFFER_SIZE], int index)
{
	const char   *text;
	char          c;
	unsigned char temp_dir;
	u16           temp_rpm;
	unsigned char low_rpm, high_rpm;

	// get current dir
	if(InstancePtr->currentDir == DRIVEMOTOR_FORWARD)
		temp_dir = (unsigned char) "F";
	else
		temp_dir = (unsigned char) "R";

	// get current rpm
	temp_rpm = (u16) InstancePtr->currentRpm;

	// mask off low and high bytes of rpm
	low_rpm  = (temp_rpm & 0xFF00) >> 8;
	high_rpm = temp_rpm >> 8;

	// load dir
	text = "DM_DIR";
	for(text; c = *text; text++) {
		sendBuffer[index] = c;
		index++;
	}
	sendBuffer[index] = 0x0A;
	index++;

	sendBuffer[index] = temp_dir;
	index++;

	sendBuffer[index] = 0x0A;
	index++;

	// load rpm
	text = "DM_RPM";
	for(text; c = *text; text++) {
		sendBuffer[index] = c;
		index++;
	}
	sendBuffer[index] = 0x0A;
	index++;
	sendBuffer[index] = low_rpm;
	index++;
	sendBuffer[index] = high_rpm;
	index++;

	sendBuffer[index] = 0x0A;
	index++;
}
#endif

