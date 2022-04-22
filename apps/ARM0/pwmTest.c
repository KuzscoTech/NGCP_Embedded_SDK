
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "motorPWM.h"
#include "motorEncoder.h"
#include "sleep.h"

#define PWM_BASEADDR     XPAR_MOTORPWM_0_S00_AXI_BASEADDR
#define ENCODER_BASEADDR XPAR_MOTORENCODER_0_S00_AXI_BASEADDR

#define PWM_PERIOD 9995
#define PWM_MIN    5500
#define PWM_SCALE  13

//#define PWM_MIN     0
//#define PWM_SCALE   39
 
int main()
{
    init_platform();

    int Status;
    u32 reg0;
    u32 cnt_r;
    u32 RPM;
    u8  duty;
    _Bool dir;

    ugv_pwm pwmInst;
    ugv_qei qeiInst;

    print("Device initialized!\n\r");

    xil_printf("Initializing PWM...\r\n");
    Status = ugvPwm_Initialize(&pwmInst, PWM_BASEADDR);

    xil_printf("Configuring PWM...\r\n");
    ugvPwm_setDir(&pwmInst, FALSE);
    ugvPwm_setPeriod(&pwmInst, (u16) PWM_PERIOD);
    ugvPwm_setMinPeriod(&pwmInst, (u16) PWM_MIN);
    ugvPwm_setScaling(&pwmInst, (u8) PWM_SCALE);
    ugvPwm_Enable(&pwmInst, TRUE);
    ugvPwm_setIBT2Mode(&pwmInst);
    //ugvPwm_setL298Mode(&pwmInst);

    xil_printf("Initializing encoder...\r\n");
    ugvQei_Initialize(&qeiInst, ENCODER_BASEADDR);

    int flag = 1;
    u32 cnt_actual;
    duty = 200;


    while(1)
    {
    	ugvPwm_setDir(&pwmInst, TRUE);
        ugvPwm_setSpeed(&pwmInst, duty);

    	RPM = ugvQei_getRpm(&qeiInst);
    	dir = ugvQei_getDirection(&qeiInst);
    	if(!dir) RPM = -RPM;
    	xil_printf("--------------------------------------------------\r\n");
    	xil_printf("Current RPM: %d\r\n", RPM);

    	cnt_actual = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 12);
    	xil_printf("Counter Value  : %d\r\n", cnt_actual);
    	xil_printf("Expected duty  : %d\r\n", duty);
    	xil_printf("Actual duty    : %d\r\n", (cnt_actual-PWM_MIN)/PWM_SCALE);

        u32 reg_read = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 0);
        xil_printf("slv_reg0       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 4);
        xil_printf("slv_reg1       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 8);
        xil_printf("slv_reg2       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 12);
        xil_printf("slv_reg3       : %x\r\n", reg_read);

    	sleep(1);
    	//duty = duty+1;
/*
    	if(duty == 255) {
    		duty = 0;
    		ugvPwm_setDir(&pwmInst, FALSE);
    		sleep(2);
    	}
*/
    }

//////////////////
    cleanup_platform();
    return 0;
}
