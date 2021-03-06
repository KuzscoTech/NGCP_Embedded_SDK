#include <stdio.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xtime_l.h"
#include "driveMotor_utilities.h"

#define TEST_PID          0
#define TEST_INC          0

#define DBG_READABLE      0
#define DBG_PID           1
#define DBG_DUTY          1
#define DBG_PWM_SLAVEREGS 1
#define DBG_QEI_SLAVEREGS 0
#define DBG_SYS_ID        0


#define PWM_BASEADDR     XPAR_MOTORPWM_0_S00_AXI_BASEADDR
#define ENCODER_BASEADDR XPAR_MOTORENCODER_0_S00_AXI_BASEADDR

//#define PWM_MIN     0
//#define PWM_SCALE   39

int main()
{
	printf("Device initialized!\r\n");
	int Status;
	int incFlag;
	ugv_driveMotor driveMotorInst;
	ugv_qei        driveMotorQeiInst;
	ugv_pwm        driveMotorPwmInst;
	PIDController  driveMotorPidInst;

	XTime tStart, tEnd;
	float deltaT;
	int   timeFlag = 0;

	u32 cnt_actual;
	u32 reg_read;
	//
	Status = driveMotor_Initialize(&driveMotorInst, &driveMotorPwmInst,
			                       &driveMotorQeiInst, &driveMotorPidInst);
	if(Status != XST_SUCCESS) {
		printf("Stupid fucking drive motor initialization failed :(");
		return XST_FAILURE;
	}


	// MOTOR CONTROL PARAMETERS
	float driveMotor_setPoint = -80.0;

	u8    driveMotor_manualDuty = 80;
	_Bool driveMotor_manualDir  = DRIVEMOTOR_FORWARD;

	// MAIN LOOP
    while(1)
    {
    	// Set duty and direction depending on test mode
    	if(TEST_PID) {
    		driveMotor_setPidOutput(&driveMotorInst, driveMotor_setPoint);
    	}
    	else {
    		driveMotor_manualSetDutyDir(&driveMotorInst, driveMotor_manualDuty, driveMotor_manualDir);
    	}

    	// print motor status
    	if(!DBG_SYS_ID) {
			xil_printf("--------------------------------------------------\r\n");
			xil_printf("Current RPM: %d\r\n", driveMotorInst.currentRpm);
			if(driveMotorInst.currentDir == DRIVEMOTOR_REVERSE){
				xil_printf("Current Dir: REVERSE\r\n\n");
			}
			else {
				xil_printf("Current Dir: FORWARD\r\n\n");
			}
    	}

    	// if selected, print pid values
    	if(DBG_PID) {
    		printf("PID Setpoint   : %6.3f RPM\r\n", driveMotorInst.pid->setPoint);
    		printf("PID Input      : %6.3f RPM\r\n", driveMotorInst.pid->measurement);
    		printf("Raw PID Output : %6.3f\r\n",     driveMotorInst.pid->out);
    		printf("\r\n");
    	}
;
    	// if selected, print duty cycle register stats
        if(DBG_DUTY) {
        	cnt_actual = MOTORPWM_mReadReg(driveMotorInst.pwm->RegBaseAddress, 0);
        	cnt_actual = cnt_actual & 0xFF;
        	xil_printf("IP speed sel   : %d\r\n", cnt_actual);
        	cnt_actual = MOTORPWM_mReadReg(driveMotorInst.pwm->RegBaseAddress, 12);
            xil_printf("Counter Value  : %d\r\n", cnt_actual);
            xil_printf("Expected duty  : %d\r\n", driveMotorInst.pwm->speedSelect);
            xil_printf("Actual duty    : %d\r\n\n", (cnt_actual-DRIVEMOTOR_PWM_MIN)/DRIVEMOTOR_PWM_SCALE);
        }

        // if running sysid data mode, print time
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
    			printf("%d %d %t\r\n", driveMotorInst.currentRpm, driveMotorInst.pwm->speedSelect, deltaT);
    		}
    	}


    	if(DBG_PWM_SLAVEREGS) {
    		reg_read = MOTORPWM_mReadReg(driveMotorInst.pwm->RegBaseAddress, 0);
    		xil_printf("PWM slv_reg0       : %x\r\n", reg_read);
    		reg_read = MOTORPWM_mReadReg(driveMotorInst.pwm->RegBaseAddress, 4);
    		xil_printf("PWM slv_reg1       : %x\r\n", reg_read);
    		reg_read = MOTORPWM_mReadReg(driveMotorInst.pwm->RegBaseAddress, 8);
    		xil_printf("PWM slv_reg2       : %x\r\n", reg_read);
    		reg_read = MOTORPWM_mReadReg(driveMotorInst.pwm->RegBaseAddress, 12);
    		xil_printf("PWM slv_reg3       : %x\r\n", reg_read);
    	}
    	if(DBG_QEI_SLAVEREGS){
    		reg_read = MOTORENCODER_mReadReg(driveMotorInst.qei->RegBaseAddress, 0);
    		xil_printf("QEI slv_reg0       : %x\r\n", reg_read);
    		reg_read = MOTORENCODER_mReadReg(driveMotorInst.qei->RegBaseAddress, 4);
    		xil_printf("QEI slv_reg1       : %x\r\n", reg_read);
    		reg_read = MOTORENCODER_mReadReg(driveMotorInst.qei->RegBaseAddress, 8);
    		xil_printf("QEI slv_reg2       : %x\r\n", reg_read);
    		reg_read = MOTORENCODER_mReadReg(driveMotorInst.qei->RegBaseAddress, 12);
    		xil_printf("QEI slv_reg3       : %x\r\n", reg_read);
    	}

    	if(TEST_INC) {
    		if(TEST_PID) {
    			if(!incFlag) {
    				if(driveMotor_setPoint == 200) {
    					incFlag = 1;
    				}
    				driveMotor_setPoint += 5;
    			}
    			else{
    				if(driveMotor_setPoint == -200) {
    					incFlag = 0;
    				}
    				driveMotor_setPoint -= 5;
    			}
    		}

    		else {
    			if(!incFlag) {
    				if(driveMotor_manualDuty == 200) {
    					incFlag = 1;
    				}
    				driveMotor_manualDuty += 5;
    			}
    			else {
    				if(driveMotor_manualDuty == 0) {
    					incFlag = 0;
    				}
    				driveMotor_manualDuty -= 5;
    			}
    		}
    	}

    	if(DBG_READABLE) sleep(2);
    }

//////////////////
    return 0;
}
