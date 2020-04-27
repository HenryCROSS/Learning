#include <stdio.h>

/**
 * output the sum of the array
 */
int sum(int* arr, int size);

int main (void)
{
	int arr[] = {1,2,3,4,5,6};

	int size = sizeof(arr) / sizeof(int);
	
	printf("The sum of the array is: %d\n", sum(arr, size));
	return 0;
}

int sum(int* arr, int size)
{
	//stop at the beginning of the array
	if (size <= 0)
		return 0;
	//return (size - 1)! + size, the last one need to be added independently
	return (sum(arr, size - 1) + arr[size - 1]);
}
