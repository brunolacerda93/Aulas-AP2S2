#ifndef ValidaInput_H
#define ValidaInput_H

    #include "../tools.h"
    #include <ctype.h>

//-------------------------------------------------------------------------------------------------------------//

    //
    // Retorna 0 se o CPF passado é válido
    //
    int ValidaCPF(string cpf) {
        size_t length = strlen(cpf);

        if (length < 11) {
            printf("\nCPF deve conter 11 caracteres!!!\n");
            return 1;
        }

        for (size_t i = 0; i < length; i++) {
            if (!isdigit(cpf[i])) {
                printf("\nDigite apenas números!!!\n");
                return 1;
            }
        }

        return 0;
    }

    //
    // Retorna 0 se o nome passado é válido
    //
    int ValidaNome(string nome) {
        size_t length = strlen(nome);

        if (length < 3) {
            printf("\nNome deve ser maior do que 3 caracteres!!!\n");
            return 1;
        }

        for (size_t i = 0; i < length; i++) {
            if (isdigit(nome[i]) && nome[i] != ' ') {
                printf("\nNome não deve conter números!!!\n");
                return 1;
            }
        }

        return 0;
    }

    //
    // Retorna 0 se a categoria passada é válida
    //
    int ValidaCategoria(string cat) {
        size_t length = strlen(cat);

        for (size_t i = 0; i < length; i++) {
            if (cat[i] != 'A' && cat[i] != 'B' && cat[i] != 'C' && cat[i] != 'D' && cat[i] != ' ') {
                printf("\nCategoria inválida!!!\n");
                return 1;
            }
        }

        return 0;
    }

    //
    // Retorna 0 se a placa passada é válida
    //
    int ValidaPlaca(string placa) {
        size_t length = strlen(placa);

        for (size_t i = 0; i < length; i++) {
            if (!isalnum(placa[i])) {
                printf("\nDigite apenas letras e números!!!\n");
                return 1;
            }
        }

        if (length != 7) {
            printf("\nPlaca deve conter 7 caracteres!!!\n");
            return 1;
        }

        for (size_t i = 0; i < 3; i++) {
            if (!isalpha(placa[i])) {
                printf("\nPlaca Inválida!!!\n");
                return 1;
            }
        }

        for (size_t i = 3; i < length; i++) {
            if (i == 4) continue;
            if (!isdigit(placa[i])) {
                printf("\nPlaca Inválida!!!\n");
                return 1;
            }
        }

        return 0;
    }

#endif