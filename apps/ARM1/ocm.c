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
	//
	volatile u32   *mode0Ptr  = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETMANUAL_OFFSET);
	volatile u32  *setDir0Ptr = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETDIR_OFFSET);
	volatile u32  *setPt0Ptr  = (u32 *) (SM_MM_BASEADDR + SM_MM0_SETPOINT_OFFSET);
	volatile u32 *curPos0Ptr  = (u32 *) (SM_MM_BASEADDR + SM_MM0_POS_OFFSET);

	volatile u32   *mode1Ptr  = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETMANUAL_OFFSET);
	volatile u32  *setDir1Ptr = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETDIR_OFFSET);
	volatile u32  *setPt1Ptr  = (u32 *) (SM_MM_BASEADDR + SM_MM1_SETPOINT_OFFSET);
	volatile u32 *curPos1Ptr  = (u32 *) (SM_MM_BASEADDR + SM_MM1_POS_OFFSET);

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

	*mode0Ptr   = 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 1);
	*setDir0Ptr = 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 1);
	*setPt0Ptr  = 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 2);
	*curPos0Ptr = 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 2);

	*mode1Ptr   = 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 1);
	*setDir1Ptr = 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 1);
	*setPt1Ptr  = 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 2);
	*curPos1Ptr = 0;
	Xil_DCacheFlushRange((u32) dm_setPointPtr, 2);
}







