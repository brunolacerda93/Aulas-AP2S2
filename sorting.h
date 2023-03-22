#ifndef sorting_H_
#define sorting_H_

#define SIZE 1000000

    void bubbleSort     (int array[], int n);
    void insertionSort  (int array[], int n);
    void selectionSort  (int array[], int n);
    void merge          (int array[], int ini, int meio, int fim);
    void mergeSort      (int array[], int ini, int fim);
    void lomutoQuickSort(int array[], int ini, int fim);
    void hoareQuickSort (int array[], int ini, int fim);
    int* createArray    (int size);
    void fillArray      (int array[], int size);
    void showArray      (int array[], int size);
    int* resetArray     (int array[], int size);

#endif