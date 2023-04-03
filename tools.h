#ifndef tools_H
#define tools_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include <stdio.h>
    #include <stdlib.h>
    #include <stdbool.h>
    #include <time.h>

//-------------------------------------------------------------------------------------------------------------//

    // Definindo "tipos"

    typedef char* string;
    typedef void* var;

//-------------------------------------------------------------------------------------------------------------//
    
    // MACROS

    // MACRO para funções não implementadas
    
    #define UNIMPLEMENTED \
        do { \
            fprintf(stderr, "\n%s:%d: %s is not implemented yet...\n\n", \
                    __FILE__, __LINE__, __func__); \
            abort(); \
        } while (0)


    // MACRO para exibir o nome da função

    #define CALLING printf("\n\n||===== Calling: %s =====||\n", __func__)
        
//-------------------------------------------------------------------------------------------------------------//

    // FUNÇÕES E MÉTODOS

    // limpa o buffer de entrada
    
    void cleanBuffer() {
        while(getchar() != '\n');
    }


    // Troca o endereço de duas variáveis de inteiros

    void swap(int *n1, int *n2) {
        int temp;
        temp = *n1;
        *n1 = *n2;
        *n2 = temp;
    }


    // Retorna 0 se a hora é válida
    // Retorna 1 se a hora é inválida
    // Formato 24h

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


    // Retorna o maior de dois inteiros

    int maxInt(int a, int b) {
        return a >= b ? a : b;
    }


    // Pause
    
    void pause() {
        printf("\nPressione qualquer tecla para continuar...");
        getchar();
    }
    

    // Clear screen

    void clearScreen() {
        printf("\e[1;1H\e[2J");
    }

    
    // Calcula tempo de execução de uma função (int *array, int size)

    void timeTaken( void func(int *array, const int size, const int num),
                    int *array,
                    const int size,
                    const int num) {
        clock_t t;
        double time_taken;

        t = clock();
        func(array, size, num);
        t = clock() - t;
        time_taken = ((double)t)/CLOCKS_PER_SEC;
        printf("\n Time taken: %.3lf seconds", time_taken);
        printf("\n=============================\n");
    }


    // Captura entrada de um Inteiro

    int userInput() {
        int n;

        printf("\nEnter a number: ");
        scanf("%d", &n);
        cleanBuffer();

        return n;
    }

#endif