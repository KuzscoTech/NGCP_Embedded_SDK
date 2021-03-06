
#include <stdio.h>
#include "sleep.h"
#include "xtime_l.h"
#include "servoMotor_utilities.h"

#define TEST_PID        1
#define TEST_SWEEP      0

#define DBG_READABLE    0	// makes it sleep 1 second
#define DBG_PID         1	// prints pid setpoint
#define DBG_ADC_VOLT    1
#define DBG_SERVO_REGS  0
#define DBG_SYS_ID      0

int main()
{
	printf("Device initialized!\r\n");

	// VARIABLE DECLARATION
	int Status;
	ugv_servoMotor  servoMotorInst;
	ugv_servo       servoPwmInst;
	XSysMon         servoAdcInst;
	PIDController   servoPidInst;
	u32 reg_read;

	// MOTOR CONTROL PARAMETERS
	float servoMotor_setPoint   = 135.0;
	u32   servoMotor_manualDuty = 250.0;
	int   sweepFlag;

	// SYSID TIME MEASUREMENT
	XTime tStart, tEnd;
	float deltaT;
	int timeFlag = 0;

	// SERVO INITIALIZATION
	Status = servoMotor_Initialize(&servoMotorInst, &servoPwmInst, &servoAdcInst, &servoPidInst);
	if(Status != XST_SUCCESS) {
		printf("Servo initialization failed!\r\n");
		return XST_FAILURE;
	}
	printf("Servo initialized!\r\n");

	// MAIN LOOP
	while(1)
	{
		// set duty
		if(TEST_PID) {
			servoMotor_setPidOutput(&servoMotorInst, &servoMotor_setPoint);
		}
		else {
			//servoMotor_setManualDuty(&servoMotorInst, servoMotor_manualDuty);
			Xil_Out32(XPAR_SERVOZ3_0_S00_AXI_BASEADDR, servoMotor_manualDuty);
		}

		// update position
		servoMotor_getPosition(&servoMotorInst);

		// adjust setpoint if sweep
		if(TEST_SWEEP)
		{
			if(sweepFlag) {
				if(servoMotorInst.currentPos == 75) {
						sweepFlag = 0;
				}
				servoMotor_setPoint   -= 5;
				servoMotor_manualDuty -= 5;
			}
			else {
				if(servoMotorInst.currentPos == 250) {
					sweepFlag = 1;
				}
				servoMotor_setPoint   += 5;
				servoMotor_manualDuty += 5;
			}
		}

		// print motor status
		if(DBG_SYS_ID == 0) {
			xil_printf("--------------------------------------------------\r\n");
			xil_printf("Current Pos: %d\r\n", servoMotorInst.currentPos);
		}

		if(DBG_PID) {
			printf("PID Setpoint   : %6.3f degrees\r\n", servoMotorInst.pid->setPoint);
			printf("PID Input      : %6.3f degrees\r\n", servoMotorInst.pid->measurement);
			printf("Raw PID Output : %6.3f\r\n", servoMotorInst.pid->out);
			printf("Error: %3.3f\r\n", servoMotorInst.pid->prevError);
			printf("\r\n");
		}

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
				printf("%d %d %t\r\n", servoMotorInst.currentPos, servoMotorInst.pwm->inputVal, deltaT);
			}
		}

		if(DBG_SERVO_REGS) {
			reg_read = SERVOZ3_mReadReg(servoMotorInst.pwm->RegBaseAddress, 0);
			xil_printf("PWM slv_reg0       : %x\r\n", reg_read);
		}

		if(DBG_ADC_VOLT) {
			printf("ADC Voltage  : %0d V \r\n", servoMotorInst.adcVoltage);
		}

		if(DBG_READABLE) sleep(1);

	}







}
