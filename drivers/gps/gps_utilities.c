#include "gps_utilities.h"


/**
 * @brief Function to initialize a PmodGPS instance and configure its interrupt.
 *
 * @param GpsInstancePtr is a pointer to the PmodGPS instance.
 * @param IntcInstancePtr is a pointer to the XScuGic instance that shall handle the interrupt.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int ugvGps_Initialize(PmodGPS *GpsInstancePtr, XScuGic *IntcInstancePtr)
{
	int Status;
	u16 Options;

	// enable the gps
	GPS_begin(GpsInstancePtr,
			  GPS_GPIO_BASEADDR,
			  GPS_UART_BASEADDR,
			  GPS_CLK_FREQ);

	// set gps update rate
	GPS_setUpdateRate(GpsInstancePtr, GPS_UPDATE_RATE);

	// connect gps interrupt to xscugic
	Status = XScuGic_Connect(IntcInstancePtr,
			                 GPS_INTERRUPT_ID,
							 (Xil_ExceptionHandler) XUartNs550_InterruptHandler,
							 &GpsInstancePtr->GPSUart);
	if(Status != XST_SUCCESS) return XST_FAILURE;

	// enable the gps interrupt for the xscugic
	XScuGic_Enable(IntcInstancePtr, GPS_INTERRUPT_ID);
	XUartNs550_SetHandler(&GpsInstancePtr->GPSUart, (void*) GPS_intHandler, GpsInstancePtr);

	//
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, IntcInstancePtr);

	// enable exceptions
	Xil_ExceptionEnable();
	Options = XUN_OPTION_DATA_INTR | XUN_OPTION_FIFOS_ENABLE;
	XUartNs550_SetOptions(&GpsInstancePtr->GPSUart, Options);

	return XST_SUCCESS;
}

