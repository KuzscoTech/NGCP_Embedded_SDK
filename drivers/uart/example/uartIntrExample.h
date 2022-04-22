#ifndef UARTINTR_H
#define UARTINTR_H

#include "xparameters.h"
#include "xil_exception.h"
#include <stdio.h>
#include "xscugic.h"
#include "xil_printf.h"
#include "sleep.h"
//
#include "uartUtilities.h"
#include "system.h"
#include "HCSR04Bz.h"
#include "PmodGPS.h"
#include "gpsFunctions.h"
#include "uartIntrExample.h"

#define TESTAPP_GEN


// SCUGIC
#define INTC_DEVICE_ID_0		  XPAR_SCUGIC_0_DEVICE_ID

// UART 0
#define UARTLITE_DEVICE_ID_0	  XPAR_UARTLITE_0_DEVICE_ID
#define UARTLITE_IRPT_INTR_0	  XPAR_FABRIC_UARTLITE_0_VEC_ID

// UART1
#define UARTLITE_DEVICE_ID_1	  XPAR_UARTLITE_1_DEVICE_ID
#define UARTLITE_IRPT_INTR_1      XPAR_FABRIC_UARTLITE_1_VEC_ID

// UART 2
#define UARTLITE_DEVICE_ID_2	  XPAR_UARTLITE_2_DEVICE_ID
#define UARTLITE_IRPT_INTR_2      XPAR_FABRIC_UARTLITE_2_VEC_ID

// PMOD GPS
#define PMOD_GPS_PERIPH_CLK       100000000 // Hz
#define PMOD_GPS_GPIO_ADDR        XPAR_PMODGPS_0_AXI_LITE_GPIO_BASEADDR
#define PMOD_GPS_UART_ADDR        XPAR_PMODGPS_0_AXI_LITE_UART_BASEADDR
#define PMOD_GPS_IRPT_ID          XPAR_FABRIC_PMODGPS_0_GPS_UART_INTERRUPT_INTR
//
#define LAT_LENGTH                14
#define LONG_LENGTH               15
#define NUMSAT_LENGTH             3
#define ALT_LENGTH                10

// HCSR04 0
#define US_BASEADDR_0             XPAR_HCSR04BZ_0_DEVICE_ID
#define US_BASEADDR_1             XPAR_HCSR04BZ_1_DEVICE_ID

/*
 * The following constant controls the length of the buffers to be sent
 * and received with the UartLite device.
 */
#define TEST_BUFFER_SIZE		100
#define N_UARTS                 3
#define N_US                    2

/**************************** Type Definitions *******************************/

#define INTC		    XScuGic
#define INTC_HANDLER	XScuGic_InterruptHandler // type of interrupt handler we're using

/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/

int UartLiteIntrExample(XScuGic *IntcInstancePtr,
						XUartLite_ngcp *UartLiteInstancePtr0,
						XUartLite_ngcp *UartLiteInstancePtr1,
						XUartLite_ngcp *UartLiteInstancePtr2,
			            u16 UartLiteIntrId_0,
						u16 UartLiteIntrId_1,
						u16 UartLiteIntrId_2);

int SetupIntrSystem(XScuGic *IntcInstancePtr);

void UartLiteTimeOutTimer(XUartLite_ngcp *UartLiteInstancePtr, int TimeOutThreshold);
//
void UartLiteRecvHandler0(void *CallBackRef, unsigned int EventData);
void UartLiteSendHandler0(void *CallBackRef, unsigned int EventData);
//
void UartLiteRecvHandler1(void *CallBackRef, unsigned int EventData);
void UartLiteSendHandler1(void *CallBackRef, unsigned int EventData);
//
void UartLiteRecvHandler2(void *CallBackRef, unsigned int EventData);
void UartLiteSendHandler2(void *CallBackRef, unsigned int EventData);
//
void printBuffer(u8 buffer[], int datacount, u8 bufferId);

#endif
