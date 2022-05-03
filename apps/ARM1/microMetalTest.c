#include <stdio.h>
#include "xil_printf.h"
#include "microMetal_utilities.h"
#include "sleep.h"
#include "xparameters.h"


int main()
{

    while(1)
    {

        cnt_actual = MOTORPWM_mReadReg(mgm0_pwmInst.RegBaseAddress, 8);

        printf("---------------------------------------------------------------\r\n");
    	printf("MGM0 Current RPM      : %d\r\n", mgm0_rpm);
        printf("MGM0 Current Position : %d\r\n", mgm0_pos);
        printf("MGM0 Position Reg     : %x\r\n\n", cnt_actual);

        /*
    	cnt_actual = MOTORPWM_mReadReg(mgm0_pwmInst.RegBaseAddress, 12);
        duty_percentage = (float) duty/255*100;
    	printf("MGM0 Expected duty  : %d  ||  %3.3f%%\r\n", duty, duty_percentage);
        duty_actual = ((cnt_actual-MGM0_PWM_MIN)/MGM0_PWM_SCALE);
        duty_percentage = (float) duty_actual/255*100 ;
    	printf("MGM0 Actual duty    : %d  ||  %3.3f%%\r\n\n", duty_actual, duty_percentage);
		*/
        //sleep(1);

        //if(mgm0_pos > 135 || mgm0_pos == 0 || mgm1_pos > 135 || mgm1_pos == 0) {
        //	dir = !dir;
        //}
    }

    return 0;
}
