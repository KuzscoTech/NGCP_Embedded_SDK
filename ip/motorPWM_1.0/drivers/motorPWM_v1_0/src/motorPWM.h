
#ifndef MOTORPWM_H
#define MOTORPWM_H

/**** REGISTER MAP *****
 * 
 * REG0: +0
 * [9]   -> enable
 * [8]   -> direction
 * [7:0] -> speed select 
 * 
 * REG1: +4
 * [15:0] -> motor stop period (clock cycles)
 * 
 * REG2: +8
 * [7:0] -> speed scaling value
 * 
 * REG3: +12
 * [15:0] -> motor max period (clock cycles)
 
*/ 


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define bit_read(data, n) (((data) >> (n)) & 0x01)

#define MOTORPWM_S00_AXI_SLV_REG0_OFFSET 0
#define MOTORPWM_S00_AXI_SLV_REG1_OFFSET 4
#define MOTORPWM_S00_AXI_SLV_REG2_OFFSET 8
#define MOTORPWM_S00_AXI_SLV_REG3_OFFSET 12


typedef struct {
    UINTPTR RegBaseAddress;
    _Bool   IsEnabled;
    _Bool   L298Mode;
    _Bool   CurrentDirection;
    //
    _Bool   allowMax;
    _Bool   setDirection;
    u8      speedSelect;
    u32     reg0;
    //
    u16     period;
    u16     minPeriod;
    u8      spdScaling;
} ugv_pwm;

/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a MOTORPWM register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the MOTORPWMdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void MOTORPWM_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define MOTORPWM_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a MOTORPWM register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the MOTORPWM device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 MOTORPWM_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define MOTORPWM_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the MOTORPWM instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus MOTORPWM_Reg_SelfTest(void * baseaddr_p);


int ugvPwm_Initialize(ugv_pwm *InstancePtr, UINTPTR EffectiveAddr);
/**
 * @brief Set the speed object
 * @param speed_sel 
 */
void ugvPwm_setSpeed(ugv_pwm *InstancePtr, u8 speed_sel);

/**
 * @brief Set the dir object
 * @param dir 
 */
void ugvPwm_setDir(ugv_pwm *InstancePtr, _Bool dir);

/**
 * @brief Set the en object
 * @param en 
 */
void ugvPwm_Enable(ugv_pwm *InstancePtr, _Bool en);

/**
 * @brief Set the min speed counter value in clock counts
 * 
 * @param InstancePtr 
 * @param min 
 */
void ugvPwm_setMinPeriod(ugv_pwm *InstancePtr, u16 min);

/**
 * @brief Set the PWM period in clock counts
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param val is the period of the PWM in clock counts
 */
void ugvPwm_setPeriod(ugv_pwm *InstancePtr, u16 min);

/**
 * @brief Set the speed scaling constant.
 * 
 * @param InstancePtr 
 * @param scale 
 */
void ugvPwm_setScaling(ugv_pwm *InstancePtr, u8 scale);

/**
 * @brief Set L298 mode
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 */
void ugvPwm_setL298Mode(ugv_pwm *InstancePtr);

/**
 * @brief Set IBT2 mode
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 */
void ugvPwm_setIBT2Mode(ugv_pwm *InstancePtr);

#endif // MOTORPWM_H


