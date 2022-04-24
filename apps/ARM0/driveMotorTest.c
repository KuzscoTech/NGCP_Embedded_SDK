// https://www.mathworks.com/help/ident/ref/iddata.html


#include <stdio.h>
#include "xil_printf.h"
#include "motorPWM.h"
#include "motorEncoder.h"
#include "sleep.h"
#include "arm0_utilities.h"
#include "xtime_l.h"

#define DBG_DUTY      1
#define DBG_SLAVEREGS 0
#define TEST_INC      1
#define DBG_SYS_ID    0


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

    XTime tStart, tEnd;
    float deltaT;

    ugv_pwm pwmInst;
    ugv_qei qeiInst;

    print("Device initialized!\n\r");

    arm0_initializeDriveMotorPwm (&pwmInst);
    arm0_initializeDriveMotorQEI (&qeiInst);

    int flag = 1;
    int timeFlag = 0;
    u32 cnt_actual;
    duty = 0;
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

    	if(DBG_SYS_ID)
    	{
    		if(!timeFlag) {
    			XTime_GetTime(&tStart);
    			timeFlag = 1;
    		}
    		else {
    			XTime_GetTime(&tEnd);
    			deltaT = 1.0 * (tEnd-tStart) / COUNTS_PER_SECOND;
    			XTime_GetTime(&tStart);
    			printf("%d %d %t\r\n", RPM, (u32) duty, deltaT);
    		}
    	}


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


    	//sleep(1);
    	
    	if(TEST_INC) {
    		if(flag)
    			duty = (duty == 255) ? 255 : duty+5;
    		else
    			duty = (duty == 0) ? 0 : duty-5;
    		if(duty == 255) flag = 0;
    	}

    }

//////////////////
    return 0;
}
