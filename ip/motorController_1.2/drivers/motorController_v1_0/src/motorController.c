
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

/***************************** Include Files *******************************/
#include "motorController.h"

/************************** Function Definitions ***************************/
/** 
 * @brief Function to convert a double to 11'5 fixed point.
 * 
 * @param input is a double to convert.
 * @return fixed_point_t is a u16.
**/
fixed_point_t double_to_fixed(double input)
{
    return (fixed_point_t)(input * (1 << FIXED_POINT_FRACTIONAL_BITS));
}

/**
 * @brief Function to convert a 16 bit 11'5 fixed point to double.
 * 
 * @param input is a 16 bit 11'5 fixed point value as u16.
 * @param fractional_bits is number of fractional bits.
 * @return double is the fixed point value as a double.
 */
double fixed16_to_double(fixed_point_t input)
{
    return ((double)input / (double)(1 << 5));
}


/**
 * @brief Function to initialize a ugv_motor instance.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param EffectiveAddr is the base address of the ugv_motor instance.
 */
int ugvMotor_Initialize(ugv_motor *InstancePtr, UINTPTR EffectiveAddr)
{
    int return_val = XST_FAILURE;
    do  {
            if(EffectiveAddr == (UINTPTR)NULL)
            {
                break;
            }
            InstancePtr->RegBaseAddress = EffectiveAddr;
            // set initial values
            MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET, 0);
            MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_PI_CONFIG_OFFSET, 0);
            MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_PI_SET_OFFSET, 0);
            //
            return_val = XST_SUCCESS;
    } while (FALSE);
    return return_val;
}

/**
 * @brief Function to enable a ugv_motor instance.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @return int XST_SUCCESS if sucessful, else XST_FAILURE.
 */
int ugvMotor_Enable(ugv_motor *InstancePtr) 
{
    u32 temp;
    if(InstancePtr->RegBaseAddress != 0) {
        temp = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET);
        temp |= 1 << 0; 
        MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET, temp);
        InstancePtr->IsEnabled = TRUE;
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

/**
 * @brief Function to disable a ugv_motor instance.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 */
int ugvMotor_Disable(ugv_motor *InstancePtr)
{
    u32 temp;
    if(InstancePtr->RegBaseAddress != 0) {
        temp = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET);
        temp &= ~(1 << 0);
        MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET, temp);
        InstancePtr->IsEnabled = FALSE;
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}


int ugvMotor_setDir(ugv_motor *InstancePtr, _Bool dir)
{
    u32 temp;
    int return_val = XST_FAILURE;
    do  {
            if(InstancePtr->RegBaseAddress == NULL)
            {
                break;
            }
            InstancePtr->setDirection = dir;
            temp = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET);
            temp |= 1 << 2;
            MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET, temp);
            return_val = XST_SUCCESS;
    } while (FALSE);
    return return_val;
}

/**
 * @brief Function to set ugv_motor PI constants.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param KI is a double representing integral gain. Will be converted to 11'5.
 * @param KP is a double representing proportional gain. Will be converted to 11'5.
 * @return int XST_SUCCESS if successful, else XST_FAILURE.
 */
int ugvMotor_piConfig(ugv_motor *InstancePtr, double KI, double KP)
{
    u16 fixed_ki, fixed_kp;
    u32 regVal;
    //
    if(InstancePtr->RegBaseAddress != 0) {
        InstancePtr->Kp = KP;
        InstancePtr->Ki = KI;

        // convert KI to fixed point
        fixed_ki = (u16) double_to_fixed(InstancePtr->Kp);
        fixed_kp = (u16) double_to_fixed(InstancePtr->Ki);
        regVal = ((u32)fixed_ki << 16) +  fixed_kp;

        // set PI constants
        MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_PI_CONFIG_OFFSET, regVal);

        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

/**
 * @brief A function to enable the PI controller of the motor. The motor master enable is set seperately.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @return int XSt_SUCCESS if successful, else XST_FAILURE.
 */
int ugvMotor_piEnable(ugv_motor *InstancePtr)
{
    u32 temp;

    // enable PI
    if(InstancePtr->RegBaseAddress != 0) {
        temp = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET);
        temp |= 1 << 1; 
        MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET, temp);
        InstancePtr->IsPiEnabled = TRUE;
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

/**
 * @brief A function to disable the ugv_motor PI controller. This switches the controller
 *        to manual mode if the master enable is set.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
void ugvMotor_piDisable(ugv_motor *InstancePtr)
{
    u32 temp;

    // disable PI
    if(InstancePtr->RegBaseAddress != 0) {
        temp = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET);
        temp &= ~(1 << 1);
        MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET, temp);
        
        InstancePtr->IsPiEnabled = FALSE;
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

/**
 * @brief A function to fetch the RPM of a ugv_motor instance.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @return int rpm is the rpm of the instance.
 */
int ugvMotor_getRPM(ugv_motor *InstancePtr)
{
    int rpm = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_RPM_OFFSET);
    InstancePtr->Rpm = rpm;
    return rpm;
}

