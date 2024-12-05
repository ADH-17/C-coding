#include <stdio.h>

void _selection_sort(int array[], int length);  // Declaration of the assembly function

// Test arrays
int arr1[4] = {3, 2, 5, 1};
int arr2[5] = {7, 3, 5, 2, 1};

void printArray(int array[], int length) {
    for (int i = 0; i < length; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
}

int main() {
    printf("Original array 1: ");
    printArray(arr1, 4);
    printf("Original array 2: ");
    printArray(arr2, 5);

    _selection_sort(arr1, 4);  // Call assembly function
    _selection_sort(arr2, 5);  // Call assembly function

    printf("Sorted array 1: ");
    printArray(arr1, 4);
    printf("Sorted array 2: ");
    printArray(arr2, 5);

    return 0;
}
