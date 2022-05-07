#ifndef ARM0_H
#define ARM0_H

#include <stdio.h>
#include "system.h"
#include "uart_utilities.h"
#include "ocm.h"


#define UART_DEVICE_ID_0        XPAR_AXI_UARTLITE_0_DEVICE_ID
#define UART_DEVICE_ID_1        XPAR_AXI_UARTLITE_1_DEVICE_ID
#define UART_IRPT_INTR_0        XPAR_FABRIC_AXI_UARTLITE_0_INTERRUPT_INTR
#define UART_IRPT_INTR_1        XPAR_FABRIC_AXI_UARTLITE_1_INTERRUPT_INTR



/****************** FUNCTION DEFINITIONS ********************/

void UartLiteRecvHandler0(void *CallBackRef, unsigned int EventData);
void UartLiteSendHandler0(void *CallBackRef, unsigned int EventData);
//
void UartLiteRecvHandler1(void *CallBackRef, unsigned int EventData);
void UartLiteSendHandler1(void *CallBackRef, unsigned int EventData);
//
void printBuffer(u8 buffer[], int datacount, u8 bufferId);

#endif
