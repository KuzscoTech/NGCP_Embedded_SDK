#include "uart_utilities.h"

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

/* This function initializes and configures an UartLite instance.
*
*  @param UartLiteInstPtr is a pointer to the UartLite instance.
*  @param UartLiteDeviceId is the device ID of the UartLite.
*
*  @return XST_SUCCESS if successful, else XST_FAILURE.
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


void uart_gps_sendbuffer(u8 SendBuffer[N_UARTS][TEST_BUFFER_SIZE], PmodGPS *GpsInstancePtr,  int DATACOUNT[N_UARTS])
{
    const char * text;
    char c;
    u8 gps_lock;
    //
    if(GpsInstancePtr->ping) {
        GPS_formatSentence(GpsInstancePtr);
        if (GPS_isFixed(GpsInstancePtr)) {
            gps_lock = 1;
        }
        else {
            gps_lock = 0;
        }
    }
    //
    text = "LOCK";
    for(text; c = *text; text++) {
        SendBuffer[1][DATACOUNT[1]] = c;
        DATACOUNT[1]++;
    }
    SendBuffer[1][DATACOUNT[1]] = gps_lock;
    DATACOUNT[1]++;
    //
    text = "LAT";
    for(text; c = *text; text++) {
        SendBuffer[1][DATACOUNT[1]] = c;
        DATACOUNT[1]++;
    }
    for(int i=0; i<LAT_LENGTH; i++) {
        SendBuffer[1][DATACOUNT[1]] = GpsInstancePtr->GGAdata.LAT[i];
        DATACOUNT[1]++;
    }
    //
    text = "LONG";
    for(text; c = *text; text++) {
        SendBuffer[1][DATACOUNT[1]] = c;
        DATACOUNT[1]++;
    }
    for(int i=0; i<LONG_LENGTH; i++) {
        SendBuffer[1][DATACOUNT[1]] = GpsInstancePtr->GGAdata.LONG[i];
        DATACOUNT[1]++;
    }
    //
    text = "NUMSAT";
    for(text; c = *text; text++) {
        SendBuffer[1][DATACOUNT[1]] = c;
        DATACOUNT[1]++;
    }
    for(int i=0; i<NUMSAT_LENGTH; i++) {
        SendBuffer[1][DATACOUNT[1]] = GpsInstancePtr->GGAdata.NUMSAT[i];
        DATACOUNT[1]++;
    }
    //
    text = "ALT";
    for(text; c = *text; text++) {
        SendBuffer[1][DATACOUNT[1]] = c;
        DATACOUNT[1]++;
    }
    for(int i=0; i<ALT_LENGTH; i++) {
        SendBuffer[1][DATACOUNT[1]] = GpsInstancePtr->GGAdata.ALT[i];
        DATACOUNT[1]++;
    }
}
