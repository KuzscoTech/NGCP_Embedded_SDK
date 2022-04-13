

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
            InstancePtr->CurrentRpm = 0;
            InstancePtr->CurrentPosition = 0;
            InstancePtr->MicroMetalMode = FALSE;
            InstancePtr->MicroMetalRatio = 0;
            MOTORENCODER_mWriteReg(InstancePtr->RegBaseAddress, 8, 0);
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
    if(InstancePtr->MicroMetalMode) temp = temp / InstancePtr->MicroMetalRatio;
    InstancePtr->CurrentRpm = temp;
    return temp;
}

void ugvQei_clearPosition(ugv_qei *InstancePtr) 
{
    u32 temp;
    u32 reset;
    u32 clearMask = ~( (u32) 0x200);
    temp = MOTORENCODER_mReadReg(InstancePtr->RegBaseAddress, 8);
    reset = temp | (1 << 9);
    temp = temp & clearMask;
    MOTORENCODER_mWriteReg(InstancePtr->RegBaseAddress, 8, reset); // set the reset
    MOTORENCODER_mWriteReg(InstancePtr->RegBaseAddress, 8, temp);  // clear the reset
    InstancePtr->CurrentPosition = 0;
}

u32 ugvQei_getPosition(ugv_qei *InstancePtr)
{
    u32 temp;
    u32 posMask = (u32) 0x1FF;
    temp = MOTORENCODER_mReadReg(InstancePtr->RegBaseAddress, 8);
    temp = temp & posMask;
    InstancePtr->CurrentPosition = temp;
    return temp;
}

void ugvQei_setMicroMetalMode(ugv_qei *InstancePtr, _Bool val)
{
    InstancePtr->MicroMetalMode = val;
}

void ugvQei_setMicroMetalRatio(ugv_qei *InstancePtr, u32 ratio)
{
    InstancePtr->MicroMetalRatio = ratio;
}