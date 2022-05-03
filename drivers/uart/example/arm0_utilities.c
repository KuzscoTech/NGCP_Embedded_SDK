#include "arm0_utilities.h"



int timeOutTimer(XTime tStart, int countUs)
{
	XTime tCurrent;
	float delta;
	XTime_GetTime(&tCurrent);
	delta = 1.0 * (tCurrent - tStart) / (COUNTS_PER_SECOND/1000000);
	printf("tCurrent: %3.3f\r\n", tCurrent);
	printf("tDelta:   %3.3f\r\n\n", delta);
	if(delta >= (float) countUs) {
		return XST_FAILURE;
	}
	else
		return XST_SUCCESS;
}

/**
 * @brief Function to decode UART0 data.
 * 			-> "D" followed by "M"
 * 				-> "D"
 * 					-> "F" or "R"
 * 						-> set dir
 * 				-> "R"
 * 					-> high byte
 * 					-> low byte
 * 						-> set rpm
 * @param InstancePtr
 * @return
 */
int arm0_parseUartDriveMotor(unsigned char RecvBuffer [UART_BUFFER_SIZE], ugv_driveMotor *driveMotorInstancePtr)
{
	u8    dmDirIndex;
	u8    dmRpmIndex;
	_Bool dmValid = FALSE;

	_Bool tempDir;
	u32   tempRpm;

	// parse for "dm"
	for(int i=0; i<UART0_FRAME_LENGTH; i++) {
		if(RecvBuffer[i] == 0x44) {
			if(RecvBuffer[i+1] == 0x4D) {
				dmDirIndex = i+2;
				dmRpmIndex = i+4;
				if(dmRpmIndex+1 < UART0_FRAME_LENGTH)
					dmValid = TRUE;
			}
		}
	}
	if(!dmValid) {
		printf("DM not found\r\n\n");
		return XST_FAILURE;
	}

	// check that directional input is valid
	// capture directional and rpm input
	if(dmValid)
	{
		if((RecvBuffer[dmDirIndex] == 0x44) && (RecvBuffer[dmRpmIndex] == 0x52)) {
			if(RecvBuffer[dmDirIndex+1] == 1)
				tempDir = DRIVEMOTOR_FORWARD;
			else if(RecvBuffer[dmDirIndex+1] == 0)
				tempDir = DRIVEMOTOR_REVERSE;
			else
				dmValid = FALSE;

			tempRpm = RecvBuffer[dmRpmIndex+1];
		}
		else
			dmValid = FALSE;
	}
	if(!dmValid) {
		printf("D and R not found\r\n\n");
		return XST_FAILURE;
	}

	// return directional and rpm input as a negative or positive float if valid
	if(dmValid)
	{
		if(tempDir == DRIVEMOTOR_FORWARD) {
			driveMotorInstancePtr->uartSetPoint = (int) tempRpm;
		}
		else {
			driveMotorInstancePtr->uartSetPoint = (int) -tempRpm;
		}
		return XST_SUCCESS;
	}
	else return XST_FAILURE;
}
