#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tools.h"


// Corpo das funções


    // Bubble Sort

    void bubbleSort(int array[], int n) {
        int aux, flag;

        for (int i = n-1; i>0; i--) {
            flag = 0;
            
            for (int j = 0; j<i; j++) {
                if (array[j] > array[j+1]) {
                    swap(&array[j], &array[j+1]);
                    flag = 1;
                }
            }
            
            if (flag == 0)
                break;
        }
    }


    // Insertion Sort

    void insertionSort(int array[], int n) {
        int j, x;

        for (int i=1; i<n; i++) {
            x = array[i];
            j = i-1;
            
            while (j >= 0 && array[j] > x) {
                array[j+1] = array[j];
                j--;
            }
            
            array[j+1] = x;
        }
    }


    // Selection Sort

    void selectionSort(int array[], int n) {
        int min;

        for (int i=0; i < n-1; i++) {
            min = i;
            
            for (int j = i+1; j<n; j++) {
                if (array[j] < array[min])
                    min = j;
            }
            
            swap(&array[i], &array[min]);
        }
    }


    // Merge

    void merge(int array[], int ini, int meio, int fim) {
        int com1 = ini, com2 = meio+1, comAux = 0, tam = fim-ini+1;
        int *vetAux;
        
        vetAux = (int*) malloc(tam * sizeof(int));

        while (com1 <= meio && com2 <= fim) {
            if (array[com1] < array[com2]) {
                vetAux[comAux] = array[com1];
                com1++;
            } else {
                vetAux[comAux] = array[com2];
                com2++;
            }
            comAux++;
        }

        while (com1 <= meio) {                              // caso ainda haja elementos na primeira metade
            vetAux[comAux] = array[com1];
            comAux++;
            com1++;
        }

        while (com2 <= fim) {                               // caso ainda haja elementos na segunda metade
            vetAux[comAux] = array[com2];
            comAux++;
            com2++;
        }

        for (comAux = ini; comAux <= fim; comAux++) {       // move os elementos de volta para o array original
            array[comAux] = vetAux[comAux-ini];
        }
        
        free(vetAux);
    }


    // Merge Sort

    void mergeSort(int array[], int ini, int fim) {
        if (ini < fim) {
            int meio = (fim+ini)/2;

            mergeSort(array, ini, meio);
            mergeSort(array, meio+1, fim);
            merge(array, ini, meio, fim);
        }
    }


    // Quick Sort

    void quickSort(int array[], int ini, int fim) {
        int i, j, pivot;
        
        if (ini < fim) {
            pivot = ini;
            i = ini;
            j = fim;
            
            while (i < j) {
                while (array[i] <= array[pivot] && i < fim)
                    i++;                               // move o índice i até o primeiro elemento maior do que o pivô
                
                while (array[j] > array[pivot])
                    j--;                               // move o índice j até o último elemento menor do que o pivô
                
                if (i < j)                             // deste modo os elementos menores do que o pivô estarão logo à sua direita
                    swap(&array[i], &array[j]);        // enquanto que os maiores serão dispostos para a sua direita
            }
            
            swap(&array[pivot], &array[j]);            // coloca o pivô no seu lugar
            
            quickSort(array, ini, j-1);                // chama a função para a parte à esquerda
            quickSort(array, j+1, fim);                // chama a função para a parte à direita
        }
    }


    // Preenche Array

    void fillArray(int array[], int size) {
        for (int i=0; i<size; i++) {
            array[i] = rand() % 1000000;
        }
    }


    // Exibe Array

    void showArray(int array[], int size) {
        for (int i=0; i<size; i++) {
            printf("[%6d] ", array[i]);
            if ((i+1)%10 == 0)
                printf("\n");
        }
    }

//-------------------------------------------------------------------------------------------------------------//

    // Corpo do programa

    int main() {
        unsigned int n = 10000000;
        int *array;
        char opc;

        array = (int*) malloc(n * sizeof(int));

        fillArray(array, n);

        do { // hast

            system("cls");

            printf("\n 1 - Bubble Sort");
            printf("\n 2 - Insertion Sort");
            printf("\n 3 - Selection Sort");
            printf("\n 4 - Merge Sort");
            printf("\n 5 - Quick Sort");
            printf("\n 6 - Show Array");
            printf("\n 0 - Exit");
            printf("\n\n Choose: ");
            scanf("%c", &opc); cleanBuffer();

            switch (opc) {
                case '1':    bubbleSort(array, n);     break;
                case '2': insertionSort(array, n);     break;
                case '3': selectionSort(array, n);     break;
                case '4':     mergeSort(array, 0, n);  break;
                case '5':     quickSort(array, 0, n);  break;
                case '6':     showArray(array, n);     break;
                case '0':                              break;
                default: printf("INVALID!\n\n");       break;
            }

            system("pause");

        } while(opc != '0');

        free(array);

        return 0;
    }
