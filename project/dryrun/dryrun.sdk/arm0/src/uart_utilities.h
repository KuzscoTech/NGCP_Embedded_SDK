#ifndef UART_UTILITIES_H
#define UART_UTILITIES_H


#include "xuartlite.h"
#include "xscugic.h"
#include "xil_printf.h"
#include "PmodGPS.h"

// UART SETTINGS
#define TEST_BUFFER_SIZE		100
#define N_UARTS                 3

// GPS SETTINGS
#define LAT_LENGTH                14
#define LONG_LENGTH               15
#define NUMSAT_LENGTH             3
#define ALT_LENGTH                10



int UartLiteInit(XUartLite *UartLiteInstPtr, u16 UartLiteDeviceId);

int UartLiteSetupIntrSystem(XScuGic *IntcInstancePtr,
				            XUartLite *UartLiteInstancePtr,
				            u16 UartLiteIntrId);

void uart_gps_sendbuffer(u8 SendBuffer[3][100], PmodGPS *GpsInstancePtr,  int DATACOUNT[3]);

#endif
