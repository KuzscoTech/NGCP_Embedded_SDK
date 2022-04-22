#include "arm0.h"

/************************** GLOBAL VARIABLES ***********************/
// PWM INSTANCES
ugv_pwm driveMotor_PwmInstance;
ugv_pwm mgm0_PwmInstance;
ugv_pwm mgm1_PwmInstance;

// QEI INSTANCES
ugv_qei driveMotor_QeiInstance;
ugv_qei mgm0_QeiInstance;
ugv_qei mgm1_QeiInstance;

int main()
{
    int Status;
    printf("\r\n\nARM0 Intitialized!\r\n\n");

    // Initialize Drive Motor
    printf("Initializing drive motor drivers...\r\n");
    Status = arm0_initializeDriveMotorPwm (&driveMotor_PwmInstance);
    Status = arm0_intializeDriveMotorQEI  (&driveMotor_QeiInstance);
    if(Status != XST_SUCCESS) {
        printf("Drive Motor setup failed!\r\n");
        return XST_FAILURE;
    }

    // Initialize Micro Metal Gear Motors
    printf("Initializing Micrometal Gear Motor 0 drivers...\r\n");
    Status = arm0_initializeMicroMetalPwm (&mgm0_PwmInstance, 0);
    Status = arm0_initializeMicroMetalQEI (&mgm0_QeiInstance, 0);
    if(Status != XST_SUCCESS) {
        printf("Micrometal Gear Motor 0 setup failed!\r\n");
        return XST_FAILURE;
    }
    Status = arm0_initializeMicroMetalPwm (&mgm1_PwmInstance, 1);
    Status = arm0_initializeMicroMetalQEI (&mgm1_QeiInstance, 1);
    if(Status != XST_SUCCESS) {
        printf("Micrometal Gear Motor 1 setup failed!\r\n");
        return XST_FAILURE;
    }
    u32   reg_read;
    int   flag = 0;
    u32   duty = 200;
    _Bool dir  = TRUE;
    float driveMotor_rpm, mgm0_rpm, mgm1_rpm;
    float mgm0_pos, mgm1_pos;
    while(1) 
    {
        ugvPwm_setDir(&driveMotor_PwmInstance, dir);
        ugvPwm_setDir(&mgm0_PwmInstance,       dir);
        ugvPwm_setDir(&mgm1_PwmInstance,       dir);

        ugvPwm_setSpeed(&driveMotor_PwmInstance, (u8) 255);
        ugvPwm_setSpeed(&mgm0_PwmInstance,       (u8) 255);
        ugvPwm_setSpeed(&mgm1_PwmInstance,       (u8) 255);

        driveMotor_rpm = (float) ugvQei_getRpm(&driveMotor_QeiInstance);
        if(!ugvQei_getDirection(&driveMotor_QeiInstance)) {
            driveMotor_rpm = -driveMotor_rpm;
        }
        mgm0_rpm = (float) ugvQei_getRpm(&mgm0_QeiInstance);
        if(!ugvQei_getDirection(&mgm0_QeiInstance)) {
            mgm0_rpm = -mgm0_rpm;
        }
        mgm1_rpm = (float) ugvQei_getRpm(&mgm1_QeiInstance);
        if(!ugvQei_getDirection(&mgm1_QeiInstance)) {
            mgm1_rpm = -mgm1_rpm;
        }
        mgm0_pos = ugvQei_convertMgmPosition(&mgm0_QeiInstance);
        mgm1_pos = ugvQei_convertMgmPosition(&mgm1_QeiInstance);


        printf("--------------------------------------\r\n");
        printf("DRIVE MOTOR:\r\n");
        printf("\tCurrent RPM : %3.3f\r\n", driveMotor_rpm);
        printf("\tDuty Cycle  : %d\r\n", driveMotor_PwmInstance.speedSelect);
        if(driveMotor_PwmInstance.CurrentDirection) {
            printf("\tDrive Dir   : FORWARD\r\n");
        }
        else {
            printf("\tDrive Dir   : REVERSE\r\n");
        }
        reg_read = MOTORPWM_mReadReg(driveMotor_PwmInstance.RegBaseAddress, 0);
        xil_printf("slv_reg0       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(driveMotor_PwmInstance.RegBaseAddress, 4);
        xil_printf("slv_reg1       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(driveMotor_PwmInstance.RegBaseAddress, 8);
        xil_printf("slv_reg2       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(driveMotor_PwmInstance.RegBaseAddress, 12);
        xil_printf("slv_reg3       : %x\r\n\n", reg_read);

        printf("MICROMETAL GEAR MOTOR 0:\r\n");
        printf("\tCurrent Pos : %3.3f\r\n", mgm0_pos);
        printf("\tCurrent RPM : %3.3f\r\n", mgm0_rpm);
        printf("\tDuty Cycle  : %d\r\n", mgm0_PwmInstance.speedSelect);
        if(mgm0_PwmInstance.CurrentDirection) {
            printf("\tDrive Dir   : FORWARD\r\n");
        }
        else {
            printf("\tDrive Dir   : REVERSE\r\n");
        }
        reg_read = MOTORPWM_mReadReg(mgm0_PwmInstance.RegBaseAddress, 0);
        xil_printf("slv_reg0       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(mgm0_PwmInstance.RegBaseAddress, 4);
        xil_printf("slv_reg1       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(mgm0_PwmInstance.RegBaseAddress, 8);
        xil_printf("slv_reg2       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(mgm0_PwmInstance.RegBaseAddress, 12);
        xil_printf("slv_reg3       : %x\r\n\n", reg_read);

        printf("MICROMETAL GEAR MOTOR 1:\r\n");
        printf("\tCurrent Pos : %3.3f\r\n", mgm1_pos);
        printf("\tCurrent RPM : %3.3f\r\n", mgm1_rpm);
        printf("\tDuty Cycle  : %d\r\n", mgm1_PwmInstance.speedSelect);
        if(mgm1_PwmInstance.CurrentDirection) {
            printf("\tDrive Dir   : FORWARD\r\n");
        }
        else {
            printf("\tDrive Dir   : REVERSE\r\n");
        }
        reg_read = MOTORPWM_mReadReg(mgm1_PwmInstance.RegBaseAddress, 0);
        xil_printf("slv_reg0       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(mgm1_PwmInstance.RegBaseAddress, 4);
        xil_printf("slv_reg1       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(mgm1_PwmInstance.RegBaseAddress, 8);
        xil_printf("slv_reg2       : %x\r\n", reg_read);
        reg_read = MOTORPWM_mReadReg(mgm1_PwmInstance.RegBaseAddress, 12);
        xil_printf("slv_reg3       : %x\r\n\n", reg_read);

        if(flag) {
            if(duty == 0) {
                flag = 0;
                dir  = ~dir;
            }
            duty = duty - 5;
        }
        else {
            if(duty == 255) {
                flag = 1;
                dir  = ~dir;
            }
            duty = duty + 5;
        }
        sleep(1);
    }
}