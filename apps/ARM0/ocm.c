#include "ocm.h"


/**
 * @brief Function to get the value of the shared memory flag from the address
 *        specified in ocm.h
 * @return the value of the memory flag as a u8.
 */
u8 ocm_getMemFlag()
{
	volatile u32 *flagPtr = (u32 *) (SM_BASEADDR+SM_FLAG_OFFSET);
	Xil_DCacheInvalidateRange((u32)flagPtr, 1);
	return *flagPtr;
}

/**
 * @brief Function to set the value of the shared memory flag at the address
 *        specified in ocm.h to 1.
 */
void ocm_setMemFlag()
{
	volatile u32 *flagPtr = (u32 *) (SM_BASEADDR+SM_FLAG_OFFSET);
	*flagPtr = 1;
	Xil_DCacheFlushRange((u32)flagPtr, 1);
}

/**
 * @brief Function to set the value of the shared memory flag at the address
 *        specified in ocm.h to 0.
 */
void ocm_clearMemFlag()
{
	volatile u32 *flagPtr = (u32 *) (SM_BASEADDR+SM_FLAG_OFFSET);
	*flagPtr = 0;
	Xil_DCacheFlushRange((u32)flagPtr, 1);
}

/**
 * @brief Function to initialize OCM flag to 0 and all values to 0.
 */
void ocm_initialize()
{
	volatile u32 *dm_setPointPtr = (u32 *) (SM_DM_BASEADDR + SM_DM_SETPOINT_OFFSET);
	volatile u32 *dm_rpmPtr      = (u32 *) (SM_DM_BASEADDR + SM_DM_RPM_OFFSET);
	volatile u32 *dm_dirPtr      = (u32 *) (SM_DM_BASEADDR + SM_DM_DIR_OFFSET);

	// reset flag
	ocm_clearMemFlag();

	// initialize drive motor ocm setpoint
	*dm_setPointPtr = (u8) 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 1); // 1 byte

	// initialize drive motor ocm rpm
	*dm_rpmPtr = (u16) 0;
	Xil_DCacheFlushRange((u32) dm_rpmPtr, 1); // 2 bytes

	// initialize drive motor ocm dir
	*dm_dirPtr = (u8)  0;
	Xil_DCacheFlushRange((u32) dm_dirPtr, 1); // 1 byte
}







