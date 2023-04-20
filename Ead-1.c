#include "sorting.c"

#define tam 2000000

void sequentialSearch(int array[], const int size, const int num) {
    CALLING;
    int flag = 0;

    for (size_t i = 0; i < size && !flag; i++) {
        if (array[i] == num) {
            flag = 1;
        }
    }
    if (flag)
        printf("\n Found!!!\n");
    else
        printf("\n Element not found...\n");
}

void binarySearch(int array[], const int size, const int num) {
    CALLING;

    if (binSearch(array, num, 0, tam) >= 0)
        printf("\n Found!!!\n");
    else
        printf("\n Element not found...\n");
}

int binSearch(int array[], int n, int ini, int fim) {
    if (ini == fim-1)
        return -1;

    int meio = (ini+fim)/2;

    if (n == array[meio])
        return n;

    if (n > array[meio])
        return binSearch(array, n, meio++, fim);
    else if (n < array[meio])
        return binSearch(array, n, ini, meio--);

    return -1;
}

int main(int argc, char const *argv[]) {
    
    clearScreen();
    printf("Creating and Sorting a Random Array...\n");
    
    int* array = createArray(tam);
    fillArray(array, tam);
    hoareQuickSort(array, 0, tam);

    int num = userInput();

    timeTaken(sequentialSearch, array, tam, num);
    timeTaken(binarySearch,     array, tam, num);

    pause();
    return 0;
}
