#include <stdio.h>
#include "algorithm.h"

void quickSort(int* arr, int beg, int end)
{
	if(beg < end)
	{
		int pivot = partition(arr, beg, end);

		quickSort(arr, beg, pivot - 1);
		quickSort(arr, pivot + 1, end);
	}
}

int partition(int* arr,int beg, int end)
{
	int mv = beg - 1;
	int tmp;

	int left = beg;
	while(left <= end - 1)
	{
		if(arr[left] <= arr[end])
		{
			mv++;
			tmp = arr[mv];
			arr[mv] = arr[left];
			arr[left] = tmp;
		}
		left++;
	}
	tmp = arr[mv + 1];
	arr[mv + 1] = arr[end];
	arr[end] = tmp;

	return mv + 1;
}
