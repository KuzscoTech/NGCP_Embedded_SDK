#include "uart_utilities.h"

/**
 * @brief Function to initialize a UART instance.
 *
 * @param UartLiteInstPtr is a pointer to an XUartLite instance to initialize.
 * @param UartLiteDeviceId is the device ID of the UART to initialize.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int uart_Initialize(XUartLite *UartLiteInstPtr, u16 UartLiteDeviceId)
{
    int Status;
    Status = XUartLite_Initialize(UartLiteInstPtr, UartLiteDeviceId);
	if (Status != XST_SUCCESS) {
        xil_printf("UART initialization failed! Device ID: %x\r\n", UartLiteDeviceId);
		return XST_FAILURE;
	}

	Status = XUartLite_SelfTest(UartLiteInstPtr);
	if (Status != XST_SUCCESS) {
        xil_printf("UART self test failed! Device ID: %d\r\n", UartLiteDeviceId);
		return XST_FAILURE;
	}

    return XST_SUCCESS;
}

/* This function connects the UartLite interrupt to an XScuGic object.
*  It requires the XScuGic to already be configured and initialized.
*
*  The UART interrupt handlers and device interrupt STILL NEED to
*  be set outside of this function before proper operation!!!!
*
*  @param IntcInstancePtr is a pointer to the XScuGic instance.
*  @param UartLiteInstPtr is a pointer to the UartLite instance.
*  @param UartLiteIntrId is the ID of the interrupt to connect to the XScuGic.
*
*  @return XST_SUCCESS if successful, else the error from XScuGic_Connect.
*/
int uart_setupIntrSystem(XScuGic *IntcInstancePtr,
				            XUartLite *UartLiteInstPtr,
				            u16 UartLiteIntrId)
{
	int Status;

    // Set UART interrupt priority
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, UartLiteIntrId,
					0xA0, 0x3);

    // Connect interrupts
	Status = XScuGic_Connect(IntcInstancePtr, UartLiteIntrId,
				 (Xil_ExceptionHandler)XUartLite_InterruptHandler,
				 UartLiteInstPtr);
	if (Status != XST_SUCCESS) {
        xil_printf("UART Interrupt xscugic connection failed!\r\n");
		return Status;
	}

    // Enable the UART interrupt
	XScuGic_Enable(IntcInstancePtr, UartLiteIntrId);

	return XST_SUCCESS;
}


void uart_printBuffer(u8 buffer[UART_BUFFER_SIZE])
{
	for(int i=0; i<UART_BUFFER_SIZE; i++) {
		xil_printf("Buffer [%d] = %c   |   %x\r\n", i, buffer[i], buffer[i]);
	}
	xil_printf("\r\n");
}

/**
 * @brief Function to parse a UART receive buffer for a data request command.
 * @param RecvBuffer is the UART receive buffer to parse.
 * @return XST_SUCCESS if a data request command is found; else XST_FAILURE.
 */
int uart_parseRequest(unsigned char RecvBuffer [UART_BUFFER_SIZE])
{
	if((RecvBuffer[0]=='A') && (RecvBuffer[1]=='A')) {
		return XST_SUCCESS;
	}
	else {
		return XST_FAILURE;
	}
}

