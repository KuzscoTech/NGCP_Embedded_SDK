#include "xsysmon.h"
#include "xparameters.h"
#include "sleep.h"
#include "stdio.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "math.h"


#define SYSMON_DEVICE_ID XPAR_XADC_WIZ_0_DEVICE_ID
#define XSysMon_RawToExtVoltage(AdcData) \
						((((float)(AdcData))*(1.0f))/65536.0f)
static XSysMon SysMonInst;
static int SysMonFractionToInt(float FloatNum);

int main(){
	u32 ExtVolRawData;
	float ExtVolData;
	int xStatus;
	int convertedVolt;
	int convertedAngle;
	float temp;
	u8 inputVal;
	XSysMon_Config *SysMonConfigPtr;
	XSysMon *SysMonInstPtr = &SysMonInst;

	xil_printf("\r\n\nPlatform Initialized!\r\n");
	SysMonConfigPtr = XSysMon_LookupConfig(SYSMON_DEVICE_ID);
	if(SysMonConfigPtr == NULL)
		xil_printf("LookupConfig failure\n\r");
	xStatus = XSysMon_CfgInitialize(SysMonInstPtr, SysMonConfigPtr, SysMonConfigPtr->BaseAddress);
	if(xStatus != XST_SUCCESS)
		xil_printf("Cfginitialize FAILED\r\n");
	xil_printf("XADC Initialized!\r\n");
	XSysMon_GetStatus(SysMonInstPtr);
	while(1){
		xil_printf("Wait for EOS to be activated...\r\n\n");
		inputVal = 100;// input test value to modify pwm
		Xil_Out32(XPAR_SERVOZ3_0_S00_AXI_BASEADDR, inputVal);
		xil_printf("The motor position is: %d\r\n\n", inputVal);
		// read xadc
		sleep(2); // 2 second delay to allow for the servo arm to turn, then begin reading voltage data
		while ((XSysMon_GetStatus(SysMonInstPtr) & XSM_SR_EOS_MASK) != XSM_SR_EOS_MASK); // waits until EOS is activated
			ExtVolRawData = XSysMon_GetAdcData(SysMonInstPtr, XSM_CH_AUX_MIN+14);		 // reads data from channel 14
			ExtVolData = XSysMon_RawToExtVoltage(ExtVolRawData);
			//xil_printf("The current Vaux14 is %0d.%03d Volts\r\n", (int)(ExtVolData), SysMonFractionToInt(ExtVolData));
			convertedVolt = (SysMonFractionToInt(ExtVolData)/10000);
			xil_printf("The current Vaux14 is %d Volts\r\n", convertedVolt);
			temp = (float) convertedVolt;
			convertedAngle = 25.0 * log(0.005 * pow(temp, 3) + 0.8) + 7; //Equation 2: accurate except for when V = 5
			if (convertedAngle < 0){
				convertedAngle = 0;
			}
			xil_printf("The current angle is %d degrees\r\n\n", convertedAngle);
			xil_printf("---------------------------------------------\r\n\n");
			sleep(1);
	}
}
int SysMonFractionToInt(float FloatNum){
	float Temp;
	Temp = FloatNum;
	if(FloatNum < 0) {
		Temp = -(FloatNum);
	}
	return( ((int)((Temp -(float)((int)Temp)) * (1000000.0f))));
}
