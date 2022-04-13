#include "xil_printf.h"
#include "platform.h"
#include "xil_types.h"
#include "PmodGPS.h"
#include "xscugic.h"


int SetupGPSInterruptSystem(PmodGPS *InstancePtr, XScuGic *IntcInstancePtr, u32 InterruptDeviceID, 
                            u32 interruptID);

