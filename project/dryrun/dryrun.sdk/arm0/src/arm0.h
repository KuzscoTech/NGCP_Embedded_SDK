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



/* SERVO MOTOR */
#define SERVO_DRIVER_BASEADDR
#define SERVO_XADC_DEVICE_ID




/* MICROMETAL MOTORS */
#define MGM0_PWM_BASEADDR           XPAR_MOTORPWM_1_S00_AXI_BASEADDR
#define MGM0_PWM_PERIOD             9995
#define MGM0_PWM_MIN                0
#define MGM0_PWM_SCALE              39
#define MGM0_QEI_BASEADDR           XPAR_MOTORENCODER_1_S00_AXI_BASEADDR
#define MGM0_GEAR_RATIO             1000
#define MGM0_RESOLUTION             12

#define MGM1_PWM_BASEADDR           XPAR_MOTORPWM_2_S00_AXI_BASEADDR
#define MGM1_PWM_PERIOD             9995
#define MGM1_PWM_MIN                0
#define MGM1_PWM_SCALE              39
#define MGM1_QEI_BASEADDR           XPAR_MOTORENCODER_2_S00_AXI_BASEADDR
#define MGM1_GEAR_RATIO             1000
#define MGM1_RESOLUTION             12

/* PID CONFIG */
// -> servo
#define SERVO_PID_KP           0.5f
#define SERVO_PID_KI           1.0f
#define SERVO_PID_KD           0.1f
#define SERVO_PID_TAU          0.02f
#define SERVO_PID_LIM_MIN      0.0f
#define SERVO_PID_LIM_MAX      255.0f
#define SERVO_PID_SAMPLE_TIME  0.01f // seconds
#define SERVO_PID_LIM_MIN_INT -500.0f
#define SERVO_PID_LIM_MAX_INT  500.0f



// -> mgm0
#define MGM0_PID_KP           0.4f
#define MGM0_PID_KI           1.2f
#define MGM0_PID_KD           0.25f
#define MGM0_PID_TAU          0.02f
#define MGM0_PID_LIM_MIN     -255.0f
#define MGM0_PID_LIM_MAX      255.0f
#define MGM0_PID_SAMPLE_TIME  0.01f // seconds
#define MGM0_PID_LIM_MIN_INT -200.0f
#define MGM0_PID_LIM_MAX_INT  200.0f

// -> mgm1
#define MGM1_PID_KP           0.4f
#define MGM1_PID_KI           1.2f
#define MGM1_PID_KD           0.25f
#define MGM1_PID_TAU          0.02f
#define MGM1_PID_LIM_MIN     -255.0f
#define MGM1_PID_LIM_MAX      255.0f
#define MGM1_PID_SAMPLE_TIME  0.01f // seconds
#define MGM1_PID_LIM_MIN_INT -200.0f
#define MGM1_PID_LIM_MAX_INT  200.0f

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
