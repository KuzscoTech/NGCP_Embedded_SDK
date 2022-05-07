/*
Receive commands via UART
*/

#include "arm0.h"
#include "xtime_l.h"

#define DBG_VERBOSE 1

/************************** GLOBAL VARIABLES ***********************/
static INTC IntcInstance;
static XUartLite UartLiteInst [3];

// UART VARS
u8 SendBuffer [2][UART_BUFFER_SIZE];
u8 RecvBuffer [2][UART_BUFFER_SIZE];

static volatile int TotalSentCount [2];
static volatile int TotalRecvCount [2];

int   DATACOUNT[2];
_Bool VALID    [2];
int   ERRORS   [2];

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
    _Bool          uartRecvDone[2] = {FALSE,FALSE};
    uart0Data      uart0DataInst;
    uart1Data      uart1DataInst;


    // Setup interrupt system
    printf("Initializing XscuGic...\r\n");
    Status = SetupIntrSystem(&IntcInstance);
    if(Status != XST_SUCCESS) {
        printf("Xscugic setup failed!\r\n");
        return XST_FAILURE;
    }

    // Initialize UARTs
    printf("Initializing UART drivers...\r\n");
    uart_Initialize(&UartLiteInst[0], UART_DEVICE_ID_0);
    uart_Initialize(&UartLiteInst[1], UART_DEVICE_ID_1);
    if(Status != XST_SUCCESS) {
        printf("UART setup failed!\r\n");
        return XST_FAILURE;
    }

    // Setup UART0 interrupts
	Status = uart_setupIntrSystem(&IntcInstance, &UartLiteInst[0], UART_IRPT_INTR_0);
	if (Status != XST_SUCCESS) {
        xil_printf("UART0 Interrupt Config Failed!\r\n");
		return XST_FAILURE;
	}
	xil_printf("UART0 Interrupt Initialized!\r\n");

    // Setup UART1 interrupts
	Status = uart_setupIntrSystem(&IntcInstance, &UartLiteInst[1], UART_IRPT_INTR_1);
    if (Status != XST_SUCCESS) {
        xil_printf("UART1 Interrupt Config Failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("UART1 Interrupt Initialized!\r\n");

    // Set UART interrupt handlers
    XUartLite_SetSendHandler(&UartLiteInst[0], UartLiteSendHandler0, &UartLiteInst[0]);
    XUartLite_SetRecvHandler(&UartLiteInst[0], UartLiteRecvHandler0, &UartLiteInst[0]);
    XUartLite_SetSendHandler(&UartLiteInst[1], UartLiteSendHandler1, &UartLiteInst[1]);
    XUartLite_SetRecvHandler(&UartLiteInst[1], UartLiteRecvHandler1, &UartLiteInst[1]);

    // Enable UART interrupts
    XUartLite_EnableInterrupt(&UartLiteInst[0]);
    XUartLite_EnableInterrupt(&UartLiteInst[1]);

    // Initialize flags and counters
    TotalSentCount[0] = 0;
    TotalSentCount[1] = 0;
    TotalRecvCount[0] = 0;
    TotalRecvCount[1] = 0;

    // Initialize OCM
    ocm_initialize();

    // MAIN LOOP
    while(1)
    {
    	// Update UART0 send buffer if CPU0 has access to OCM
    	SM_Status = ocm_getMemFlag();
    	if(SM_Status == 0) {
			for(int i=0; i<UART_BUFFER_SIZE; i++) {
				SendBuffer[0][i] = 0;
			}
			uart_data0FromOcm(&uart0DataInst);
			uart0DataInst.index = 0;
			uart_loadData0(SendBuffer[0], &uart0DataInst);

			uart_data1FromOcm(&uart1DataInst);
			uart1DataInst.index = 0;
			uart_loadData1(SendBuffer[1], &uart1DataInst);

    	}

        // Send the UART0 SendBuffer
    	TotalSentCount[0] = 0;
    	TotalSentCount[1] = 0;
    	XUartLite_Send(&UartLiteInst[0], SendBuffer[0], uart0DataInst.index);
    	XUartLite_Send(&UartLiteInst[1], SendBuffer[1], uart1DataInst.index);

    	while(TotalSentCount[0] != uart0DataInst.index) {
    	}

    	// Start UART0 Receive sequence & UART1 Receive
    	TotalRecvCount[0] = 0;
    	TotalRecvCount[1] = 0;
    	for(int uart_idx = 0; uart_idx < 2; uart_idx++){
			if(!uartRecvDone[uart_idx])
			{
				for(int i=0; i<UART_BUFFER_SIZE; i++) {
					RecvBuffer[0][i] = 0;
				}
				XUartLite_Recv(&UartLiteInst[uart_idx], RecvBuffer[uart_idx], STUPID_BITCH_FUCK_CUCK_BASTARD[uart_idx]);
				uartRecvDone[uart_idx] = TRUE;

				// look for a receive timeout
				XTime_GetTime(&uart0RecvStartTime);
				delta = 0;
				while(TotalRecvCount[uart_idx] != STUPID_BITCH_FUCK_CUCK_BASTARD[uart_idx]) {
					XTime_GetTime(&uart0CurrentTime);
					delta = 1.0 * (uart0CurrentTime - uart0RecvStartTime) / (COUNTS_PER_SECOND/1000);
					if(delta > 350.0) {
						if(DBG_VERBOSE) printf("UART %d Timeout...\r\n\n", uart_idx);
						uartRecvDone[uart_idx] = FALSE;
						break;
					}
				}
			}

			// Parse UART data
			if(uartRecvDone[uart_idx]) {
				if(DBG_VERBOSE) {
					printf("Received data!\r\n");
					printf("UART %d:\r\n", uart_idx);
				}
				if(uart_idx == 0){
					uart_parseDriveMotor(RecvBuffer[0], &uart0DataInst);
					uart_parseServoMotor(RecvBuffer[0], &uart0DataInst);
					if(DBG_VERBOSE) uart_printBuffer(RecvBuffer[uart_idx]);
				}
                if(uart_idx == 1){
                    uart_parseMicroMetal(RecvBuffer[1], &uart1DataInst);
                    if(DBG_VERBOSE) uart_printBuffer(RecvBuffer[uart_idx]);
                }
				if(SM_Status == 0) {
					uart_data0ToOcm(&uart0DataInst);
					uart_data1ToOcm(&uart1DataInst);
				}
				uartRecvDone[uart_idx] = FALSE;
			}
    	}

    	for (int i=0; i<3; i++) {
    		uartRecvDone[i] = FALSE;
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


