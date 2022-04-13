#include "xuartlite.h"
#include "xscugic.h"
#include "xil_printf.h"
//#include "uartIntrExample.h"
#include "PmodGPS.h"


/**
 * The XUartLite driver instance data. The user is required to allocate a
 * variable of this type for every UART Lite device in the system. A pointer
 * to a variable of this type is then passed to the driver API functions.
 */
typedef struct {
    _Bool TimeOut;
    void *TimeOutTimer;
    XUartLite *uartInst; //TODO, malloc
} XUartLite_ngcp;



int UartLiteInit(XUartLite *UartLiteInstPtr, u16 UartLiteDeviceId);

int UartLiteSetupIntrSystem(XScuGic *IntcInstancePtr,
				            XUartLite *UartLiteInstancePtr,
				            u16 UartLiteIntrId);

void uart_us_sendbuffer(u8 SendBuffer[3][100], u32 us_distance[2], const char * text, int DATACOUNT[3]);

void uart_gps_sendbuffer(u8 SendBuffer[3][100], PmodGPS *GpsInstancePtr,  int DATACOUNT[3]);

void XUartLite_SetTimeOutTimer(XUartLite_ngcp *InstancePtr, void *FuncPtr);
