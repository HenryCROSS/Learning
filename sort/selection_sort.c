#include <stdio.h>
#include "algorithm.h"

void selectionSort(int* arr, int size)
{
	int i, j, tmp, min_idx;

	for(i = 0; i < size - 1; i++)
	{
		min_idx = i;
		for(j = i + 1; j < size; j++)
		{
			//find the number lower than the index min_idx
			if(arr[min_idx] > arr[j])
			{
				min_idx = j;
			}
		}

		//swap
		tmp = arr[min_idx];
		arr[min_idx] = arr[i];
		arr[i] = tmp;
	}
}
