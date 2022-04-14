#ifndef GPS_FUNCTIONS_H
#define GPS_FUNCTIONS_H

#include "xil_printf.h"
#include "xil_types.h"
#include "PmodGPS.h"
#include "xscugic.h"


int SetupGPSInterruptSystem(PmodGPS *InstancePtr, XScuGic *IntcInstancePtr, u32 InterruptDeviceID, 
                            u32 interruptID);

#endif
