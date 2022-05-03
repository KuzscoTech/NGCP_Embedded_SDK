#include "ocm.h"
#include <stdio.h>
#include "sleep.h"

int main()
{
	printf("CPU1 initialized!\r\n");

	int SM_Status;

	while(1) {
		SM_Status = ocm_getMemFlag();
		if(SM_Status == 1)
		{
			printf("CPU1 mem status: %d\r\n", SM_Status);
			ocm_clearMemFlag();
			printf("CPU1 cleared mem flag!\r\n\n");
		}
		sleep(0.1);
	}
}
