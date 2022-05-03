#include "ocm.h"
#include <stdio.h>


int main()
{
	printf("CPU0 initialized!\r\n");

	int SM_Status;
	ocm_initialize();

	while(1) {
		printf("CPU0 mem status: %d\r\n", SM_Status);
		SM_Status = ocm_getMemFlag();
		if(SM_Status == 0)
		{
			printf("CPU0 mem status: %d\r\n", SM_Status);
			ocm_setMemFlag();
			printf("CPU1 set mem flag!\r\n\n");
		}
	}
}
