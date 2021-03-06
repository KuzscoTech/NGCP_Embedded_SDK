
#ifndef MOTORENCODER_H
#define MOTORENCODER_H

/********** REGISTER MAP *********/
/*
    +0: 
        [0] -> direction
        [1] -> position reset
    
    +4:
        [31:0] -> rpm

    +8:
        [31:0] -> position
*/

/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define MOTORENCODER_S00_AXI_SLV_REG0_OFFSET 0
#define MOTORENCODER_S00_AXI_SLV_REG1_OFFSET 4
#define MOTORENCODER_S00_AXI_SLV_REG2_OFFSET 8
#define MOTORENCODER_S00_AXI_SLV_REG3_OFFSET 12


/**************************** Type Definitions *****************************/
typedef struct {
    UINTPTR RegBaseAddress;
    _Bool   CurrentDirection;
    u32     CurrentRpm;
    float   CurrentPosition;
    //
    _Bool   MicroMetalMode;
    u32     MicroMetalRatio;
    u32     MicroMetalResolution;
} ugv_qei;
/**
 *
 * Write a value to a MOTORENCODER register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the MOTORENCODERdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void MOTORENCODER_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define MOTORENCODER_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a MOTORENCODER register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the MOTORENCODER device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 MOTORENCODER_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define MOTORENCODER_mReadReg(BaseAddress, RegOffset) \
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
 * @param   baseaddr_p is the base address of the MOTORENCODER instance to be worked on.
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
XStatus MOTORENCODER_Reg_SelfTest(void * baseaddr_p);

int ugvQei_Initialize(ugv_qei *InstancePtr, UINTPTR EffectiveAddr);    
_Bool ugvQei_getDirection(ugv_qei *InstancePtr);
u32 ugvQei_getRpm(ugv_qei *InstancePtr);
void ugvQei_clearPosition(ugv_qei *InstancePtr);
u32 ugvQei_getPosition(ugv_qei *InstancePtr);
float ugvQei_convertMgmPosition(ugv_qei *InstancePtr);
void ugvQei_setMicroMetalMode(ugv_qei *InstancePtr, _Bool val);
void ugvQei_setMicroMetalRatio(ugv_qei *InstancePtr, u32 ratio);
void ugvQei_setMicroMetalResolution(ugv_qei *InstancePtr, u32 res);

#endif // MOTORENCODER_H
