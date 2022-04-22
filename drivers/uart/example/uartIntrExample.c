/***************************** Include Files *********************************/
#include "uartIntrExample.h"
/************************** Variable Definitions *****************************/

/* Global INTC and Uart instances */
static INTC IntcInstance;	/* The instance of the Interrupt Controller */
static XUartLite_ngcp UartLiteInst0;  /* UART0 */
static XUartLite_ngcp UartLiteInst1;  /* UART1 */
static XUartLite_ngcp UartLiteInst2;  /* UART 2 */

/* UART Send and Receive Buffers */
u8 SendBuffer[N_UARTS][TEST_BUFFER_SIZE];
u8 RecvBuffer[N_UARTS][TEST_BUFFER_SIZE];

/* PMOD GPS Instance */
PmodGPS  GpsInstance;

/* Counters to determine number of bytes sent or received from each UART */
static volatile int TotalSentCount [3];
static volatile int TotalRecvCount [3];

//////////////////////////////////////////////////////////////////////////////////
int main(void)
{
    int Status;
	xil_printf("\r\nUART test start!\r\n");
	
    Status = UartLiteIntrExample(&IntcInstance,
                                 &UartLiteInst0,
                                 &UartLiteInst1,
                                 &UartLiteInst2,
                                 UARTLITE_IRPT_INTR_0,
                                 UARTLITE_IRPT_INTR_1,
                                 UARTLITE_IRPT_INTR_2);
    if(Status != XST_SUCCESS) {
        xil_printf("\r\nYou suck. Test failed.\r\n");
        return XST_FAILURE;
    }
	return XST_SUCCESS;
}


int UartLiteIntrExample(XScuGic *IntcInstancePtr,
			            XUartLite_ngcp *UartLiteInstPtr_0,
                        XUartLite_ngcp *UartLiteInstPtr_1,
                        XUartLite_ngcp *UartLiteInstPtr_2,
			            u16 UartLiteIntrId_0,
                        u16 UartLiteIntrId_1,
                        u16 UartLiteIntrId_2)

