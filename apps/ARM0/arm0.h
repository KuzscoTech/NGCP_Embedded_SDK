#ifndef ARM0_H
#define ARM0_H

#include "xparameters.h"
#include "uart_utilities.h"
#include "system.h"
#include "motorEncoder.h"
#include "motorPWM.h"
#include "pid.h"
#include "arm0_utilities.h"
#include "sleep.h"

/* SCUGIC DEFINES */
#define INTC                        XScuGic
#define INTC_HANDLER                XScuGic_InterruptHandler
#define INTC_DEVICE_ID_0            XPAR_SCUGIC_0_DEVICE_ID

/* UART 0 */
#define UART_DEVICE_ID_0            XPAR_UARTLITE_0_DEVICE_ID
#define UART_IRPT_INTR_0            XPAR_FABRIC_UARTLITE_0_VEC_ID

/* UART 1 */
#define UART_DEVICE_ID_1            XPAR_UARTLITE_1_DEVICE_ID
#define UART_IRPT_INTR_1            XPAR_FABRIC_UARTLITE_1_VEC_ID

/* UART CONFIG */
#define UART_BUFFER_SIZE            100
#define N_UARTS                     2

/* UGV COMMAND SEQUENCE */


/* UGV COMMANDS */



/****************** FUNCTION DEFINITIONS ********************/
int SetupIntrSystem(XScuGic *IntcInstancePtr);
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
