#include "pid.h"

void PIDController_Init(PIDController *pid){
	pid->error = 0.0f;
    pid->integrator = 0.0f;
    pid->prevError  = 0.0f;

	pid->differentiator  = 0.0f;
	pid->prevMeasurement = 0.0f;

	pid->out = 0.0f;
}


float calculatePid(PIDController *pid,float setpoint, float measurement){
    float error = setpoint - measurement;
    
    float proportional = pid->Kp * error;

    pid->integrator = pid->integrator + 0.5f * pid->Ki * pid->T * (error + pid->prevError);

    if (pid->integrator > pid->limMaxInt) {
        pid->integrator = pid->limMaxInt;
    } else if (pid->integrator < pid->limMinInt) {
        pid->integrator = pid->limMinInt;
    }

    pid->differentiator = -(2.0f * pid->Kd * (measurement - pid->prevMeasurement)	/* Note: derivative on measurement, therefore minus sign in front of equation! */
                    + (2.0f * pid->tau - pid->T) * pid->differentiator)
                    / (2.0f * pid->tau + pid->T);

    pid->out = proportional + pid->integrator + pid->differentiator;

    if (pid->out > pid->limMax) {
        pid->out = pid->limMax;
    } else if (pid->out < pid->limMin) {
        pid->out = pid->limMin;
    }

	/* Store error and measurement for later use */
    pid->prevError       = error;
    pid->prevMeasurement = measurement;

	/* Return controller output */
    return pid->out;
}

float calculatePidManualError(PIDController *pid,float setpoint, float measurement){

    float proportional = pid->Kp * pid->error;

    pid->integrator = pid->integrator + 0.5f * pid->Ki * pid->T * (pid->error + pid->prevError);

    if (pid->integrator > pid->limMaxInt) {
        pid->integrator = pid->limMaxInt;
    } else if (pid->integrator < pid->limMinInt) {
        pid->integrator = pid->limMinInt;
    }

    pid->differentiator = -(2.0f * pid->Kd * (measurement - pid->prevMeasurement)	/* Note: derivative on measurement, therefore minus sign in front of equation! */
                    + (2.0f * pid->tau - pid->T) * pid->differentiator)
                    / (2.0f * pid->tau + pid->T);

    pid->out = proportional + pid->integrator + pid->differentiator;

    if (pid->out > pid->limMax) {
        pid->out = pid->limMax;
    } else if (pid->out < pid->limMin) {
        pid->out = pid->limMin;
    }

	/* Store error and measurement for later use */
    pid->prevError       = pid->error;
    pid->prevMeasurement = measurement;

	/* Return controller output */
    return pid->out;
}
