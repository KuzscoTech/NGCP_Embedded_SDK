/***************************** Include Files *******************************/
#include "motorPWM.h"


/**
 * @brief Function to initialize a ugv_motor instance.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param EffectiveAddr is the base address of the ugv_motor instance.
 */
int ugvPwm_Initialize(ugv_pwm *InstancePtr, UINTPTR EffectiveAddr)
{
    int return_val = XST_FAILURE;
    do  {
            if(EffectiveAddr == (UINTPTR)NULL)
            {
                break;
            }
            InstancePtr->RegBaseAddress = EffectiveAddr;
            // set initial values
            MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, MOTORPWM_S00_AXI_SLV_REG0_OFFSET, 0);
            //
            return_val = XST_SUCCESS;
    } while (FALSE);
    return return_val;
}

/**
 * @brief Set the speed object
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param speed_sel is the duty cycle value from 0-255.
 */
void ugvPwm_setSpeed(ugv_pwm *InstancePtr, u8 spd_val)
{
    u32 reg_read;
    u32 spd_sel;
    u32 clearLowOrderBitsMask = ~( ( u32 ) 0xFF );
    reg_read = MOTORPWM_mReadReg(InstancePtr->RegBaseAddress, MOTORPWM_S00_AXI_SLV_REG0_OFFSET);
    spd_sel = reg_read & clearLowOrderBitsMask;
    spd_sel = spd_sel | (u32) spd_val;
    //
    InstancePtr->speedSelect = spd_val;
    Xil_Out32((InstancePtr->RegBaseAddress) + 0, (u32)(spd_sel));
    //MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, MOTORPWM_S00_AXI_SLV_REG0_OFFSET, spd_sel);
}

/**
 * @brief Set the dir object
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param dir '1' for forward, '0' for backwards 
 */
void ugvPwm_setDir(ugv_pwm *InstancePtr, _Bool dir)
{
    u32 clearMask = ~((u32) 0x100);
    u32 reg_read = MOTORPWM_mReadReg(InstancePtr->RegBaseAddress, MOTORPWM_S00_AXI_SLV_REG0_OFFSET);
    if(!dir) reg_read = reg_read & clearMask;
    u32 dir_reg = reg_read | (dir << 8);
    InstancePtr->setDirection = dir;
    MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, MOTORPWM_S00_AXI_SLV_REG0_OFFSET, dir_reg);
}

/**
 * @brief Set the en object
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param en is the motor enable, TRUE or FALSE
 */
void ugvPwm_Enable(ugv_pwm *InstancePtr, _Bool en){
    u32 en_mask = (u32) 0x200;
    u32 disable_mask = ~((u32) 0x200);
    u32 reg_read = MOTORPWM_mReadReg(InstancePtr->RegBaseAddress, 0);
    if(en) reg_read = reg_read | en_mask;
    else   reg_read = reg_read & disable_mask;
    InstancePtr->IsEnabled = en;
    MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, 0, reg_read);
}

/**
 * @brief Set the min speed counter value in clock counts
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param min is the min speed counter value in clock counts
 */
void ugvPwm_setMinPeriod(ugv_pwm *InstancePtr, u16 min)
{
    u32 reg_read;
    u32 newVal;
    u32 clearLowOrderBitsMask = ~( ( u32 ) 0xFFFF );
    //
    reg_read = MOTORPWM_mReadReg(InstancePtr->RegBaseAddress, MOTORPWM_S00_AXI_SLV_REG1_OFFSET);
    newVal = reg_read & clearLowOrderBitsMask;
    newVal = newVal | (u32) min;
    MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, MOTORPWM_S00_AXI_SLV_REG1_OFFSET, newVal);
    InstancePtr->minPeriod = min;
}

/**
 * @brief Set the PWM period in clock counts
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param val is the period of the PWM in clock counts
 */
void ugvPwm_setPeriod(ugv_pwm *InstancePtr, u16 val)
{
    u32 period = (u32) val;
    u32 reg_read;
    u32 newVal;
    u32 clearHighOrderBitsMask = ~( ( u32 ) 0xFFFF0000 );
    reg_read = MOTORPWM_mReadReg(InstancePtr->RegBaseAddress, 4);
    newVal = reg_read & clearHighOrderBitsMask;
    newVal = reg_read | (period << 16);
    MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, 4, newVal);
    InstancePtr->period = val;
}

/**
 * @brief Set the scaling value constant
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance. 
 * @param scale is an 8-bit constant used for speed scaling
 */
void ugvPwm_setScaling(ugv_pwm *InstancePtr, u8 scale)
{
    MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, 8, (u32) scale);
    InstancePtr->spdScaling = scale;
}

/**
 * @brief Set L298 mode
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 */
void ugvPwm_setL298Mode(ugv_pwm *InstancePtr) 
{
    u32 reg_read;
    u32 newVal;
    u32 clearLowOrderBitsMask = ~( ( u32 ) 0x1 );
    reg_read = MOTORPWM_mReadReg(InstancePtr->RegBaseAddress, 12);
    newVal = reg_read & clearLowOrderBitsMask;
    newVal = newVal | 0x1;
    //
    MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, 12, newVal);
    InstancePtr->L298Mode = TRUE;
}

/**
 * @brief Set IBT2 mode
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 */
void ugvPwm_setIBT2Mode(ugv_pwm *InstancePtr)
{
    u32 reg_read;
    u32 newVal;
    u32 clearLowOrderBitsMask = ~( ( u32 ) 0x1 );
    reg_read = MOTORPWM_mReadReg(InstancePtr->RegBaseAddress, 12);
    newVal = reg_read & clearLowOrderBitsMask;
    //
    MOTORPWM_mWriteReg(InstancePtr->RegBaseAddress, 12, newVal);
    InstancePtr->L298Mode = FALSE;
}



/************************** Function Definitions ***************************/