{
	int Status;
	u32 Index;

    int   Timer;

    // UART vars
	_Bool Valid     [N_UARTS];
	int   Errors    [N_UARTS];
    int   DATACOUNT [N_UARTS];
	char  c;
	const char * text;
    u8 tempBuffer [20];

    // Ultrasonic Data
    u32 us_distance [N_US];

    // GPS Data
    u8   gps_lock;

    /************************************/
    /************** SETUP ***************/
    /************************************/
    Status = SetupIntrSystem(IntcInstancePtr);
    if(Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    xil_printf("XScuGic Initialized!\r\n");


    // Initialize GPS
    xil_printf("Initializng GPS...\r\n");
    GPS_begin(&GpsInstance, PMOD_GPS_GPIO_ADDR, PMOD_GPS_UART_ADDR, PMOD_GPS_PERIPH_CLK);
    
    // Setup GPS interrupts
    xil_printf("Initializing GPS interrupts...\r\n");
    SetupGPSInterruptSystem(&GpsInstance, &IntcInstance, INTC_DEVICE_ID_0, PMOD_GPS_IRPT_ID);
    xil_printf("Setting GPS update rate...\r\n");
    GPS_setUpdateRate(&GpsInstance, 1000);
    xil_printf("GPS initialized and configured!\r\n");

    // Initialize UART0
    UartLiteInit((XUartLite*)(UartLiteInstPtr_0->uartInst), UARTLITE_DEVICE_ID_0);
    xil_printf("UART0 Initialized!\r\n");
    UartLiteInit(UartLiteInstPtr_1->uartInst, UARTLITE_DEVICE_ID_1);
    xil_printf("UART1 Initialized!\r\n");
    UartLiteInit(UartLiteInstPtr_2->uartInst, UARTLITE_DEVICE_ID_2);
    xil_printf("UART2 Initialized!\r\n");
 
    // Setup UART0 interrupts
	Status = UartLiteSetupIntrSystem(IntcInstancePtr,
					                 UartLiteInstPtr_0,
					                 UartLiteIntrId_0);
	if (Status != XST_SUCCESS) {
        xil_printf("UART0 Interrupt Config Failed!\r\n");
		return XST_FAILURE;
	}
	xil_printf("UART0 Interrupt Initialized!\r\n");

    // Setup UART1 interrupts
	Status = UartLiteSetupIntrSystem(IntcInstancePtr,
                                     UartLiteInstPtr_1->uartInst,
                                     UartLiteIntrId_1);
    if (Status != XST_SUCCESS) {
        xil_printf("UART1 Interrupt Config Failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("UART1 Interrupt Initialized!\r\n");
    
    // Setup UART2 interrupts
    Status = UartLiteSetupIntrSystem(IntcInstancePtr,
                                     UartLiteInstPtr_2->uartInst,
                                     UartLiteIntrId_2);
    if (Status != XST_SUCCESS) {
        xil_printf("UART2 Interrupt Config Failed!\r\n");
        return XST_FAILURE;
    }
    xil_printf("UART2 Interrupt Initialized!\r\n");
 
    // Set send and receive interrupt handlers
    XUartLite_SetSendHandler(UartLiteInstPtr_0->uartInst, UartLiteSendHandler0, UartLiteInstPtr_0);
	XUartLite_SetRecvHandler(UartLiteInstPtr_0->uartInst, UartLiteRecvHandler0, UartLiteInstPtr_0);
    XUartLite_SetTimeOutTimer(UartLiteInstPtr_0, UartLiteTimeOutTimer);

	XUartLite_SetSendHandler(UartLiteInstPtr_1->uartInst, UartLiteSendHandler1, UartLiteInstPtr_1);
	XUartLite_SetRecvHandler(UartLiteInstPtr_1->uartInst, UartLiteRecvHandler1, UartLiteInstPtr_1);
    XUartLite_SetTimeOutTimer(UartLiteInstPtr_1, UartLiteTimeOutTimer);

	XUartLite_SetSendHandler(UartLiteInstPtr_2->uartInst, UartLiteSendHandler2, UartLiteInstPtr_2);
	XUartLite_SetRecvHandler(UartLiteInstPtr_2->uartInst, UartLiteRecvHandler2, UartLiteInstPtr_2);
    XUartLite_SetTimeOutTimer(UartLiteInstPtr_2, UartLiteTimeOutTimer);
							 
    // Enable the UART device interrupts
	XUartLite_EnableInterrupt(UartLiteInstPtr_0->uartInst);
    XUartLite_EnableInterrupt(UartLiteInstPtr_1->uartInst);
    XUartLite_EnableInterrupt(UartLiteInstPtr_2->uartInst);
    
    /*****************************************************/
    /******************** SUPER LOOP *********************/
    /*****************************************************/
	while(1) {

        for(int i=0; i<N_UARTS; i++) {
            DATACOUNT[i] = 0;
        }

       /****************** UART0 TX BUFFER ******************/
        xil_printf("\r\nPrepping UART0 tx buffer...\r\n");
        us_distance[0] = getUsDistance(US_BASEADDR_0);
        us_distance[1] = getUsDistance(US_BASEADDR_1);
        xil_printf("US0: %d\r\n", us_distance[0]);
        xil_printf("US1: %d\r\n", us_distance[1]);
        //
        uart_us_sendbuffer(SendBuffer, &us_distance[0], "US0", DATACOUNT);
        //
        uart_us_sendbuffer(SendBuffer, &us_distance[1], "US1", DATACOUNT);
        printBuffer(SendBuffer[0], DATACOUNT[0], 0);

        /****************** UART1 TX BUFFER ******************/
        xil_printf("\r\nPrepping UART1 tx buffer...\r\n");
        uart_gps_sendbuffer(SendBuffer, &GpsInstance, DATACOUNT);
        printBuffer(SendBuffer[1], DATACOUNT[1], 1);

       /****************** UART2 TX BUFFER ******************/
       text = "I'm a placeholder!";
        for(text; c = *text; text++) {
            SendBuffer[2][DATACOUNT[2]] = c;
            DATACOUNT[2]++;
        }
        printBuffer(SendBuffer[2], DATACOUNT[2], 2);

        /****************** UART CONTROL ********************/
        /* Trigger UART sends */
        XUartLite_Send(UartLiteInstPtr_0->uartInst, SendBuffer[0], DATACOUNT[0]);
        XUartLite_Send(UartLiteInstPtr_1->uartInst, SendBuffer[1], DATACOUNT[1]);
        XUartLite_Send(UartLiteInstPtr_2->uartInst, SendBuffer[2], DATACOUNT[2]);

        /* Hang until UARTS are done sending */
		xil_printf("Sending...\r\n");
        for(int i=0; i<N_UARTS; i++) {
            TotalSentCount[i] = 0;
            TotalRecvCount[i] = 0;
        }
		while ( (TotalSentCount[0] != DATACOUNT[0]) &&
                (TotalSentCount[1] != DATACOUNT[1]) &&
                (TotalSentCount[2] != DATACOUNT[2])) {
            // !!! app will hang here if UART interrupts are not triggered !!!
        }

        /* Wait for Pi to prepare its send */
		sleep(0.1);
		
        /* Receive data from the Pi */
		xil_printf("Receiving...\r\n");
		for(int i=0; i<3; i++) {
            Valid[i] = TRUE;
        }
		XUartLite_Recv(UartLiteInstPtr_0, RecvBuffer[0], DATACOUNT[0]);
        XUartLite_Recv(UartLiteInstPtr_1, RecvBuffer[1], DATACOUNT[1]);
        XUartLite_Recv(UartLiteInstPtr_2, RecvBuffer[2], DATACOUNT[2]);

        /* Wait for UARTs to be done */
		while ( (TotalRecvCount[0] != DATACOUNT[0]) &&
                (TotalRecvCount[1] != DATACOUNT[1]) &&
                (TotalRecvCount[2] != DATACOUNT[2])) {

            UartLiteInstPtr_0->TimeOutTimer();
            if(UartLiteInstPtr_0->TimeOut) {
                xil_printf("Receive timed out...\r\n");
				for(int i=0; i<3; i++) {
                    Errors[i] = DATACOUNT[i] - TotalRecvCount[i];
                    if(Errors[i] > 0) {
                        xil_printf("ERROR: UART%d still had %d bytes to send...\r\n", i, Errors[i]);
                        Valid[i] = FALSE;
                    }
                }
				break;
            }

            // Check overrun errors
			Errors[0] = UartLiteInstPtr_0->uartInst->Stats->ReceiveOverrunErrors;
            Errors[1] = UartLiteInstPtr_1->uartInst->Stats->ReceiveOverrunErrors;
            Errors[2] = UartLiteInstPtr_2->uartInst->Stats->ReceiveOverrunErrors;
            for(int i=0; i<3; i++) {
                if(Errors[i] > 0) {
                    xil_printf("\r\nERROR: UART%d has %d RX Overrun Errors... \r\n\n", i, Errors[i]);
                    Valid[i] = FALSE;
                }
            }
		}

        
		/* Print valid RX data */
		for(int i=0; i<3; i++) {
            if(Valid[i]) {
                switch (i) {
                    case 0:
                       for(int j=0; j<DATACOUNT[i]; j++) {
                           xil_printf("UART0 RecvBuffer%d[%d] : %s\r\n", i, j, RecvBuffer[0][j]);
                       }
                       break;
                    case 1:
                       for(int j=0; j<DATACOUNT[i]; j++) {
                           xil_printf("UART1 RecvBuffer%d[%d] : %s\r\n", i, j, RecvBuffer[1][j]);
                       }
                       break;
                    case 2:
                       for(int j=0; j<DATACOUNT[i]; j++) {
                           xil_printf("UART2 RecvBuffer%d[%d] : %s\r\n", i, j, RecvBuffer[2][j]);
                       }
                       break;
                }
            }
            else {
                xil_printf("UART%d transaction failed!\r\n", i);
            }
        }
        
        /* Reset receive counters */
		for(int i=0; i<3; i++) {
            TotalRecvCount[i] = 0;
        }

		sleep(3);
    }
	return XST_SUCCESS;
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

/**
 * @brief Uartlite send interrupt handler for UARTLITE2.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for send events.
 */
void UartLiteSendHandler2(void *CallBackRef, unsigned int EventData) {
	TotalSentCount[2] = EventData;
}

/**
 * @brief Uartlite send interrupt handler for UARTLITE2.
 * 
 * @param CallBackRef CallBackRef contains a callback reference from the driver. 
 *                    It should be the instance pointer for a Uartlite driver.
 * @param EventData   EventData contains the number of bytes sent for send events.
 */
void UartLiteRecvHandler2(void *CallBackRef, unsigned int EventData) {
	TotalRecvCount[2] = EventData;
}

void printBuffer(u8 buffer[], int datacount, u8 bufferId) {
    for(int i=0; i<datacount; i++) {
        xil_printf("UART%d [%d]: %c\r\n", bufferId, i, buffer[i]);
    }
}

/**
 * @brief Timeout function for an xuartlite.
 * 
 * @param UartLiteInstancePtr UartLiteInstancePtr is the pointer to a UartLite instance.
 * 
 * @param TimeOutThreshold    TimeOutThreshold is the max timer value.
 */
void UartLiteTimeOutTimer(XUartLite_ngcp *UartLiteInstancePtr, int TimeOutThreshold)
{
    int Timer = TimeOutThreshold;
    UartLiteInstancePtr->TimeOut = FALSE;
    while(Timer > 0) {
        Timer--;
    }
    UartLiteInstancePtr->TimeOut = TRUE;
}
