#include "tools.h"
#include "sorting.h"

// Corpo das funções


    // Bubble Sort

    void bubbleSort(int array[], int n) {
        int flag;

        for (int i = n-1; i>0; i--) {
            flag = 1;

            for (int j = 0; j<i; j++) {
                if (array[j] > array[j+1]) {
                    swap(&array[j], &array[j+1]);
                    flag = 0;
                }
            }
            
            if (flag) break;
        }
    }


    // Insertion Sort

    void insertionSort(int array[], int n) {
        int j, aux;

        for (int i=1; i<n; i++) {
            aux = array[i];
            
            for (j = i-1; j >= 0 && array[j] > aux; j--) {
                array[j+1] = array[j];
            }
            
            array[j+1] = aux;
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


    // Quick Sort (Lomuto)

    void lomutoQuickSort(int arr[], int ini, int fim) {
        if (ini >= fim) return;

        int pivot = arr[fim];
        int swp;

        // set a pointer to divide array into two parts
        // one part is smaller than pivot and another larger

        int pointer = ini;
        for (int i = ini; i < fim; i++) {
            if (arr[i] < pivot) {
                if (pointer != i) {
                    swp = arr[i];               // swap a[i] with a[pointer]
                    arr[i] = arr[pointer];      // a[pointer] behind larger than pivot
                    arr[pointer] = swp;
                }
                pointer++;
            }
        }

        //swap back pivot to proper position
        swp = arr[fim];
        arr[fim] = arr[pointer];
        arr[pointer] = swp;

        lomutoQuickSort(arr, ini, pointer - 1);
        lomutoQuickSort(arr, pointer + 1, fim);
    }


    // Quick Sort (Hoare) -> Otimizado para evitar o pior caso

    void hoareQuickSort(int arr[], int ini, int fim) {
        int i = ini, j = fim, aux, m, x;

        m = (ini + fim) / 2;
        x = arr[m]; //pivot

        // Hoare’s Partition 
        while (i <= j)
        {
            if (arr[i] < x) i++;        // até encontrar um valor maior ou igual o pivot
            else if (arr[j] > x) j--;   // até encontrar um valor menor ou igual o pivot
            else {
                // troque os valores
                aux = arr[i];
                arr[i++] = arr[j];  
                arr[j--] = aux;
            }
        }

        if (ini < j)
            hoareQuickSort(arr, ini, j);
        if (fim > i)
            hoareQuickSort(arr, i , fim);
    }


    // Cria Array
    
    int *createArray(int size) {
        return (int*) malloc(size * sizeof(int));
    }


    // Preenche Array

    void fillArray(int array[], int size) {
        time_t ts;
        srand((unsigned) time(&ts));
        for (int i=0; i<size; i++) {
            array[i] = (rand() % RAND_MAX) * ((rand() % 100) + 1);
        }
    }


    // Exibe Array

    void showArray(int array[], int size) {
        for (int i=0; i<size; i++) {
            printf("[%7d] ", array[i]);
            if ((i+1)%10 == 0)
                printf("\n");
        }
    }


    // Gera Novo Array

    int *resetArray(int array[], int size) {
        free(array);
        array = createArray(size);
        fillArray(array, size);
        return array;
    }


    // Menu Principal

    static void menu(const int size) {
        char opc;
        clock_t t;  // variável para armazenar o tempo de execução

        int *array = createArray(size);
        fillArray(array, size);

        do { // hast

            //system("cls");
            clearScreen();

            printf("\narray[0] = %7d\n", array[0]);
            printf("\n 1 - Bubble Sort");
            printf("\n 2 - Insertion Sort");
            printf("\n 3 - Selection Sort");
            printf("\n 4 - Merge Sort");
            printf("\n 5 - Lomuto Quick Sort");
            printf("\n 6 - Hoare  Quick Sort");
            printf("\n 7 - Show Array");
            printf("\n 8 - Reset Array");
            printf("\n 0 - Exit");
            printf("\n\n Choose: ");
            scanf("%c", &opc); cleanBuffer();

            t = clock();    // inicia a contagem do tempo

            switch (opc) {
                case '1':      bubbleSort(array, size);       break;
                case '2':   insertionSort(array, size);       break;
                case '3':   selectionSort(array, size);       break;
                case '4':       mergeSort(array, 0, size);    break;
                case '5': lomutoQuickSort(array, 0, size);    break;
                case '6':  hoareQuickSort(array, 0, size);    break;
                case '7':      showArray(array, size);        break;
                case '8': array = resetArray(array, size);    break;
                case '0': free(array); pause(); exit(0);
                default: printf("INVALID!\n\n");              break;
            }

            t = clock() - t;    // finaliza a contagem do tempo
            double time_taken = ((double)t)/CLOCKS_PER_SEC; // em segundos
            
            printf("\nTime taken: %.2lf seconds\n", time_taken);
            pause();

        } while(opc != '0');
    }
