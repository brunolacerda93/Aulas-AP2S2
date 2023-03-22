#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tools.h"


// Corpo das funções


    // substitui o caractere passado como parâmetro por '\0'

    void slice(char array[], int max, char c) {
        for (int i=0; i<max; i++) {
            if (array[i] == c) array[i] = '\0';
        }
    }


    // converte do formato 24h para segundos

    int hourToSec(int h, int m, int s) {
        return h*3600 + m*60 + s;
    }


    // converte segundos para o formato 24h

    void secToHour(int sec) {

        sec = sec>=0 ? sec : sec*-1;

        int r = sec%3600;
        int h = sec/3600;
        int m = r/60;
        int s = r%60;

        printf("\nDiferenca entre as horas digitadas:\n");
        printf("%02d:%02d:%02d", h, m, s);
    }


    // EXERCÍCIO 01

    void ex_01() {
        printf("EXERCICIO 01");
        printf("\n - Criar um programa capaz de calcular o tempo entre dois horarios quaisquer de um determinado dia.");
        printf("\n - O programa deve ler dois horarios, no formato HH:MM:SS (dois digitos para hora, dois para minutos e dois para segundos). O programa deve verificar se o horario e valido(HH entre 00 e 23, MM entre 00 e 59, SS entre 00 e 59).");
        printf("\n - O programa deve ter uma funcao para calcular a quantidade de segundos em um horario, e outra funcao para calcular e imprimir a quantidade de horas, minutos e segundos em uma quantidade de segundos\n\n");

        const int MAX = 10;
        int h1, h2, m1, m2, s1, s2;
        char hora1[MAX], hora2[MAX];

        do { // hast

            printf("Digite a primeira hora (hh:mm:ss): ");
            fgets(hora1, MAX, stdin);
            slice(hora1, MAX, ':'); h1 = atoi(hora1); m1 = atoi(&hora1[3]); s1 = atoi(&hora1[6]);

        } while (validateTime(h1, m1, s1));

        do { // hast

            printf("Digite a segunda  hora (hh:mm:ss): ");
            fgets(hora2, MAX, stdin);
            slice(hora2, MAX, ':'); h2 = atoi(hora2); m2 = atoi(&hora2[3]); s2 = atoi(&hora2[6]);

        } while (validateTime(h2, m2, s2));

        secToHour(hourToSec(h1, m1, s1) - hourToSec(h2, m2, s2));

        printf("\n\n");
    }


    // EXERCÍCIO 02

    void ex_02() {
        printf("EXERCICIO 02");
        printf("\n - Faca um programa que, dadas 2 palavras, determine:");
        printf("\n - Se as palavras sao iguais;");
        printf("\n - Caso as palavras sejam diferentes, qual delas tem maior comprimento (nao esquecer a possibilidade de existirem palavras diferentes de mesmo tamanho);");
        printf("\n - Verifique se a segunda palavra e uma sub string da primeira:");
        printf("\n - Exemplo:\tPalavra 1 = casamento\n\t\tPalavra 2 = casa\n\n");

        const int MAX = 20;
        char *p1, *p2;
        char word1[MAX], word2[MAX];
        int sub = 0;
        
        printf("Digite  uma  palavra: ");
        scanf("%s", &word1); cleanBuffer();
        printf("Digite outra palavra: ");
        scanf("%s", &word2); cleanBuffer();

        p1 = strlwr(word1);                                         // funciona apenas em sistemas windows
        p2 = strlwr(word2);                                         // funciona apenas em sistemas windows
        
        printf("\n");

        if (strcmp(p1, p2) == 0)
            printf("As palavras sao iguais!");
        else {
            if (strlen(word1) > strlen(word2)) {
                printf("A palavra [%s] e maior do que a palavra [%s]", word1, word2);

                // testa se é substring

                for (int i=0; p1[i] != '\0'; i++) {
                    sub = 0;
                    for (int j=0; p2[j] != '\0'; j++) {
                        if (p1[i+j] != p2[j]) {
                            sub = 0;
                            break;
                        }
                        sub = 1;
                    }
                    if (sub) {
                        break;
                    }
                }
            }
            else if (strlen(word2) > strlen(word1))
                printf("A palavra [%s] e maior do que a palavra [%s]", word2, word1);
            else
                printf("Ambas possuem o mesmo tamanho!");
            
            // bloco das substrings
            if (sub)
                printf("\n\nA palavra [%s] e uma substring de [%s]", word2, word1);
            else 
                printf("\n\nA palavra [%s] nao e substring de [%s]", word2, word1);
        }

        printf("\n\n");
    }


    // EXERCÍCIO 03

    void ex_03() {
        printf("EXERCICIO 03");
        printf("\n - Faca um programa que leia 10 nomes completos do teclado, e ao final apresente uma listagem dos nomes no formato:");
        printf("\n - Sobrenome, Primeiro_Nome\n\n");

        char nomes[10][50];
        char *nome[10];
        char *sobreNome[10];

        printf("Digite 10 nomes!\n\n");
        
        for (int i=0; i<10; i++) {
            printf("Digite o %2d nome: ", i+1);
            fgets(nomes[i], 50, stdin);
            
            for (int j=0; j<50; j++) {
                if (nomes[i][j] == '\n')
                    nomes[i][j] = '\0';
            }
        }

        for (int i=0; i<10; i++) {
            nome[i] = strtok(nomes[i], " ");
            sobreNome[i] = strtok(NULL, "\0");
        }

        for (int i=0; i<10; i++) {
            printf("\nPessoa %2d: %s, %s", i+1, sobreNome[i], nome[i]);
        }

        printf("\n\n");
    }


    // menu de decisao

    void menu(char opc) {
        system("cls");
        switch (opc) {
            case '1': ex_01();               break;
            case '2': ex_02();               break;
            case '3': ex_03();               break;
            default: printf("INVALID!\n\n"); break;
        }
    }

//-------------------------------------------------------------------------------------------------------------//

    // corpo do programa

    int main() {
        char opc;

        do { // hast
            system("cls");

            printf("LISTA 01\n");
            printf("\n 1 - Exercicio 01");
            printf("\n 2 - Exercicio 02");
            printf("\n 3 - Exercicio 03");
            printf("\n 0 - Sair\n");
            printf("\nEscolha: ");
            
            scanf("%c", &opc); cleanBuffer();
            
            if (opc != '0') 
                menu(opc);

            system("pause");

        } while (opc != '0');
        
        return 0;
    }
