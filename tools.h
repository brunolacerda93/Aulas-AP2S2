#ifndef tools_H
#define tools_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include <time.h>
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>

//-------------------------------------------------------------------------------------------------------------//

    // Definindo "tipos"

    typedef char* string;
    typedef void* var;

//-------------------------------------------------------------------------------------------------------------//
    
    // MACROS

    //
    // MACRO para funções não implementadas
    //--------------------------------------------
    //
    #define UNIMPLEMENTED \
        do { \
            fprintf(stderr, "\n%s:%d: %s is not implemented yet...\n\n", \
                    __FILE__, __LINE__, __func__); \
            abort(); \
        } while (0)

    //
    // MACRO para exibir o nome da função
    //----------------------------------------
    //
    #define CALLING printf("\n\n||===== Calling: %s =====||\n", __func__)

//-------------------------------------------------------------------------------------------------------------//

    // FUNÇÕES E MÉTODOS

    //
    // Limpa o buffer de entrada
    //
    void clearBuffer() {
        while(getchar() != '\n');
    }

    //
    // Troca dois inteiros por endereço
    //
    void swap(int *n1, int *n2) {
        int temp;
        temp = *n1;
        *n1 = *n2;
        *n2 = temp;
    }

    //
    // Retorna 1 se a hora é válida
    //
    int validateTime(const int hour, const int min, const int sec) {
        if (hour < 0 || hour > 24)
            return 0;
        
        if (min < 0 || min > 59)
            return 0;
        
        if (sec < 0 || sec > 59)
            return 0;
        
        return 1;
    }

    //
    // Retorna o maior de dois inteiros
    //
    int maxInt(const int a, const int b) {
        return a >= b ? a : b;
    }

    //
    // Pausa e espera um input
    //  
    void pause() {
        printf("\nPressione qualquer tecla para continuar... ");
        getchar();
    }
    
    //
    // Limpa a tela do console
    //
    void cleanScreen() {
        printf("\e[1;1H\e[2J");
    }

    //
    // Captura a entrada de um inteiro
    //
    int Int() {
        int num  = 0;
        int sign = 1;
        int c;

        while ((c = getchar()) != '\n') {
            if (c == '-')
                sign = -1;

            else if (c >= '0' && c <= '9')
                num = num * 10 + (c - '0');
        }

        return num * sign;
    }

    //
    // Captura a entrada de um double
    //
    double Double() {
        char input[100];

        fgets(input, 100, stdin);

        return strtod(input, NULL);
    }

    //
    // Retorna um ponteiro para uma string vazia do tamanho passado como argumento
    //
    string String(const size_t size) {
        return (string) calloc(size, sizeof(char));
    }

    //
    // Formata o CPF para exibição
    //
    void PrintCPF(string cpf) {
        size_t i = 0;

        while (cpf[i] != '\0') {
            printf("%c", cpf[i]);

            switch(i++) {
                case 2:
                case 5: printf("."); break;
                case 8: printf("/"); break;
            }
        }
    }

    //
    // Formata a Placa do Veículo para exibição
    //
    void PrintPlaca(string placa) {
        size_t i = 0;

        while (placa[i] != '\0') {
            printf("%c", placa[i]);

            if (i == 2)
                printf("-");

            i++;
        }
    }

#endif