#include <stdio.h>
#include "algorithm.h"

/**
 * Merges two subarrays of arr[]
 * First subarray is arr[l..m]
 * Second subarray is arr[m+1..r]
 **/
void merge(int arr[], int l, int m, int r)
{
	int i, j, k;
	//size of the arr for left side
	//+1 to include the middle one
	//start from l to m
	int n1 = m - l + 1;
	//size of the arr for right side
	//start from m + 1 to r
	int n2 = r - m;

	/* creat temp arrays */
	int L[n1], R[n2];//it works after C99

	/* Merge the temp arrays back into arr[l..r] */
	for (i = 0; i < n1; i++)
		L[i] = arr[l + i];
	for (j = 0; j < n2; j++)
		R[j] = arr[m + 1 + j];//start from m + 1

	/* Merge the temp arrays back into arr[l..r] */
	i = 0; // Initial index of first subarray
	j = 0; // Initial index of second subarray
	k = l; // Initial index of third subarray
	while (i < n1 && j < n2)
	{
		if(L[i] <= R[j])
		{
			arr[k] = L[i];
			i++;
		}
		else
		{
			arr[k] = R[j];
			j++;
		}
		k++;
	}

	/*
	 * Copy the remaining elements of L[], if there
	 * are any
	 */
	while(i < n1)
	{
		arr[k] =L[i];
		i++;
		k++;
	}

	/*
	 * Copy the remaining elements of R[], if there
	 * are any
	 */
	while (j < n2)
	{
		arr[k] = R[j];
		j++;
		k++;
	}
}

/*
 * l is for left index and r is right index of the
 * sub-array of arr to be sorted
 */
void mergeSort(int arr[], int l, int r)
{
	if (l < r)
	{
		int m = l + (r - l)/2;

		//sort first and second halves
		mergeSort(arr, l, m);
		mergeSort(arr, m + 1, r);

		merge(arr, l, m, r);
	}
}