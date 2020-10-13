// GeneratingPermutations.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

void getNextPerm(int *arr, int level)
{

	// vidjeti da li veæ postojiu prethodnom dijelu
	if (level == 0)
		arr[level] = arr[level] + 1;
	else
	{
		// proæi kroz prethodne i vidjetikoji može staviti!
		int nextElem = arr[level] + 1;

		if (nextElem == 6)
			nextElem = 1;

		bool bFound = false;
		do
		{
			bFound = false;
			for (int i = 0; i < level; i++)
			{
				if (arr[i] == nextElem)
				{
					bFound = true;
					nextElem++;				// try next one
					break;
				}
			}
		} while (bFound == true);
		arr[level] = nextElem;
	}

	if (level == 4)
	{
		// print
		for (int i = 0; i < 5; i++)
			printf("%d, ", arr[i]);
		printf("\n");

		getNextPerm(arr, level - 1);
	}
	else
	{
		getNextPerm(arr, level + 1);

		if (arr[level] == 5)			// means we exhausted 
			getNextPerm(arr, level - 1);
	}
}



int main()
{
	int arr[5] = { 0, 0, 0, 0, 0 };

	getNextPerm(arr, 0);
    return 0;
}

