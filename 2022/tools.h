#ifndef tools_H
#define tools_H
#include <stdio.h>
#include <stdlib.h>


    // limpa o buffer de entrada
    
    void cleanBuffer() {
        while(getchar() != '\n');
    }


    // troca o endereço de duas variáveis de inteiros

    void swap(int *n1, int *n2) {
        int temp;
        temp = *n1;
        *n1 = *n2;
        *n2 = temp;
    }


    // retorna 0 se a hora é válida
    // retorna 1 se a hora é inválida
    // formato 24h

    int validateTime(int hour, int min, int sec) {
        if (hour >= 0 && hour < 24) {
            if (min >= 0 && min < 60) {
                if (sec >= 0 && sec < 60)
                    return 0;
            }
        }
        printf("\nDIGITE UMA HORA VALIDA!\n\n");
        return 1;
    }

#endif