
#include <stdio.h>
#include "xil_printf.h"
#include "motorPWM.h"
#include "motorEncoder.h"
#include "sleep.h"
#include "arm0_utilities.h"

#define DBG_DUTY      1
#define DBG_SLAVEREGS 0
#define TEST_INC      0


#define PWM_BASEADDR     XPAR_MOTORPWM_0_S00_AXI_BASEADDR
#define ENCODER_BASEADDR XPAR_MOTORENCODER_0_S00_AXI_BASEADDR

//#define PWM_MIN     0
//#define PWM_SCALE   39

int main()
{

    int Status;
    u32 reg0;
    u32 cnt_r;
    u32 RPM;
    u8  duty;
    _Bool dir;

    ugv_pwm pwmInst;
    ugv_qei qeiInst;

    print("Device initialized!\n\r");



/*
 *  xil_printf("Initializing PWM...\r\n");
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
*/
    arm0_initializeDriveMotorPwm (&pwmInst);
    arm0_initializeDriveMotorQEI (&qeiInst);

    int flag = 1;
    u32 cnt_actual;
    duty = 250;
    dir = MOTOR_FORWARD;


    u32   prevRpm;
    _Bool prevDir;

    while(1)
    {
    	ugvPwm_setDir(&pwmInst, dir);
        ugvPwm_setSpeed(&pwmInst, duty);

        prevRpm = RPM;
        prevDir = dir;

    	RPM = ugvQei_getRpm(&qeiInst);
    	dir = ugvQei_getDirection(&qeiInst);
    	if(!dir) RPM = -RPM;



    	xil_printf("--------------------------------------------------\r\n");
    	xil_printf("Current RPM: %d\r\n", RPM);

    	cnt_actual = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 12);

         if(DBG_DUTY) {
            xil_printf("Counter Value  : %d\r\n", cnt_actual);
        }
    	xil_printf("Expected duty  : %d\r\n", duty);
    	xil_printf("Actual duty    : %d\r\n", (cnt_actual-DRIVEMOTOR_PWM_MIN)/DRIVEMOTOR_PWM_SCALE);


    	if(DBG_SLAVEREGS) {
    		u32 reg_read = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 0);
    		xil_printf("PWM slv_reg0       : %x\r\n", reg_read);
    		reg_read = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 4);
    		xil_printf("PWM slv_reg1       : %x\r\n", reg_read);
    		reg_read = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 8);
    		xil_printf("PWM slv_reg2       : %x\r\n", reg_read);
    		reg_read = MOTORPWM_mReadReg(pwmInst.RegBaseAddress, 12);
    		xil_printf("PWM slv_reg3       : %x\r\n", reg_read);

    		reg_read = MOTORENCODER_mReadReg(qeiInst.RegBaseAddress, 0);
    		xil_printf("QEI slv_reg0       : %x\r\n", reg_read);
    		reg_read = MOTORENCODER_mReadReg(qeiInst.RegBaseAddress, 4);
    		xil_printf("QEI slv_reg1       : %x\r\n", reg_read);
    		reg_read = MOTORENCODER_mReadReg(qeiInst.RegBaseAddress, 8);
    		xil_printf("QEI slv_reg2       : %x\r\n", reg_read);
    		reg_read = MOTORENCODER_mReadReg(qeiInst.RegBaseAddress, 12);
    		xil_printf("QEI slv_reg3       : %x\r\n", reg_read);
    	}
    	if(dir == MOTOR_REVERSE && RPM != 0)
    	{
    		xil_printf("ENCODER ERROR!\r\n");
    		break;
    	}


    	//sleep(1);
    	
    	if(TEST_INC) {
    		duty = duty + 5;
    		if(duty == 255) {
    		    dir  = !dir;
    		    duty = 0;
    			ugvPwm_setDir(&pwmInst, dir);
    			sleep(2);
    		}
    	}

    }

//////////////////
    return 0;
}