/**
 * @brief Function to parse a UART receive buffer for drive motor commands and
 *        store into a uart0Data instance.
 *        
 *        Valid commands: 
 *          Set Setpoint | "DM<0>D<1>R<2>"
 *              -> 0: "M" for manual mode, "P" for PID mode
 *              -> 1: indicates direction; 0 for reverse, 1 for forwards
 *              -> 2: if manual mode; indicates duty cycle 0-255 duty cycle
 *                    if pid mode;    indicates setpoint 0-255 RPM
 *          
 *
 * @param RecvBuffer is an unsigned char array that serves as a UART receive buffer.
 * @param dataPtr is a pointer to a uart0Data instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int uart_parseDriveMotor(unsigned char RecvBuffer [UART_BUFFER_SIZE], uart0Data *dataPtr, _Bool write)
{
    int   manualModeIndex;
	int   dmDirIndex;
	int   dmRpmIndex;
	_Bool dmValid = FALSE;

    u8 tempManualMode;
	u8 tempDir;
	u8 tempRpm;

	// parse for "DM"
	for(int i=0; i<UART0_RECEIVE_SIZE; i++) {
		if(RecvBuffer[i] == 0x44) {
			if(RecvBuffer[i+1] == 0x4D) {
                manualModeIndex = i+2;
				dmDirIndex      = i+3;
				dmRpmIndex      = i+5;
				if(dmRpmIndex+1 < UART0_RECEIVE_SIZE){
					dmValid = TRUE;
					break;
				}
			}
		}
	}
	if(!dmValid) {
		printf("DM not found\r\n\n");
		return XST_FAILURE;
	}

    // CHECK FOR MODE SELECT INSTRUCTION
    if(dmValid)
    {
        if(RecvBuffer[manualModeIndex] == 0x4D) { // "M"
            dataPtr->rx_dm_manualMode = 1;
        }
        else if(RecvBuffer[manualModeIndex] == 0x50) { // "P"
            dataPtr->rx_dm_manualMode = 0;
        }
        else {
        	return XST_FAILURE;
        }
    }


	// check that directional input is valid
	// capture directional and rpm input
	if(dmValid)
	{ // 0x44 is D and 0x52 is R
		if((RecvBuffer[dmDirIndex] == 0x44) && (RecvBuffer[dmRpmIndex] == 0x52)) {
			if(RecvBuffer[dmDirIndex+1] == 1 || RecvBuffer[dmDirIndex+1] == 0)
				tempDir = RecvBuffer[dmDirIndex+1];
			else {
                dmValid = FALSE;
                return XST_FAILURE;
            }
			tempRpm = RecvBuffer[dmRpmIndex+1];
		}
		else {
            dmValid = FALSE;
            return XST_FAILURE;
        }	
	}

	// return directional and rpm input as a negative or positive float if valid
	if(dmValid)
	{
		dataPtr->rx_dm_dir      = tempDir;
		dataPtr->rx_dm_setpoint = tempRpm;
		return XST_SUCCESS;
	}
	else {
		if(!dmValid) printf("Drive motor parse failed\r\n");
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}


/**
 * @brief Function to parse a UART receive buffer for servo motor setpoint data
 *        and write into a uart0Data instance.
 *        
 *        Valid commands: 
 *          Set Setpoint | S<0><1>
 *               -> 0: "P" for PID, "M" for manual
 *               -> 1: angle; 0-180
 *  
 * @param RecvBuffer is an unsigned char array that serves as a UART receive buffer.
 * @param dataPtr is a pointer to a uart0Data instance.
 * @return XST_SUCCESS if successful, else XST_FAILURE.
 */
int uart_parseServoMotor(unsigned char RecvBuffer [UART_BUFFER_SIZE], uart0Data *dataPtr, _Bool write)
{
	int   servoIndex;
	_Bool servoValid = FALSE;

	// parse for "S"
	for(int i=0; i<UART0_RECEIVE_SIZE; i++) {
		if(RecvBuffer[i] == 0x53) {
			servoIndex = i;
			if(servoIndex+2 <= UART0_RECEIVE_SIZE) {
				servoValid = TRUE;
				break;
			}
		}
	}
	if(!servoValid) {
		printf("S not found\r\n\n");
		return XST_FAILURE;
	}
	if(RecvBuffer[servoIndex+1] != 0x4D || RecvBuffer[servoIndex+1] != 0x4D)
	{
		return XST_FAILURE;
	}


    // Check if command is set setpoint
	if(RecvBuffer[servoIndex+1] == 0x4D) { // "M"
		dataPtr->rx_servo_manualMode = 1;
	}
	else if(RecvBuffer[servoIndex+1] == 0x4D) { // "P"
		dataPtr->rx_servo_manualMode = 0;
	}
	else {
		return XST_FAILURE;
	}
	dataPtr->rx_servo_setpoint = RecvBuffer[servoIndex+2];

    return XST_SUCCESS;
}

