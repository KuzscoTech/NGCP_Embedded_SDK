#include "arm0_utilities.h"



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
int Uart0_parseDriveMotor(unsigned char RecvBuffer [UART_BUFFER_SIZE], ugv_driveMotor *driveMotorInstancePtr)
{
	u8    dmDirIndex;
	u8    dmRpmIndex;
	_Bool dmValid = FALSE;

	_Bool tempDir;
	u32   tempRpm;

	// parse for "dm"
	for(int i=0; i<UART0_FRAME_LENGTH; i++) {
		if(RecvBuffer[i] == "D") {
			if(RecvBuffer[i+1] == "M") {
				dmDirIndex = i+2;
				dmRpmIndex = i+4;
				if(dmRpmIndex+2 < UART0_FRAME_LENGTH)
					dmValid = TRUE;
			}
		}
	}
	if(!dmValid) return XST_FAILURE;

	// check that directional input is valid
	// capture directional and rpm input
	if(dmValid)
	{
		if((RecvBuffer[dmDirIndex] == "D") && (RecvBuffer[dmRpmIndex] == "R")) {
			if(RecvBuffer[dmDirIndex+1] == "F")
				tempDir = DRIVEMOTOR_FORWARD;
			else if(RecvBuffer[dmDirIndex+1] == "R")
				tempDir = DRIVEMOTOR_REVERSE;
			else
				dmValid = FALSE;

			tempRpm = RecvBuffer[dmRpmIndex+1] << 8;
			tempRpm = tempRpm | RecvBuffer[dmRpmIndex+2];
		}
		else
			dmValid = FALSE;
	}
	if(!dmValid) return XST_FAILURE;

	// return directional and rpm input as a negative or positive float if valid
	if(dmValid)
	{
		if(tempDir == DRIVEMOTOR_FORWARD) {
			driveMotorInstancePtr->uartSetPoint = (int) tempRpm;
			return (int) tempRpm;
		}
		else {
			driveMotorInstancePtr->uartSetPoint = (int) -tempRpm;
			return (int) -tempRpm;
		}
	}
	else return XST_FAILURE;
}
