#include "arm0_utilities.h"

int arm0_initializeDriveMotorPwm(ugv_pwm *InstancePtr, UINTPTR EffectiveAddr)
{
    int Status;
    //
    Status = ugvPwm_Initialize(InstancePtr, EffectiveAddr);
    if(Status != XST_SUCCESS) {
        printf("Drive Motor PWM initialization failed...\r\n");
        return XST_FAILURE;
    }

    ugvPwm_setMaxPeriod(InstancePtr, DRIVEMOTOR_PWM_PERIOD);
    ugvPwm_setMinPeriod(InstancePtr, (u16) DRIVEMOTOR_PWM_MIN);
    ugvPwm_setScaling  (InstancePtr, (u8) PWM_SCALE);
    ugvPwm_Enable      (InstancePtr, TRUE);
}