/**
 * @brief Function to parse UART0 data for micrometal setpoints.
 * 
 * @param RecvBuffer is an unsigned char array that serves as a UART receive buffer. 
 * @param dataPtr is a pointer to a uart0Data instance.
 * @return int XST_SUCCESS if successful, else XST_FAILURE.
 *
 *  MG[time0][time1][time2][time3][direction][enables][dummy][dummy][dummy]
 */
int uart_parseMicroMetal(unsigned char RecvBuffer[UART_BUFFER_SIZE], uart0Data *dataPtr, _Bool write)
{
    _Bool dataValid = FALSE;
    int mmIndex [4];
    int dirIndex, enableIndex;

    u8 mgmMasks [4];
	mgmMasks[0] = 0x1;
	mgmMasks[1] = 0x2;
	mgmMasks[2] = 0x4;
	mgmMasks[3] = 0x8;

    // Look for "MG"
    for(int i=0; i<UART0_RECEIVE_SIZE; i++) {
        if((RecvBuffer[i] == 0x4D) & (RecvBuffer[i+1] == 0x47)) { //"MG"
            dataValid = TRUE;
            mmIndex[0]  = i+2;
            mmIndex[1]  = i+3;
            mmIndex[2]  = i+4;
            mmIndex[3]  = i+5;
            dirIndex    = i+6;
            enableIndex = i+7;
            break;
        }
    }
    if(!dataValid) {
        return XST_FAILURE;
    }

    // get times
    for(int i=0; i<4; i++) {
    	dataPtr->rx_microMetal_time  [i] = RecvBuffer[mmIndex[i]];
    	dataPtr->rx_microMetal_dir   [i] = (RecvBuffer[dirIndex]    & mgmMasks[i]) >> i;
    	dataPtr->rx_microMetal_enable[i] = (RecvBuffer[enableIndex] & mgmMasks[i]) >> i;
    }

    return XST_SUCCESS;
}

