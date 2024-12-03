#include <stdio.h>

void array_Add(int op1[], int op2[], int result[], int length);
int array1[] = {1,2,3};
int array2[] = {1,2,3};
int result[3];


int main(){
    
    array_Add(array1, array2, result, 3);

    printf("Adding array {1,2,3} with array {1,2,3} should return 2,4,6 \n");
    for (int i = 0; i < 3; i++){
        printf("%d, ", result[i]);
    }
return 0;
}