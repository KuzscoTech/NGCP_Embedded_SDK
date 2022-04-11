#include <stdio.h>
#include <stdlib.h>
#include "xparameters.h"

#include "pid.h"
#include "motorEncoder.h"
#include "motorPWM.h"
#include "sleep.h"
#include "xtime_l.h"

#define PWM_BASEADDR XPAR_MOTORPWM_0_S00_AXI_BASEADDR
#define QEI_BASEADDR XPAR_MOTORENCODER_0_S00_AXI_BASEADDR

#define PWM_MIN     5500
#define PWM_SCALE   14

/* Controller parameters */
//#define PID_KP  0.6f
//#define PID_KI  1.0f
//#define PID_KD  0.25f
#define PID_KP  0.5f
#define PID_KI  0.0f
#define PID_KD  0.0f

#define PID_TAU 0.02f

#define PID_LIM_MIN  0.0f
#define PID_LIM_MAX  255.0f

#define PID_LIM_MIN_INT -100.0f
#define PID_LIM_MAX_INT  100.0f


/* Simulated dynamical system (first order) */
float TestSystem_Update(float inp);

int main()
{
    xil_printf("\r\nDevice initialized!\r\n\n");

    /* Initialise PID controller */
    PIDController pid = { PID_KP, PID_KI, PID_KD,
                          PID_TAU,
                          PID_LIM_MIN, PID_LIM_MAX,
			  PID_LIM_MIN_INT, PID_LIM_MAX_INT,
                          SAMPLE_TIME_S };

    ugv_qei qei_inst;
    ugv_pwm pwm_inst;
    XTime tStart, tEnd;

    xil_printf("Initializing PWM...\r\n");
    ugvPwm_Initialize(&pwm_inst, PWM_BASEADDR);

    xil_printf("Initializing QEI...\r\n");
    ugvQei_Initialize(&qei_inst, QEI_BASEADDR);

    // configure pwm
    xil_printf("Configuring PWM...\r\n");
    ugvPwm_setDir(&pwm_inst, FALSE);
    ugvPwm_setMinPeriod(&pwm_inst, (u16) PWM_MIN);
    ugvPwm_setScaling(&pwm_inst, (u8) PWM_SCALE);
    ugvPwm_Enable(&pwm_inst, TRUE);

    xil_printf("Initializing PID...\r\n");
    PIDController_Init(&pid);

    /*
    xil_printf("sanity check\r\n");
    for(int i=0; i<1000000; i++) {
        ugvQei_getRpm(&qei_inst);
        xil_printf("QEI RPM: %d\r\n", qei_inst.CurrentRpm);
    }
	*/
    
    float setpoint = 250.0f;
    //
    u32 rpm;
    ugvQei_getRpm(&qei_inst);

    u32 temp_rpm = 0;
    float temp_pidout  = 0;
    int flag = 0;
    float measurement = 0;
    float deltaT;
    
    while (1) {

    	// measure current rpm
    	rpm = ugvQei_getRpm(&qei_inst);
        measurement = (float) rpm;

        xil_printf("-----------------------\r\n");
        printf("RPM Measurement    : %6.3f\r\n",  measurement);
        printf("Current PID Output : %6.3f\r\n", pid.out);
        

        if(temp_rpm != rpm) {
        	if(flag) {
        		XTime_GetTime(&tEnd);
        		deltaT = 1.0 * (tEnd-tStart) / (COUNTS_PER_SECOND);
        		XTime_GetTime(&tStart);
                printf("Time Since Last RPM Change: %.5f s\r\n", deltaT);
        	}
        	else {
        		flag = 1;
        		XTime_GetTime(&tStart);
        	}
        }
        xil_printf("-----------------------\r\n\n");
        temp_rpm = rpm;
            //xil_printf("%f\t%f\r\n", measurement, pid.out)
        //}

        // compute new control signal
        calculatePid(&pid, setpoint, measurement);
        ugvPwm_setSpeed(&pwm_inst, (u8) pid.out);
    }

    return 0;
}

// float TestSystem_Update(float inp) {

//     static float output = 0.0f;
//     static const float alpha = 0.02f;

//     output = (SAMPLE_TIME_S * inp + output) / (1.0f + alpha * SAMPLE_TIME_S);

//     return output;
// }
