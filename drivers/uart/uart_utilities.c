#include "uart_utilities.h"

/**
 * @brief Function to initialize a UART instance.
 *
 * @param UartLiteInstPtr is a pointer to an XUartLite instance to initialize.
 * @param UartLiteDeviceId is the device ID of the UART to initialize.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int uart_Initialize(XUartLite *UartLiteInstPtr, u16 UartLiteDeviceId)
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
int uart_setupIntrSystem(XScuGic *IntcInstancePtr,
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
		xil_printf("Buffer [%d] = %c   |   %x\r\n", i, buffer[i], buffer[i]);
	}
	xil_printf("\r\n");
}

/**
 * @brief Function to parse UART0 data for drive motor inputs
 * @param InstancePtr
 * @return
 */
int uart_parseDriveMotor(unsigned char RecvBuffer [UART_BUFFER_SIZE], uart0Data *dataPtr)
{
	u8    dmDirIndex;
	u8    dmRpmIndex;
	_Bool dmValid = FALSE;

	u8 tempDir;
	u8 tempRpm;

	// parse for "dm"
	for(int i=0; i<UART0_RECEIVE_SIZE; i++) {
		if(RecvBuffer[i] == 0x44) {
			if(RecvBuffer[i+1] == 0x4D) {
				dmDirIndex = i+2;
				dmRpmIndex = i+4;
				if(dmRpmIndex+1 < UART0_RECEIVE_SIZE)
					dmValid = TRUE;
			}
		}
	}
	if(!dmValid) {
		printf("DM not found\r\n\n");
		return XST_FAILURE;
	}

	// check that directional input is valid
	// capture directional and rpm input
	if(dmValid)
	{
		if((RecvBuffer[dmDirIndex] == 0x44) && (RecvBuffer[dmRpmIndex] == 0x52)) {
			if(RecvBuffer[dmDirIndex+1] == 1 || RecvBuffer[dmDirIndex+1] == 0)
				tempDir = RecvBuffer[dmDirIndex+1];
			else
				dmValid = FALSE;
			tempRpm = RecvBuffer[dmRpmIndex+1];
		}
		else
			dmValid = FALSE;
	}
	if(!dmValid) {
		printf("D and R not found\r\n\n");
		return XST_FAILURE;
	}

	// return directional and rpm input as a negative or positive float if valid
	if(dmValid)
	{
		dataPtr->rx_dm_dir      = tempDir;
		dataPtr->rx_dm_setpoint = tempRpm;
		return XST_SUCCESS;
	}
	else return XST_FAILURE;
}

/**
 * @brief Function to write UART0 drive motor and servo motor setpoint
 *        data to OCM addresses specified in ocm.h
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_data0ToOcm(uart0Data *dataPtr)
{
	volatile u32 *dm_dirPtr = (u32 *) (SM_DM_BASEADDR + SM_DM_SETDIR_OFFSET);
	volatile u32 *dm_rpmPtr = (u32 *) (SM_DM_BASEADDR + SM_DM_SETPOINT_OFFSET);

	*dm_rpmPtr = (u16) dataPtr->rx_dm_setpoint;
	Xil_DCacheFlushRange((u32)dm_rpmPtr, 1);

	*dm_dirPtr = (u8) dataPtr->rx_dm_dir;
	Xil_DCacheFlushRange((u32)dm_dirPtr, 1);
}

/**
 * @brief Function to read UART0 drive motor and servo motor setpoint data
 *        from OCM addresses specified in ocm.h to a uart0Data instance.
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_data0FromOcm(uart0Data *dataPtr)
{
	u32 *dm_dirPtr = (u32 *) (SM_DM_BASEADDR + SM_DM_DIR_OFFSET);
	u32 *dm_rpmPtr = (u32 *) (SM_DM_BASEADDR + SM_DM_RPM_OFFSET);

	// read current dir from ocm
	Xil_DCacheInvalidateRange((u32)dm_dirPtr, 1);
	dataPtr->tx_dm_dir = *dm_dirPtr;

	// read current rpm from ocm
	Xil_DCacheInvalidateRange((u32)dm_rpmPtr, 2);
	dataPtr->tx_dm_rpm = *dm_rpmPtr;
}

/**
 * @brief Function to load UART0 data to a UART TX buffer.
 * @param SendBuffer is a unsigned char array used as a TX buffer.
 * @param index is the index from which to start loading data into.
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_loadData0(unsigned char SendBuffer[UART_BUFFER_SIZE], uart0Data *dataPtr)
{
	const char *text;
	char        c;

	text = "DM_DIR";
	for(text; c=*text; text++) {
		SendBuffer[dataPtr->index] = c;
		dataPtr->index++;
	}

	SendBuffer[dataPtr->index] = dataPtr->tx_dm_dir;
	dataPtr->index++;

	text = "DM_RPM";
	for(text; c=*text; text++) {
		SendBuffer[dataPtr->index] = c;
		dataPtr->index++;
	}

	// high byte rpm
	SendBuffer[dataPtr->index] = (u8) (dataPtr->tx_dm_rpm) >> 8;
	dataPtr->index++;

	// low byte rpm
	SendBuffer[dataPtr->index] = (u8) (dataPtr->tx_dm_rpm) & 0x00FF;
	dataPtr->index++;
}