/**
 * @brief Function to print the contents of a uart0Data instance.
 * 
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_printData0(uart0Data *dataPtr)
{
	printf("\r\n");
	printf("received dm mode        : %d\r\n",   dataPtr->rx_dm_manualMode);
	printf("received dm dir         : %d\r\n",   dataPtr->rx_dm_dir);
	printf("received dm setpoint    : %d\r\n",   dataPtr->rx_dm_setpoint);
	printf("tx dm dir               : %d\r\n",   dataPtr->tx_dm_dir);
	printf("tx dm rpm               : %d\r\n\n", dataPtr->tx_dm_rpm);

	printf("received servo mode     : %d\r\n",   dataPtr->rx_servo_manualMode);
	printf("received servo setpoint : %d\r\n",   dataPtr->rx_servo_setpoint);
	printf("tx servo position       : %d\r\n\n", dataPtr->tx_servo_pos);

    printf("received mgm0 setpoint  : %d\r\n",   dataPtr->rx_microMetal_time[0]);
    printf("received mgm0 enable    : %d\r\n",   dataPtr->rx_microMetal_enable[0]);
    printf("tx mgm0 position        : %d\r\n\n", dataPtr->tx_microMetal_pos[0]);

    printf("received mgm1 setpoint  : %d\r\n",   dataPtr->rx_microMetal_time[1]);
    printf("received mgm1 enable    : %d\r\n",   dataPtr->rx_microMetal_enable[1]);
    printf("tx mgm1 position        : %d\r\n\n", dataPtr->tx_microMetal_pos[1]);

    printf("received mgm2 setpoint  : %d\r\n",   dataPtr->rx_microMetal_time[2]);
    printf("received mgm2 enable    : %d\r\n",   dataPtr->rx_microMetal_enable[2]);
    printf("tx mgm2 position        : %d\r\n\n", dataPtr->tx_microMetal_pos[2]);

    printf("received mgm3 setpoint  : %d\r\n",   dataPtr->rx_microMetal_time[3]);
    printf("received mgm3 enable    : %d\r\n",   dataPtr->rx_microMetal_enable[3]);
    printf("tx mgm3 position        : %d\r\n\n", dataPtr->tx_microMetal_pos[3]);
}

/**
 * @brief Function to write UART0 drive motor and servo motor setpoint
 *        data to OCM addresses specified in ocm.h
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_data0ToOcm(uart0Data *dataPtr)
{
    volatile u32 *dm_modePtr    = (u32 *) (SM_DM_BASEADDR + SM_DM_SETMANUAL_OFFSET);
	volatile u32 *dm_dirPtr     = (u32 *) (SM_DM_BASEADDR + SM_DM_SETDIR_OFFSET);
	volatile u32 *dm_rpmPtr     = (u32 *) (SM_DM_BASEADDR + SM_DM_SETPOINT_OFFSET);
    //
    volatile u32 *servo_modePtr = (u32 *) (SM_SERVO_BASEADDR + SM_SERVO_SETMANUAL_OFFSET);
	volatile u32 *servo_setPtr  = (u32 *) (SM_SERVO_BASEADDR + SM_SERVO_SETPOINT_OFFSET);

	volatile u32 *mm0_timePtr   = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETPOINT_OFFSET);
	volatile u32 *mm1_timePtr   = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETPOINT_OFFSET);
	volatile u32 *mm2_timePtr   = (u32 *) (SM_MM_BASEADDR + SM_MM2_SETPOINT_OFFSET);
	volatile u32 *mm3_timePtr   = (u32 *) (SM_MM_BASEADDR + SM_MM3_SETPOINT_OFFSET);

    volatile u32 *mm0_enablePtr = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETMANUAL_OFFSET);
    volatile u32 *mm1_enablePtr = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETMANUAL_OFFSET);
    volatile u32 *mm2_enablePtr = (u32 *) (SM_MM_BASEADDR + SM_MM2_SETMANUAL_OFFSET);
    volatile u32 *mm3_enablePtr = (u32 *) (SM_MM_BASEADDR + SM_MM3_SETMANUAL_OFFSET);

    volatile u32 *mm0_setDirPtr = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETDIR_OFFSET);
    volatile u32 *mm1_setDirPtr = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETDIR_OFFSET);
    volatile u32 *mm2_setDirPtr = (u32 *) (SM_MM_BASEADDR + SM_MM2_SETDIR_OFFSET);
    volatile u32 *mm3_setDirPtr = (u32 *) (SM_MM_BASEADDR + SM_MM3_SETDIR_OFFSET);

    // write drive motor mode
    *dm_modePtr = (u8) dataPtr->rx_dm_manualMode;
    Xil_DCacheFlushRange((u32)dm_modePtr, 1);

    // write drive motor setpoint
	*dm_rpmPtr = (u16) dataPtr->rx_dm_setpoint;
	Xil_DCacheFlushRange((u32)dm_rpmPtr, 1);

    // write drive motor setdir
	*dm_dirPtr = (u8) dataPtr->rx_dm_dir;
	Xil_DCacheFlushRange((u32)dm_dirPtr, 1);

    // write servo mode
    *servo_modePtr = (u8) dataPtr->rx_servo_manualMode;
    Xil_DCacheFlushRange((u32)servo_modePtr, 1);

    // write servo setpoint
	*servo_setPtr = (u16) dataPtr->rx_servo_setpoint;
	Xil_DCacheFlushRange((u32)servo_setPtr, 1);

    // write micrometal setdir
    *mm0_setDirPtr = (u8) dataPtr->rx_microMetal_dir[0];
    Xil_DCacheFlushRange((u32)mm0_setDirPtr, 1);
    *mm1_setDirPtr = (u8) dataPtr->rx_microMetal_dir[1];
    Xil_DCacheFlushRange((u32)mm1_setDirPtr, 1);
    *mm2_setDirPtr = (u8) dataPtr->rx_microMetal_dir[2];
    Xil_DCacheFlushRange((u32)mm2_setDirPtr, 1);
    *mm3_setDirPtr = (u8) dataPtr->rx_microMetal_dir[3];
    Xil_DCacheFlushRange((u32)mm3_setDirPtr, 1);

    // write micrometal setpoints (timer values)
    *mm0_timePtr = (u8) dataPtr->rx_microMetal_time[0];
    Xil_DCacheFlushRange((u32)mm0_timePtr, 1);
    *mm1_timePtr = (u8) dataPtr->rx_microMetal_time[1];
    Xil_DCacheFlushRange((u32)mm1_timePtr, 1);
    *mm2_timePtr = (u8) dataPtr->rx_microMetal_time[2];
    Xil_DCacheFlushRange((u32)mm2_timePtr, 1);
    *mm3_timePtr = (u8) dataPtr->rx_microMetal_time[3];
    Xil_DCacheFlushRange((u32)mm3_timePtr, 1);

    // write micrometal timer enables (manual mode)
    *mm0_enablePtr = (u8) dataPtr->rx_microMetal_enable[0];
    Xil_DCacheFlushRange((u32)mm0_enablePtr, 1);
    *mm1_enablePtr = (u8) dataPtr->rx_microMetal_enable[1];
    Xil_DCacheFlushRange((u32)mm1_enablePtr, 1);
    *mm2_enablePtr = (u8) dataPtr->rx_microMetal_enable[2];
    Xil_DCacheFlushRange((u32)mm2_enablePtr, 1);
    *mm3_enablePtr = (u8) dataPtr->rx_microMetal_enable[3];
    Xil_DCacheFlushRange((u32)mm3_enablePtr, 1);

}


/**
 * @brief Function to read UART0 drive motor and servo motor setpoint data
 *        from OCM addresses specified in ocm.h to a uart0Data instance.
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_data0FromOcm(uart0Data *dataPtr)
{
	volatile u32 *dm_dirPtr    = (u32 *) (SM_DM_BASEADDR + SM_DM_DIR_OFFSET);
	volatile u32 *dm_rpmPtr    = (u32 *) (SM_DM_BASEADDR + SM_DM_RPM_OFFSET);
	volatile u32 *servo_posPtr = (u32 *) (SM_SERVO_BASEADDR + SM_SERVO_CURRENT_OFFSET);
    volatile u32 *mm1_posPtr   = (u32 *) (SM_MM_BASEADDR + SM_MM1_POS_OFFSET);
    volatile u32 *mm0_posPtr   = (u32 *) (SM_MM_BASEADDR + SM_MM0_POS_OFFSET);
    volatile u32 *mm2_posPtr   = (u32 *) (SM_MM_BASEADDR + SM_MM2_POS_OFFSET);
    volatile u32 *mm3_posPtr   = (u32 *) (SM_MM_BASEADDR + SM_MM3_POS_OFFSET);

	// read current dir from ocm
	Xil_DCacheInvalidateRange((u32)dm_dirPtr, 1);
	dataPtr->tx_dm_dir = *dm_dirPtr;

	// read current rpm from ocm
	Xil_DCacheInvalidateRange((u32)dm_rpmPtr, 2);
	dataPtr->tx_dm_rpm = *dm_rpmPtr;

	// read current servo pos from ocm
	Xil_DCacheInvalidateRange((u32)servo_posPtr, 2);
	dataPtr->tx_servo_pos = (u16) *servo_posPtr;

    // read micrometal positions from ocm
    Xil_DCacheInvalidateRange((u32) mm0_posPtr, 2);
    dataPtr->tx_microMetal_pos[0] = *mm0_posPtr;

    Xil_DCacheInvalidateRange((u32) mm1_posPtr, 2);
    dataPtr->tx_microMetal_pos[1] = *mm1_posPtr;

    Xil_DCacheInvalidateRange((u32) mm2_posPtr, 2);
    dataPtr->tx_microMetal_pos[2] = *mm2_posPtr;

    Xil_DCacheInvalidateRange((u32) mm3_posPtr, 2);
    dataPtr->tx_microMetal_pos[3] = *mm3_posPtr;
}


/**
 * @brief Function to load UART0 data to a UART TX buffer.
 * @param SendBuffer is a unsigned char array used as a TX buffer.
 * @param index is the index from which to start loading data into.
 * @param dataPtr is a pointer to a uart0Data instance.
 */
