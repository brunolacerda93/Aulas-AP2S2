#include <stdio.h>
#include <stdlib.h>
#define N 3

void fillMatrix(int *matrix) {
    for (int i=0; i<(N*N); i++) {
        matrix[i] = rand() % 20;
    }
}

void showMatrix(int matrix[N][N]) {
    for (int i=0; i<N; i++) {
        for (int j=0; j<N; j++) {
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

void matrixSum(int matrixA[N][N], 
               int matrixB[N][N]) {
    
    for (int i=0; i<N; i++) {
        for (int j=0; j<N; j++) {
            printf("%d\t", matrixA[i][j]+matrixB[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

void matrixMultiplication(int matrixA[N][N], 
                          int matrixB[N][N], 
                          int matrixC[N][N]) {
    
    for (int i=0; i<N; i++) {
        for (int j=0; j<N; j++) {
            matrixC[i][j] = 0;
            for (int k=0; k<N; k++) {
                matrixC[i][j] += matrixA[i][k] * matrixB[k][j];
            }
        }
    }
}

int main() {

    int matrixA[N][N];
    int matrixB[N][N];
    int matrixC[N][N];
    int *mA = (int *)matrixA;
    int *mB = (int *)matrixB;

    fillMatrix(mA);
    fillMatrix(mB);

    printf("\nMatriz A\n");
    showMatrix(matrixA);
    printf("Matriz B\n");
    showMatrix(matrixB);

    printf("Soma:\n");
    matrixSum(matrixA, matrixB);

    matrixMultiplication(matrixA, matrixB, matrixC);
    printf("Matriz C\n");
    showMatrix(matrixC);

    return 0;
}