/**
 * @brief A function to set the setpoint of the ugv_motor PI controller. The master enable AND
 *        PI controller enable MUST ALREADY BE SET. This is to prevent PI controller error
 *        register overflows.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param RPM is the desired RPM.
 * @return int XST_SUCCESS if successful, else XST_FAILURE.
 */
int ugvMotor_piSetSpeed(ugv_motor *InstancePtr, int RPM)
{
    if(InstancePtr->IsEnabled & InstancePtr->IsPiEnabled) {
        InstancePtr->Setpoint = RPM;
        MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_PI_SET_OFFSET, RPM);
        return XST_SUCCESS;
    }
    return XST_FAILURE;
}

/**
 * @brief A function to reset the PI controller and its setpoint. Kp and Ki values 
 *        will be preserved. 
 * 
 * @param InstancePtr 
 * @return int XST_SUCCESS if successful, else XST_FAILURE.
 */
int ugvMotor_piReset(ugv_motor *InstancePtr)
{
    if(InstancePtr -> RegBaseAddress != 0) 
    {
        InstancePtr->Setpoint = 0;
        InstancePtr->PiOverflow = FALSE;
        InstancePtr->IsPiEnabled = TRUE;
        //
        ugvMotor_piDisable(InstancePtr);
        ugvMotor_Enable(InstancePtr);
        return XST_SUCCESS;
    }
    return XST_FAILURE;
}

/**
 * @brief A function to set manual control mode for the ugv_motor. It sets the master enable
 *        and disables the PI controller.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @return int XST_SUCCESS if successful, else XST_FAILURE.
 */
int ugvMotor_setManualMode(ugv_motor *InstancePtr)
{
    if(InstancePtr->RegBaseAddress != NULL) {
        InstancePtr->IsPiEnabled = FALSE;
        InstancePtr->IsEnabled = TRUE;
        ugvMotor_Enable(InstancePtr);
        ugvMotor_piDisable(InstancePtr);
        
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

/**
 * @brief A function to set the duty cycle of the ugv_motor if manual mode is enabled.
 * 
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @param dutyCycle is the desired duty cycle, 0-255.
 * @return int XST_SUCCESS if successful, else XST_FAILURE.
 */
int ugvMotor_setDutyCycle(ugv_motor *InstancePtr, u8 dutyCycle)
{
	u32 temp;
    temp = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET);
    if(InstancePtr->IsEnabled & !InstancePtr->IsPiEnabled) {
        InstancePtr->DutyCycle = dutyCycle;
        temp = (dutyCycle << 3) | (temp & 0x07) ;
        MOTORCONTROLLER_mWriteReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET, temp);
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

/**
 * @brief A function to return the actual duty cycle being driven to
 *        the PWM generator.
 *
 * @param InstancePtr is a pointer to the ugv_motor instance.
 * @return u8 dutyCycle is the actual duty cycle being created by the PWM
 *         generator.
 */
u32 ugvMotor_getDutyCycle(ugv_motor *InstancePtr)
{
    if(InstancePtr->RegBaseAddress != 0) {
        u32 temp;
        temp = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET);
        /*
        temp = (temp & 0x1FE000) >> 13;
        InstancePtr->ActualDutyCycle = (u8) temp;
        return (u8) temp;
        */
       return temp;
    }
    else return XST_FAILURE;
}

int ugvMotor_getPiStatus(ugv_motor *InstancePtr) 
{
    if(InstancePtr->RegBaseAddress != 0) {
        u32 temp;
        temp = MOTORCONTROLLER_mReadReg(InstancePtr->RegBaseAddress, MOTOR_MAIN_CTRL_OFFSET);
        temp = (temp & 0x800) >> 11;
        if(temp == 1) {
            InstancePtr->PiOverflow = TRUE;
            return XST_FAILURE;
        }
        else {
            InstancePtr->PiOverflow = FALSE;
            return XST_SUCCESS;
        } 
    }
    else return XST_FAILURE;
}