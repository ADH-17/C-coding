#include<stdio.h>
int main(){
    int arr[6];                             //initialize the array with some random values
    arr[0] = 1;
    arr[1] = 4;
    arr[2] = 0;
    arr[3] = 6;
    arr[4] = 3;
    arr[5] = 3;



    for (int i = 0; i <  6; i++) {
        int temp = arr[i];                  // Assume the current element is the smallest
        int smallestI = i;                  // make it start at 0

        for (int j = i + 1; j < 6; j++) {
            if (arr[j] < temp) {            // if encounter a smaller number
                temp = arr[j];              // make temp the smaller number 
                smallestI = j;              // set to the address of the smaller number
            }
  
        }
        int swap = arr[i];                  // swap = the array at i
        arr[i] = arr[smallestI];            // array at i = the smallest index
        arr[smallestI] = swap;              // smallest now equals the new i 
     }

    for (int i = 0; i < 6; i++){            // print out the whole sorted array
        printf(" %d ", arr[i]);
    }
    return 0;
}
    

