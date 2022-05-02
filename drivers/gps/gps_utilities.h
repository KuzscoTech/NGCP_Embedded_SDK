#include "PmodGPS.h"
#include "xscugic.h"


#define GPS_GPIO_BASEADDR      XPAR_PMODGPS_0_AXI_LITE_GPIO_BASEADDR
#define GPS_UART_BASEADDR      XPAR_PMODGPS_0_AXI_LITE_UART_BASEADDR
#define GPS_INTERRUPT_ID       XPAR_FABRIC_PMODGPS_0_VEC_ID
#define GPS_CLK_FREQ           100000000 // MHz
#define GPS_UPDATE_RATE        1000


/**
 * @brief Function to initialize a PmodGPS instance and configure its interrupt.
 *
 * @param GpsInstancePtr is a pointer to the PmodGPS instance.
 * @param IntcInstancePtr is a pointer to the XScuGic instance that shall handle the interrupt.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int ugvGps_Initialize(PmodGPS *GpsInstancePtr, XScuGic *IntcInstancePtr);
