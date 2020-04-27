#include <stdio.h>

int binary_search(int* list, int size, int target);

int main (void)
{
	int arr[] = {0,1,2,3,4,5,6,7,8,9,10};	
	int size = sizeof(arr) / sizeof(int);
	int i;
	for(i = 0; i < size; i++)
	{
		printf("%d ", arr[i]);
	}
	printf("\nafter binary_search, the index of 4 is %d\n", binary_search(arr, size, 4));
	return 0;
}

int binary_search(int* list, int size, int target)
{
	int 
		left = 0,
		right = size - 1,
		mid = 0;

	while(left <= right)
	{
		//prevent from stack overflow
		mid = left + (right - left) / 2;
		//if found the target
		if (list[mid] == target)
			return mid;
		//if the target is greater than the current value
		if(list[mid] < target)
		{
			left = mid + 1;
		}
		//if the target is lower thant the current value
		else if (list[mid] > target)
		{
			right = mid - 1;
		}
	}
	//if not find the target
	return -1;
}
