#include <stdio.h>
#include "platform.h"
#include "xil_exception.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xil_cache.h"
//
#include "xspi.h"
#include "xscugic.h"
//
#include "cpu0_intc.h"
#include "HCSR04Bz.h"
#include "OCM.h"

/************************** Constant Definitions **************************/
#define INTC_DEVICE_ID       XPAR_PS7_SCUGIC_0_DEVICE_ID
//
#define SPI_DEVICE_ID        XPAR_SPI_0_DEVICE_ID
#define SPI_IRPT_INTR        XPAR_FABRIC_SPI_0_VEC_ID
//
#define US_0_BASEADDR        XPAR_HCSR04BZ_0_S00_AXI_BASEADDR
#define US_1_BASEADDR        XPAR_HCSR04BZ_1_S00_AXI_BASEADDR
#define US_2_BASEADDR        XPAR_HCSR04BZ_2_S00_AXI_BASEADDR
//
#define BUFFER_SIZE          64

/************************** Function Prototypes **************************/
void spiTest (XSpi* SpiInstancePtr); 

int SetupInterruptSystem(XScuGic *IntcInstancePtr, XSpi *SpiInstancePtr, 
                        u32 interruptDeviceID, u32 interruptID);
                         

static int SetupSpi(XScuGic *IntcInstancePtr, XSpi *SpiInstancePtr, 
                    u16 SpiDeviceId, u16 SpiIntrId);

static void SpiHandler(void *CallBackRef, u32 StatusEvent);

void clearSpiBuffers(uint8_t* rdBuffer, uint8_t* wrBuffer);

/************************** Global Variables ***************************/
static XSpi    SpiInstance;
static XScuGic IntcInstance;

u8  ReadBuffer  [BUFFER_SIZE];
u8  WriteBuffer [BUFFER_SIZE];

// indicates a transfer in progress
static volatile int TransferInProgress;

// OCM

int main()
{
	int Status;
	//
	xil_printf("\r\n\nCPU0 Initialized !!!\n\r");

	// Setup scugic
	Status = SetupInterruptSystem(&IntcInstance, &SpiInstance, INTC_DEVICE_ID, SPI_IRPT_INTR);
	if(Status != XST_SUCCESS) {
	    xil_printf("Interrupt system setup failed!\r\n");
	    return XST_FAILURE;
	}

	/* Setup the SPI device */
	SetupSpi(&IntcInstance, &SpiInstance, SPI_DEVICE_ID, SPI_IRPT_INTR);
	xil_printf("CPU0 SPI initialized...\r\n\n");

    // Set OCM address to indicate CPU0 is done with INTC
    

	spiTest(&SpiInstance);
}


/*
 * This function runs a simple SPI test. The function waits for an
 * instruction from the Pi and sends back Hello World.
 *
 * @param XSpi *SpiInstancePtr: a pointer to the SPI instance.
 * @param uint8_t* rdBuffer:    a pointer to the SPI read buffer.
 * @param uint8_t* wrBuffer:    a pointer to the SPI write buffer.
 *
 * @return: none
 * @notes:  contains an infinite loop; may hang if no hello world
 *          command is received from the Pi.
 */
void spiTest (XSpi* SpiInstancePtr)
{
	int Status;
	int DATACOUNT;

	u32 us_val [3];

	while(1) {
		/* Send data bytes; master should send dummy bytes */
		us_val[0] = getUsDistance(US_0_BASEADDR);
		us_val[1] = getUsDistance(US_1_BASEADDR);
		us_val[2] = getUsDistance(US_2_BASEADDR);

		// Mask and load high and low bytes
		WriteBuffer[0] = us_val[0] & 0xFF;
		WriteBuffer[1] = us_val[0] & 0xFF00;
		WriteBuffer[2] = us_val[1] & 0xFF;
		WriteBuffer[3] = us_val[1] & 0xFF00;
		WriteBuffer[4] = us_val[2] & 0xFF;
		WriteBuffer[5] = us_val[2] & 0xFF00;

		// Print expected values
		DATACOUNT = 6;
		xil_printf("US0 Distance: %d cm\r\n", us_val[0]);
		xil_printf("US1 Distance: %d cm\r\n", us_val[1]);
		xil_printf("US2 Distance: %d cm\r\n", us_val[2]);
		xil_printf("\r\n");

		// Print the write buffer
		for(int i=0; i<6; i++) {
			xil_printf("WriteBuffer[%d] = %d\r\n", i, WriteBuffer[i]);
		}
		xil_printf("Waiting for master to initiate transaction...\r\n");

		Status = XSpi_Transfer(&SpiInstance, // SPI device instance
				               WriteBuffer,  // buffer to write to
							   ReadBuffer,   // buffer to read to
							   1);   // number of bytes to send/receive
		if (Status != XST_SUCCESS) {
			xil_printf("SPI data transaction failed...\n\r");
		}
        while(SpiInstance.RemainingBytes != SpiInstance.RequestedBytes) {
            xil_printf("Requested Bytes: %d || Remaining Bytes: %d\r\n", SpiInstance.RequestedBytes, SpiInstance.RemainingBytes);
        }
        xil_printf("Data transaction complete.\n\n\r");
        break;
/*
		for(int i=0; i<32; i++) {
			xil_printf("ReadBuffer[%d] = %x\r\n", i, ReadBuffer[i]);
		}
*/
	}
}


