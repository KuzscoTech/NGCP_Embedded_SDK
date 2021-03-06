#ifndef PID_CONTROLLER_H
#define PID_CONTROLLER_H


typedef struct {

	/* PID measurement */
	float measurement;
	float setPoint;

	/* Controller gains */
	float Kp;
	float Ki;
	float Kd;

	/* Derivative low-pass filter time constant */
	float tau;

	/* Output limits */
	float limMin;
	float limMax;
	
	/* Integrator limits */
	float limMinInt;
	float limMaxInt;

	/* Sample time (in seconds) */
	float T;

	/* Controller "memory" */
	float error;
	float integrator;
	float prevError;			/* Required for integrator */
	float differentiator;
	float prevMeasurement;		/* Required for differentiator */

	/* Controller output */
	float out;

} PIDController;

void  PIDController_Init(PIDController *pid);
float calculatePid(PIDController *pid, float setpoint, float measurement);
float calculatePidManualError(PIDController *pid,float setpoint, float measurement);

#endif
