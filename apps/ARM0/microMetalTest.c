#include <stdio.h>
//#include "platform.h"
#include "xil_printf.h"
#include "motorPWM.h"
#include "motorEncoder.h"
#include "sleep.h"
//#include "arm0_utilities.h"
#include "xparameters.h"

/* MICROMETAL MOTORS */
#define MGM0_PWM_BASEADDR           XPAR_MOTORPWM_1_S00_AXI_BASEADDR
#define MGM0_PWM_PERIOD             9995
#define MGM0_PWM_MIN                0
#define MGM0_PWM_SCALE              39
#define MGM0_QEI_BASEADDR           XPAR_MOTORENCODER_1_S00_AXI_BASEADDR
#define MGM0_GEAR_RATIO             1000
#define MGM0_RESOLUTION             12

#define MGM1_PWM_BASEADDR           XPAR_MOTORPWM_2_S00_AXI_BASEADDR
#define MGM1_PWM_PERIOD             9995
#define MGM1_PWM_MIN                0
#define MGM1_PWM_SCALE              39
#define MGM1_QEI_BASEADDR           XPAR_MOTORENCODER_2_S00_AXI_BASEADDR
#define MGM1_GEAR_RATIO             1000
#define MGM1_RESOLUTION             12

int arm0_initializeMicroMetalPwm(ugv_pwm *InstancePtr, u8 motorId)
{
    int Status;
    //
    if(motorId == 0)
    {
        Status = ugvPwm_Initialize(InstancePtr, MGM0_PWM_BASEADDR);
        if(Status != XST_SUCCESS) {
            printf("Drive Motor PWM initialization failed...\r\n");
            return XST_FAILURE;
        }
        ugvPwm_setPeriod   (InstancePtr, (u16) MGM0_PWM_PERIOD);
        ugvPwm_setMinPeriod(InstancePtr, (u16) MGM0_PWM_MIN);
        ugvPwm_setScaling  (InstancePtr, (u8)  MGM0_PWM_SCALE);
        ugvPwm_setL298Mode (InstancePtr);
        ugvPwm_Enable      (InstancePtr, TRUE);
        return XST_SUCCESS;
    }
    else if(motorId == 1)
    {
        Status = ugvPwm_Initialize(InstancePtr, MGM1_PWM_BASEADDR);
        if(Status != XST_SUCCESS) {
            printf("Drive Motor PWM initialization failed...\r\n");
            return XST_FAILURE;
        }
        ugvPwm_setPeriod   (InstancePtr, (u16) MGM1_PWM_PERIOD);
        ugvPwm_setMinPeriod(InstancePtr, (u16) MGM1_PWM_MIN);
        ugvPwm_setScaling  (InstancePtr, (u8)  MGM1_PWM_SCALE);
        ugvPwm_setL298Mode (InstancePtr);
        ugvPwm_Enable      (InstancePtr, TRUE);
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

int arm0_initializeMicroMetalQEI(ugv_qei *InstancePtr, u8 qeiId)
{
    int Status;
    if(qeiId == 0)
    {
        Status = ugvQei_Initialize(InstancePtr, MGM0_QEI_BASEADDR);
        if(Status != XST_SUCCESS) {
            printf("Micrometal Encoder initialization failed...\r\n");
            return XST_FAILURE;
        }
        ugvQei_setMicroMetalRatio      (InstancePtr, MGM0_GEAR_RATIO);
        ugvQei_setMicroMetalResolution (InstancePtr, MGM0_RESOLUTION);
        ugvQei_setMicroMetalMode       (InstancePtr, TRUE);
        ugvPwm_Enable                  (InstancePtr, TRUE);
        return XST_SUCCESS;
    }
    else if(qeiId == 1)
    {
        Status = ugvQei_Initialize(InstancePtr, MGM1_QEI_BASEADDR);
        if(Status != XST_SUCCESS) {
            printf("Micrometal Encoder initialization failed...\r\n");
            return XST_FAILURE;
        }
        ugvQei_setMicroMetalRatio      (InstancePtr, MGM1_GEAR_RATIO);
        ugvQei_setMicroMetalResolution (InstancePtr, MGM1_RESOLUTION);
        ugvQei_setMicroMetalMode       (InstancePtr, TRUE);
        ugvPwm_Enable                  (InstancePtr, TRUE);
        return XST_SUCCESS;
    }
    else return XST_FAILURE;
}

int main()
{
	int Status;
    u32 duty;
    ugv_pwm mgm0_pwmInst;
    ugv_qei mgm0_qeiInst;
    ugv_pwm mgm1_pwmInst;
    ugv_qei mgm1_qeiInst;

    u32   mgm0_rpm, mgm1_rpm;
    int mgm0_pos, mgm1_pos;
    u32   cnt_actual;
    _Bool mgm0_dir, mgm1_dir;


    u32 duty_actual;
    float duty_percentage;

    print("Device initialized!\n\r");

    Status = arm0_initializeMicroMetalPwm(&mgm0_pwmInst, 0);
    Status = arm0_initializeMicroMetalPwm(&mgm1_pwmInst, 1);
    Status = arm0_initializeMicroMetalQEI(&mgm0_qeiInst, 0);
    Status = arm0_initializeMicroMetalQEI(&mgm1_qeiInst, 1);

    float rpm_reg;
    float rpm_reg_float;
    float rpm_reg1;
    float rpm_reg_float1;

    duty = 150;
    _Bool dir = TRUE;

    while(1)
    {
        // Set motor speed and direction
    	ugvPwm_setDir   (&mgm0_pwmInst, dir);
    	ugvPwm_setDir   (&mgm1_pwmInst, dir);
        ugvPwm_setSpeed (&mgm0_pwmInst, duty);
        ugvPwm_setSpeed (&mgm1_pwmInst, duty);

        // Read motor info
        mgm0_rpm = ugvQei_getRpm       (&mgm0_qeiInst);
    	mgm0_dir = ugvQei_getDirection (&mgm0_qeiInst);
        mgm0_pos = ugvQei_getPosition  (&mgm0_qeiInst);

        if(!mgm0_dir) mgm0_rpm = -mgm0_rpm;

        rpm_reg_float  = ugvQei_convertMgmPosition(&mgm0_qeiInst);
        cnt_actual = MOTORPWM_mReadReg(mgm0_pwmInst.RegBaseAddress, 8);

        printf("---------------------------------------------------------------\r\n");
    	printf("MGM0 Current RPM      : %d\r\n", mgm0_rpm);
        printf("MGM0 Current Position : %d\r\n", mgm0_pos);
        printf("MGM0 Position Reg     : %x\r\n\n", cnt_actual);

        /*
    	cnt_actual = MOTORPWM_mReadReg(mgm0_pwmInst.RegBaseAddress, 12);
        duty_percentage = (float) duty/255*100;
    	printf("MGM0 Expected duty  : %d  ||  %3.3f%%\r\n", duty, duty_percentage);
        duty_actual = ((cnt_actual-MGM0_PWM_MIN)/MGM0_PWM_SCALE);
        duty_percentage = (float) duty_actual/255*100 ;
    	printf("MGM0 Actual duty    : %d  ||  %3.3f%%\r\n\n", duty_actual, duty_percentage);
		*/

        if(mgm0_pos == 359 || mgm0_pos == 0) {
        	dir = !dir;
        }
    }

    return 0;
}