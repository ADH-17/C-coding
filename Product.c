#include <stdio.h>

int _array_product(int array[], int length);

int myArray[] = {1,2,3};
int myArray2[] = {3,4,1,2};
int myArray3[] ={2,4};

int main(){

    printf("Multiplying array [1,2,3]: %d\n", _array_product(myArray, 3));
    printf("Multiplying array [3,4,1,2]: %d\n", _array_product(myArray2, 4));
    printf("Multiplying array [2,4]: %d\n", _array_product(myArray3, 2));
    return 0;
}