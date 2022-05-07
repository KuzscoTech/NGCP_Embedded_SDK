/*
Receive commands via UART
*/

#include "arm0.h"
#include "xtime_l.h"

#define DBG_VERBOSE 0

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
    printf("Initializing OCM...\r\n");
    ocm_initialize();



    // MAIN LOOP
    while(1)
    {
    	// Start UART0 Receive sequence
    	TotalRecvCount[0] = 0;
    	if(!uart0RecvDone)
    	{
    		for(int i=0; i<UART_BUFFER_SIZE; i++) {
    			RecvBuffer[0][i] = 0;
    		}
    		XUartLite_Recv(&UartLiteInst0, RecvBuffer[0], UART0_RECEIVE_SIZE);
            uart0RecvDone = TRUE;

    		// look for a receive timeout
    		XTime_GetTime(&uart0RecvStartTime);
    		delta = 0;
    		while(TotalRecvCount[0] != UART0_RECEIVE_SIZE) {
    			XTime_GetTime(&uart0CurrentTime);
    			delta = 1.0 * (uart0CurrentTime - uart0RecvStartTime) / (COUNTS_PER_SECOND/1000);
    			if(delta > 200.0) {
    				if(DBG_VERBOSE) printf("Timeout...\r\n\n");
    				uart0RecvDone = FALSE;
    				break;
    			}
    		}
    	}

        // Parse UART0 data
    	if(uart0RecvDone) {
    		if(DBG_VERBOSE) {
    			printf("Received data!\r\n");
    			uart_printBuffer(RecvBuffer[0]);
    			uart_printData0(&uart0DataInst);
    		}
    		uart0RecvDone = FALSE;
    		uart_parseDriveMotor(RecvBuffer[0], &uart0DataInst);
            uart_parseServoMotor(RecvBuffer[0], &uart0DataInst);
            uart_parseMicroMetal(RecvBuffer[0], &uart0DataInst);
    		if(SM_Status == 0) {
    			uart_data0ToOcm(&uart0DataInst);
    		}
    	}
    	// Update UART0 send buffer if CPU0 has access to OCM
    	SM_Status = ocm_getMemFlag();
    	if(SM_Status == 0) {
    		for(int i=0; i<UART_BUFFER_SIZE; i++) {
    			SendBuffer[0][i] = 0;
    		}
    		uart_data0FromOcm(&uart0DataInst);
    		uart0DataInst.index = 0;
    		uart_loadData0(SendBuffer[0], &uart0DataInst);
    	}

    	// Send the UART0 SendBuffer
    	TotalSentCount[0] = 0;
    	XUartLite_Send(&UartLiteInst0, SendBuffer[0], uart0DataInst.index);
    	while(TotalSentCount[0] != uart0DataInst.index) {
    	}

    	// Pass OCM access to CPU1
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


