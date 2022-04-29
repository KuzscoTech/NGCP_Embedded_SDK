

/***************************** Include Files *******************************/
#include "servoz3.h"

/************************** Function Definitions ***************************/

/**
*   @brief Function to initalize a ugv_servo instance
*   
*   @param InstancePtr is a pointer to the ugv_servo instance
*   @param EffectiveAddr is the base address of the ugv_servo instance
*/
int ugvServo_Initialize(ugv_servo *InstancePtr, UINTPTR EffectiveAddr){
    int return_val = XST_FAILURE;
    do{
        if(EffectiveAddr == (UINTPTR)NULL){
            break;
        }
        InstancePtr->RegBaseAddress = EffectiveAddr;
        //initialize values to register
        SERVOZ3_mWriteReg(InstancePtr->RegBaseAddress, SERVOZ3_S00_AXI_SLV_REG0_OFFSET, 0);
        return_val = XST_SUCCESS;
    } while(FALSE);
    return return_val;
}

/**
*   @brief Set the position
*   
*   @param InstancePtr is a pointer to the ugv_servo instance
*   @param input is a duty cycle value from 75-250
*/
void ugvServo_SetDir(ugv_servo *InstancePtr, u32 input){
    //u8 temp;
    //temp = SERVOZ3_mReadReg(InstancePtr->RegBaseAddress, SERVOZ3_S00_AXI_SLV_REG0_OFFSET);
    //temp = (input << 20) | (temp & 0xffff); // reserves bits [20:27] in register 0 for servo set pwm (u8)
    InstancePtr->inputVal = input;
    SERVOZ3_mWriteReg(InstancePtr->RegBaseAddress, 0, (u32) input);
}
