/*
Receive commands via UART
*/

#include "arm0.h"
#include "xtime_l.h"

/************************** GLOBAL VARIABLES ***********************/
static INTC IntcInstance;
static XUartLite UartLiteInst0;
static XUartLite UartLiteInst1;

// UART VARS
u8 SendBuffer [2][UART_BUFFER_SIZE];
u8 RecvBuffer [2][UART_BUFFER_SIZE];

static volatile int TotalSentCount [2];
static volatile int TotalRecvCount [2];

int   DATACOUNT[2];
_Bool VALID    [2];
int   ERRORS   [2];

_Bool          uart0RecvDone;

// UART0 STATE MACHINE
int UART0_STATE;

int main()
{
	printf("\r\n\nARM0 Initialized!\r\n\n");
	//
    int            Status;
    int            SM_Status;
    XTime          uart0RecvStartTime;
    XTime          uart0CurrentTime;
    float          delta;
    _Bool          uart0RecvDone;

    uart0Data      uart0DataInst;


    // Setup interrupt system
    printf("Initializing XscuGic...\r\n");
    Status = SetupIntrSystem(&IntcInstance);
    if(Status != XST_SUCCESS) {
        printf("Xscugic setup failed!\r\n");
        return XST_FAILURE;
    }

    // Initialize UARTs
    printf("Initializing UART drivers...\r\n");
    uart_Initialize(&UartLiteInst0, UART_DEVICE_ID_0);
    uart_Initialize(&UartLiteInst1, UART_DEVICE_ID_1);
    if(Status != XST_SUCCESS) {
        printf("UART setup failed!\r\n");
        return XST_FAILURE;
    }

    // Setup UART0 interrupts
	Status = uart_setupIntrSystem(&IntcInstance, &UartLiteInst0, UART_IRPT_INTR_0);
	if (Status != XST_SUCCESS) {
        xil_printf("UART0 Interrupt Config Failed!\r\n");
		return XST_FAILURE;
	}
	xil_printf("UART0 Interrupt Initialized!\r\n");

    // Setup UART1 interrupts
	Status = uart_setupIntrSystem(&IntcInstance, &UartLiteInst1, UART_IRPT_INTR_1);
    if (Status != XST_SUCCESS) {
        xil_printf("UART1 Interrupt Config Failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("UART1 Interrupt Initialized!\r\n");

    // Set UART interrupt handlers
    XUartLite_SetSendHandler(&UartLiteInst0, UartLiteSendHandler0, &UartLiteInst0);
    XUartLite_SetRecvHandler(&UartLiteInst0, UartLiteRecvHandler0, &UartLiteInst0);
    XUartLite_SetSendHandler(&UartLiteInst1, UartLiteSendHandler1, &UartLiteInst1);
    XUartLite_SetRecvHandler(&UartLiteInst1, UartLiteRecvHandler1, &UartLiteInst1);

    // Enable UART interrupts
    XUartLite_EnableInterrupt(&UartLiteInst0);
    XUartLite_EnableInterrupt(&UartLiteInst1);

    // Initialize flags and counters
    uart0RecvDone = FALSE;
    TotalSentCount[0] = 0;
    TotalSentCount[1] = 0;
    TotalRecvCount[0] = 0;
    TotalRecvCount[1] = 0;

    // Initialize OCM
    ocm_initialize();

    // MAIN LOOP
    while(1)
    {
    	// only update send buffer if ARM0 has access to OCM
    	SM_Status = ocm_getMemFlag();
    	if(SM_Status == 0) {
    		//printf("CPU0 mem status: %d\r\n", SM_Status);
			for(int i=0; i<UART_BUFFER_SIZE; i++) {
				SendBuffer[0][i] = 0;
			}
			// get data from OCM
			uart_data0FromOcm(&uart0DataInst);

			// load it into the send buffer
			uart0DataInst.index = 0;
			uart_loadData0(SendBuffer[0], &uart0DataInst);
    	}

    	TotalSentCount[0] = 0;
    	XUartLite_Send(&UartLiteInst0, SendBuffer[0], uart0DataInst.index);
    	while(TotalSentCount[0] != uart0DataInst.index) {
    	}

    	// start a receive
    	TotalRecvCount[0] = 0;
    	if(!uart0RecvDone)
    	{
    		//printf("starting receive\r\n");
    		for(int i=0; i<UART_BUFFER_SIZE; i++) {
    			RecvBuffer[0][i] = 0;
    		}
    		XUartLite_Recv(&UartLiteInst0, RecvBuffer[0], DRIVEMOTOR_CMD_SIZE);

    		// get the start time
    		//printf("resetting start time\r\n");
    		XTime_GetTime(&uart0RecvStartTime);

    		// wait for the receive to complete
    		//printf("waiting for the goods\r\n");
    		uart0RecvDone = TRUE;
    		delta = 0;
    		while(TotalRecvCount[0] != DRIVEMOTOR_CMD_SIZE) {
    			XTime_GetTime(&uart0CurrentTime);
    			delta = 1.0 * (uart0CurrentTime - uart0RecvStartTime) / (COUNTS_PER_SECOND/1000);
    			if(delta > 200.0) {
    				//printf("Timeout...\r\n\n");
    				uart0RecvDone = FALSE;
    				break;
    			}
    		}
    	}


    	if(uart0RecvDone) {
    		//printf("Received data!\r\n");
    		//uart_printBuffer(RecvBuffer[0]);
    		uart0RecvDone = FALSE;

    		// parse the data and update the struct
    		uart_parseDriveMotor(RecvBuffer[0], &uart0DataInst);

    		// only update OCM if it's our turn
    		if(SM_Status == 0) {
    			uart_data0ToOcm(&uart0DataInst);
    		}
    	}

    	// once done with everything set the mem flag to pass access to ARM1
    	if(SM_Status == 0) {
    		ocm_setMemFlag();
    	}
    }

}


/**
 * @brief Uartlite send interrupt handler for UARTLITE0.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for send events.
 */
void UartLiteSendHandler0(void *CallBackRef, unsigned int EventData) {
	TotalSentCount[0] = EventData;
}

/**
 * @brief Uartlite send interrupt handler for UARTLITE0.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for receive events.
 */
void UartLiteRecvHandler0(void *CallBackRef, unsigned int EventData) {
	TotalRecvCount[0] = EventData;
}

/**
 * @brief Uartlite send interrupt handler for UARTLITE1.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for send events.
 */
void UartLiteSendHandler1(void *CallBackRef, unsigned int EventData) {
	TotalSentCount[1] = EventData;
}

/**
 * @brief Uartlite send interrupt handler for UARTLITE1.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for send events.
 */
void UartLiteRecvHandler1(void *CallBackRef, unsigned int EventData) {
	TotalRecvCount[1] = EventData;
}


