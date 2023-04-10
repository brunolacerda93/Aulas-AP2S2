#ifndef tools_H
#define tools_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

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
    
    void clearBuffer() {
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
        printf("\nPressione qualquer tecla para continuar... ");
        getchar();
    }
    

    // Clear screen

    void cleanScreen() {
        printf("\e[1;1H\e[2J");
    }


    // Captura entrada de um Inteiro

    int IntInput() {
        int n;

        scanf("%d", &n);
        clearBuffer();

        return n;
    }

#endif