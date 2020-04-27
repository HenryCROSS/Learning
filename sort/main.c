#include <stdio.h>
#include "algorithm.h"

#define GET_ARR_LEN(arr,len){len = (sizeof(arr) / sizeof(arr[0]));}

void printArr(int* arr, int size);

int main (void)
{
	int arr[] = {9,8,7,6,5,4,3,2,1};
	int size;
	GET_ARR_LEN(arr, size)

	printArr(arr, size);

	//selectionSort(arr, size);
	//quickSort(arr, 0, size);
	mergeSort(arr, 0, size);
	printArr(arr, size);

	return 0;
}

void printArr(int* arr, int size)
{
	int i;
	
	printf("Array: ");
	for(i = 0; i < size; i++)
	{
		printf("%d ", arr[i]);
	}
	printf("\n\n");

}
