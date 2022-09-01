#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX 3


    // declaracao das structs

    typedef struct data {
        int dia;
        int mes;
        int ano;
    } Data;

    typedef struct ficha_aluno {
        char nome[50];
        Data data;
        int  RA;
    } Aluno;

//-------------------------------------------------------------------------------------------------------------//

    // declaracao das funcoes

    Data    fillData    (int dia, int mes, int ano);
    Aluno   fillAluno   (char nome[], Data data, int RA);
    void    showAluno   (Aluno aluno);
    void    showData    (Data data);
    int     comparaData (Data data1, Data data2);

//-------------------------------------------------------------------------------------------------------------//

    // corpo das funcoes

        // retorna uma struct no formato aluno

        Aluno fillAluno(char nome[],
                        Data data,
                        int  RA) {
            Aluno aux;
            strcpy(aux.nome, nome);
            aux.data = data;
            aux.RA = RA;
            return aux;
        }

        // exibe um aluno
        
        void showAluno(Aluno aluno) {
            printf("Nome : %s\n", aluno.nome);
            printf("RA.. : %d\n", aluno.RA);
            printf("Data : ");
            showData(aluno.data);
        }

        // retorna uma struct no formato data
        
        Data fillData(int dia,
                      int mes,
                      int ano) {
            Data aux;
            aux.dia = dia;
            aux.mes = mes;
            aux.ano = ano;
            return aux;
        }

        // exibe uma data
        
        void showData(Data data) {
            printf("%02d/%02d/%02d\n\n", data.dia, data.mes, data.ano);
        }

        // compara datas
        // retorna  0 se as datas são iguais
        // retorna  1 se a primeira data for maior
        // retorna -1 se a segunda  data for maior

        int comparaData(Data data1, Data data2) {
            if (data1.ano == data2.ano) {
                if (data1.mes == data2.mes) {
                    if (data1.dia == data2.dia) {
                        return 0;
                    } else {
                        if (data1.dia < data2.dia) {
                            return -1;
                        } else {
                            return 1;
                        }
                    } 
                } else {
                    if (data1.mes < data2.mes) {
                        return -1;
                    } else {
                        return 1;
                    }
                }
            } else {
                if (data1.ano < data2.ano) {
                    return -1;
                } else {
                    return 1;
                }
            }
        }

        // le dados do aluno
        // retorna uma struct com os dados do aluno

        Aluno addAluno() {
            char nome[50];
            int dia, mes, ano, RA;

            printf("Nome do aluno: ");
            fgets(nome,50,stdin);
            nome[strlen(nome)-1] = 0;
            printf("RA do aluno: ");
            scanf("%d", &RA);
            getchar();
            printf("Data de nascimento do aluno: ");
            scanf("%d/%d/%d", &dia, &mes, &ano);
            while(getchar() != '\n');
            return fillAluno(nome,
                             fillData(dia, mes, ano),
                             RA);
        }

//-------------------------------------------------------------------------------------------------------------//

    // corpo do programa

    int main() {
        Aluno alunos[MAX];
        int dia, mes, ano;

        for (int i=0; i<MAX; i++) {
            alunos[i] = addAluno();
        }

        printf("Digite a data de corte: ");
        scanf("%d/%d/%d", &dia, &mes, &ano);
        while(getchar() != '\n');
        
        for (int i=0; i<MAX; i++) {
            if(comparaData(alunos[i].data,
                           fillData(dia,mes,ano)) == 1) {
                printf("Aluno %d:\n", i+1);
                showAluno(alunos[i]);
            }
        }   

        return 0;
    }