/* Configure the intc. Connect the SPI interrupt to the intc.
 *
 * @param u32 interruptDeviceID:  Interrupt controller ID
 * @param u32 interruptID:        Interrupt ID to connect
 *
 * @return XST_FAILURE if not successful; XST_SUCCESS if successful
 */
int SetupInterruptSystem(XScuGic *IntcInstancePtr, XSpi *SpiInstancePtr, 
                         u32 interruptDeviceID, u32 interruptID)
{
	int             Status;
	XScuGic_Config *IntcConfig;

	// initialize the interrupt controller driver
	IntcConfig = XScuGic_LookupConfig(interruptDeviceID);
	if (IntcConfig == NULL) {
	   return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
	                               IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
	   return XST_FAILURE;
	}

	XScuGic_SetPriorityTriggerType(IntcInstancePtr, interruptID, 0xA0, 0x3);

	// connect interrupt handler
	Status = XScuGic_Connect(IntcInstancePtr, interruptID,
	                        (Xil_ExceptionHandler) XSpi_InterruptHandler,
	                        SpiInstancePtr);
	if (Status != XST_SUCCESS) {
	   return XST_FAILURE;
	}

	// enable interrupt
	XScuGic_Enable(IntcInstancePtr, interruptID);

	// initialize exception table
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	                            (Xil_ExceptionHandler) XScuGic_InterruptHandler,
								 IntcInstancePtr);
	Xil_ExceptionEnable();
	xil_printf("Interrupt System Initialized! \r\n");

	return XST_SUCCESS;
}

/*
 * This function configures and initializes the SPI device.
 *
 * @param     SpiInstancePtr contains a pointer to the instance of the XSpi
 *            component to be configured and initialized.
 *
 * @return    XST_SUCCESS if successful, else XST_FAILURE.
 * @note      None.
 */
static int SetupSpi(XScuGic *IntcInstancePtr, XSpi *SpiInstancePtr, u16 SpiDeviceId, u16 SpiIntrId)
{
	XSpi_Config *ConfigPtr;
	int Status;


    // Configure and initialize the SPI device
	ConfigPtr = XSpi_LookupConfig(SpiDeviceId);
	if(ConfigPtr == NULL){
		xil_printf("SPI Lookup Cfg failed!\n\r");
		return XST_FAILURE;
	}

	Status = XSpi_CfgInitialize(SpiInstancePtr, ConfigPtr, ConfigPtr->BaseAddress);

	// Set SPI options
	Status = XSpi_SetOptions(SpiInstancePtr,
			                 XSP_CLK_PHASE_1_OPTION | XSP_CLK_ACTIVE_LOW_OPTION);
	if(Status != XST_SUCCESS){
		xil_printf("SPI Option Config failed!\n\r");
		return XST_FAILURE;
	}

    // Run a self-test
    Status = XSpi_SelfTest(SpiInstancePtr);
    if(Status != XST_SUCCESS) {
        xil_printf("SPI Self-Test Failed!\r\n");
        return XST_FAILURE;
    }

    // Setup scugic
    Status = SetupInterruptSystem(IntcInstancePtr, SpiInstancePtr, INTC_DEVICE_ID, SPI_IRPT_INTR);
    if(Status != XST_SUCCESS) {
        xil_printf("SPI interrupt system setup failed!\r\n");
        return XST_FAILURE;
    }

	// Set SPI interrupt handler
	XSpi_SetStatusHandler(SpiInstancePtr, SpiInstancePtr, (XSpi_StatusHandler) SpiHandler);

	// Start the SPI device
	XSpi_Start(SpiInstancePtr);

	// Enable SPI half-empty interrupt
	XSpi_IntrEnable(SpiInstancePtr, XSP_INTR_TX_HALF_EMPTY_MASK);


	// Initialize the exception table
	Xil_ExceptionInit();

	//Register the interrupt controller handler with the exception table
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			                     (Xil_ExceptionHandler)XScuGic_InterruptHandler,
								 (void *)&IntcInstance);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/*
 * This function is the handler which performs processing for the SPI
 * driver. It is called whenever the interrrupt is triggered.
 *
 * @param     CallBackRef is a reference passed to the handler.
 * @param     StatusEvent is the status of the SPI.
 * @param     ByteCount is the number of bytes transferred.
 *
 * @return    None.
 * @note      None.
 *
 */
static void SpiHandler(void *CallBackRef, u32 StatusEvent)
{
	if(StatusEvent == XST_SPI_TRANSFER_DONE) {
		TransferInProgress = FALSE;
	}
}

/*
 * This function clears the SPI read and write buffers.
 *
 * @param uint8_t* rdBuffer: a pointer to the read buffer to clear.
 * @param uint8_t* wrBuffer: a pointer to the write buffer to clear.
 *
 * @return: none
 * @notes:  none
 */
void clearSpiBuffers(uint8_t* rdBuffer, uint8_t* wrBuffer)
{
	for(int i=0; i<BUFFER_SIZE; i++) {
		WriteBuffer[i] = 0;
		ReadBuffer[i] = 0;
	}
}