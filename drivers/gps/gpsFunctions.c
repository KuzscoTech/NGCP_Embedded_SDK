#include "gpsFunctions.h"


int SetupGPSInterruptSystem(PmodGPS *InstancePtr, XScuGic *IntcInstancePtr, u32 InterruptDeviceID, 
                            u32 interruptID) {
    int Status;
    u16 Options;
    //
    XScuGic_SetPriorityTriggerType(IntcInstancePtr, interruptID, 0xA0, 0x3);
    //
    Status = XScuGic_Connect(IntcInstancePtr, 
                             interruptID, 
                             (Xil_ExceptionHandler) XUartNs550_InterruptHandler,
                             &InstancePtr->GPSUart);

    if(Status != XST_SUCCESS) {
        xil_printf("GPS Interrupt Connection failed...\r\n");
        return XST_FAILURE;
    }

    XScuGic_Enable(IntcInstancePtr, interruptID);
    XUartNs550_SetHandler(&InstancePtr->GPSUart, 
                           (void*) GPS_intHandler,
                           InstancePtr);
    Options = XUN_OPTION_DATA_INTR | XUN_OPTION_FIFOS_ENABLE;
    XUartNs550_SetOptions(&InstancePtr->GPSUart, Options);

    return XST_SUCCESS;
}