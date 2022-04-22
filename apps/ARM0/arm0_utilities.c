#include "arm0_utilities.h"

int arm0_initializeDriveMotorPwm(ugv_pwm *InstancePtr)
{
    int Status;
    //
    Status = ugvPwm_Initialize(InstancePtr, DRIVEMOTOR_PWM_BASEADDR);
    if(Status != XST_SUCCESS) {
        printf("Drive Motor PWM initialization failed...\r\n");
        return XST_FAILURE;
    }

    ugvPwm_setPeriod   (InstancePtr, (u16) DRIVEMOTOR_PWM_PERIOD);
    ugvPwm_setMinPeriod(InstancePtr, (u16) DRIVEMOTOR_PWM_MIN);
    ugvPwm_setScaling  (InstancePtr, (u8)  DRIVEMOTOR_PWM_SCALE);
    ugvPwm_setIBT2Mode (InstancePtr);
    ugvPwm_Enable      (InstancePtr, TRUE);

    return XST_SUCCESS;
}

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

int arm0_initializeDriveMotorQEI(ugv_qei *InstancePtr)
{
    int Status;
    Status = ugvQei_Initialize(InstancePtr, DRIVEMOTOR_QEI_BASEADDR);
    ugvQei_setMicroMetalMode(InstancePtr, FALSE);
    return Status;
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
