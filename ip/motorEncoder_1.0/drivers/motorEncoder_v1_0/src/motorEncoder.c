

/***************************** Include Files *******************************/
#include "motorEncoder.h"

/************************** Function Definitions ***************************/

int ugvQei_Initialize(ugv_qei *InstancePtr, UINTPTR EffectiveAddr)
{
    int return_val = XST_FAILURE;
    do  {
            if(EffectiveAddr == (UINTPTR)NULL)
            {
                break;
            }
            InstancePtr->RegBaseAddress = EffectiveAddr;
            return_val = XST_SUCCESS;
    } while (FALSE);
    return return_val;
}

_Bool ugvQei_getDirection(ugv_qei *InstancePtr)
{
    u32 temp;
    temp = MOTORENCODER_mReadReg(InstancePtr->RegBaseAddress, 0);
    if(temp) {
        InstancePtr->CurrentDirection = TRUE;
        return TRUE;
    }
    else {
        InstancePtr->CurrentDirection = FALSE;
        return FALSE;
    }
}

u32 ugvQei_getRpm(ugv_qei *InstancePtr)
{
    u32 temp;
    temp = MOTORENCODER_mReadReg(InstancePtr->RegBaseAddress, 4);
    InstancePtr->CurrentRpm = temp;
    return temp;
}