#include <stdio.h>

int array_Add(int op1[], int op2[], int length);
int array1[] = {1,2,3};
int array2[] = {1,2,3};
int x;

int main(){
    printf("Adding array 1,2,3 with 1,2,3 should return 2,4,6: %d\n", array_Add(array1,array2, 3)); 
    printf("\n");
    printf("\n"); 
return 0;
}