void uart_loadData0(unsigned char SendBuffer[UART_BUFFER_SIZE], uart0Data *dataPtr)
{
	const char *text;
	char        c;

	text = "D";
	for(text; c=*text; text++) {
		SendBuffer[dataPtr->index] = c;
		dataPtr->index++;
	}

	SendBuffer[dataPtr->index] = dataPtr->tx_dm_dir;
	dataPtr->index++;

	text = "R";
	for(text; c=*text; text++) {
		SendBuffer[dataPtr->index] = c;
		dataPtr->index++;
	}

	// high byte rpm
	SendBuffer[dataPtr->index] = (u8) (dataPtr->tx_dm_rpm) >> 8;
	dataPtr->index++;

	// low byte rpm
	SendBuffer[dataPtr->index] = (u8) (dataPtr->tx_dm_rpm) & 0x00FF;
	dataPtr->index++;

	text = "S";
	for(text; c=*text; text++) {
		SendBuffer[dataPtr->index] = c;
		dataPtr->index++;
	}

	// servo pos
	SendBuffer[dataPtr->index] = (u8) (dataPtr->tx_servo_pos);
	dataPtr->index++;

	// drive motor mode
	if(dataPtr->rx_dm_manualMode == 1) {
		text = "M";
		SendBuffer[dataPtr->index] = *text;
	}
	else {
		text = "P";
		SendBuffer[dataPtr->index] = *text;
	}
	dataPtr->index++;

	// servo mode
	if(dataPtr->rx_servo_manualMode == 1) {
		text = "M";
		SendBuffer[dataPtr->index] = *text;
	}
	else {
		text = "P";
		SendBuffer[dataPtr->index] = *text;
	}
	dataPtr->index++;

    text = "MG";
    for(text; c=*text; text++) {
		SendBuffer[dataPtr->index] = c;
		dataPtr->index++;
	}

    // micrometal current positions
    SendBuffer[dataPtr->index] = dataPtr->tx_microMetal_pos[0] & 0xFF;
    dataPtr->index++;
    SendBuffer[dataPtr->index] = dataPtr->tx_microMetal_pos[0] >> 8;
    dataPtr->index++;

    SendBuffer[dataPtr->index] = dataPtr->tx_microMetal_pos[1] & 0xFF;
    dataPtr->index++;
    SendBuffer[dataPtr->index] = dataPtr->tx_microMetal_pos[1] >> 8;
    dataPtr->index++;

    SendBuffer[dataPtr->index] = dataPtr->tx_microMetal_pos[2] & 0xFF;
    dataPtr->index++;
    SendBuffer[dataPtr->index] = dataPtr->tx_microMetal_pos[2] >> 8;
    dataPtr->index++;

    SendBuffer[dataPtr->index] = dataPtr->tx_microMetal_pos[3] & 0xFF;
    dataPtr->index++;
    SendBuffer[dataPtr->index] = dataPtr->tx_microMetal_pos[3] >> 8;
    dataPtr->index++;

    SendBuffer[dataPtr->index] = 0x10;
    dataPtr->index++;
}

