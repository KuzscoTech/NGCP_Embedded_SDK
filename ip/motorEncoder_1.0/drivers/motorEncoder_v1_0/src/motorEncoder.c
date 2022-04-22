

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
    temp = temp & 0x1;
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
    u32   temp;
    double temp_double;
    temp = MOTORENCODER_mReadReg(InstancePtr->RegBaseAddress, 4);
    temp_double = (double) temp;
    if(InstancePtr->MicroMetalMode) 
        temp_double = temp_double / (double) InstancePtr->MicroMetalRatio;
    else 
        temp_double = temp_double / 2.5;

    temp = (u32) temp_double;
    InstancePtr->CurrentRpm = temp;
    return temp;
}

void ugvQei_clearPosition(ugv_qei *InstancePtr) 
{
    u32 temp;
    u32 reset;
    u32 clearMask = ~( (u32) 0x2);
    temp = MOTORENCODER_mReadReg(InstancePtr->RegBaseAddress, 0);
    reset = temp | (1 << 1);
    temp = temp & clearMask;
    MOTORENCODER_mWriteReg(InstancePtr->RegBaseAddress, 0, reset); // set the reset
    MOTORENCODER_mWriteReg(InstancePtr->RegBaseAddress, 0, temp);  // clear the reset
    InstancePtr->CurrentPosition = 0;
}

u32 ugvQei_getPosition(ugv_qei *InstancePtr)
{
    u32 reg_read;
    reg_read = MOTORENCODER_mReadReg(InstancePtr->RegBaseAddress, 8);
    InstancePtr->CurrentPosition = reg_read;
    return reg_read;
}

float ugvQei_convertMgmPosition(ugv_qei *InstancePtr)
{
    u32 divFactor = InstancePtr->MicroMetalRatio * InstancePtr->MicroMetalResolution;
    float temp = (float) (InstancePtr->CurrentPosition / divFactor * 360);
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

void ugvQei_setMicroMetalResolution(ugv_qei *InstancePtr, u32 res) 
{
    InstancePtr->MicroMetalResolution = res;
}