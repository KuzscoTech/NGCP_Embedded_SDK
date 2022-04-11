
#ifndef MOTORCONTROLLER_H
#define MOTORCONTROLLER_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

#define MOTORCONTROLLER_S00_AXI_SLV_REG0_OFFSET 0
#define MOTORCONTROLLER_S00_AXI_SLV_REG1_OFFSET 4
#define MOTORCONTROLLER_S00_AXI_SLV_REG2_OFFSET 8
#define MOTORCONTROLLER_S00_AXI_SLV_REG3_OFFSET 12

#define MOTOR_MAIN_CTRL_OFFSET 0
#define MOTOR_RPM_OFFSET       4
#define MOTOR_PI_CONFIG_OFFSET 8
#define MOTOR_PI_SET_OFFSET    12

#define FIXED_POINT_FRACTIONAL_BITS 5

/* REGISTER MAP:

      -- MAIN CONTROL REGISTER --
| +0:  | [0]     |   motor_en     | r/w
|      | [1]     |   pi_en        | r/w
|      | [2]     |   dir          | r/w
|      | [3:10]  |   duty cycle   | r/w
|      | [11]    |   pi_overflow  | r
|      | [19:12] |   current duty cycle | r
      
         -- RPM REGISTER --
| +4:  | [31:0]  |   rpm         | r
  
     -- PI CONTROL REGISTER 1 --
| +8:  | [15:0]  |   Kp          | r/w  | 11'5 signed
|      | [31:16] |   Ki          | r/w  | 11'5 signed
 
  
     -- PI CONTROL REGISTER 2 --
| +12: | [31:0]  |   setpoint    | r/w

     -- STATUS REGISTER --
  +16: | [7:0]   | current duty cycle | r
*/

/**************************** Type Definitions *****************************/
typedef struct {
    UINTPTR RegBaseAddress;
    _Bool   IsEnabled;
    _Bool   IsPiEnabled;
    //
    u8      DutyCycle;
    u8      ActualDutyCycle;
    //
    _Bool   PiOverflow;
    double  Kp;
    double  Ki;
    // 
    u32     Rpm;
    _Bool   CurrentDirection;
    //
    _Bool   setDirection;
    u32     Setpoint;
} ugv_motor;

typedef u16 fixed_point_t;

/**
 *
 * Write a value to a MOTORCONTROLLER register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the MOTORCONTROLLERdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void MOTORCONTROLLER_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define MOTORCONTROLLER_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a MOTORCONTROLLER register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the MOTORCONTROLLER device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 MOTORCONTROLLER_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define MOTORCONTROLLER_mReadReg(BaseAddress, RegOffset) \
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
 * @param   baseaddr_p is the base address of the MOTORCONTROLLER instance to be worked on.
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
XStatus MOTORCONTROLLER_Reg_SelfTest(void * baseaddr_p);


/// Converts 11.5 format -> double
double fixed_to_double(fixed_point_t input);

/// Converts double to 11.5 format
fixed_point_t double_to_fixed(double input);

int ugvMotor_Initialize(ugv_motor *InstancePtr, UINTPTR EffectiveAddr);

int ugvMotor_Enable(ugv_motor *InstancePtr);
int ugvMotor_Disable(ugv_motor *InstancePtr);

int ugvMotor_setDir(ugv_motor *InstancePtr, _Bool dir);

int ugvMotor_setManualMode(ugv_motor *InstancePtr);
int ugvMotor_setDutyCycle(ugv_motor *InstancePtr, u8 dutyCycle);

int ugvMotor_piConfig(ugv_motor *InstancePtr, double KI, double KP);
int ugvMotor_piEnable(ugv_motor *InstancePtr);
void ugvMotor_piDisable(ugv_motor *InstancePtr);
int ugvMotor_piSetSpeed(ugv_motor *InstancePtr, int RPM);
int ugvMotor_getPiStatus(ugv_motor *InstancePtr);

int ugvMotor_getRPM(ugv_motor *InstancePtr);
u32 ugvMotor_getDutyCycle(ugv_motor *InstancePtr);

#endif // MOTORCONTROLLER_H
