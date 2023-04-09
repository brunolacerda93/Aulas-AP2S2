#ifndef Locacoes_H
#define Locacoes_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "tools.h"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define CPF_LEN   15
    #define PLACA_LEN 10
    #define CHAVE_LEN 70

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

    typedef struct {
        char Dia[5];
        char Mes[5];
        char Ano[10];
    } Data;

    typedef struct Locacao {
        char   CPF  [CPF_LEN];
        char   Placa[PLACA_LEN];
        Data*  DataLocacao;
        Data*  DataDevolucao;
        double ValorTotal;
        char   Chave[CHAVE_LEN];
        struct Locacao* proximo;
    } Locacao;

//-------------------------------------------------------------------------------------------------------------//

    // Lista de Funções e Métodos

    // Construtores
        Data* CriaData(char[], char[], char[]);
        Locacao* CriaLocacaoArgs(char[], char[], Data*, Data*, double);

    // Métodos Úteis
        void GeraChave(Locacao*, string);
        void ExibeData(Data*);

    // CRUD


    // SubMenu


#endif