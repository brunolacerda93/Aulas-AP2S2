#ifndef Locacoes_H
#define Locacoes_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "tools.h"
    #include "Data.c"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define CPF_LEN   15
    #define PLACA_LEN 10
    #define CHAVE_LEN 70

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

    typedef struct Locacao {
        char   CPF  [CPF_LEN];
        char   Placa[PLACA_LEN];
        Data*  DataLocacao;
        Data*  DataDevolucao;
        double ValorTotal;
        char   Chave[CHAVE_LEN];
        struct Locacao* proximo;
    } Locacao;

    typedef struct {
        Locacao* locacao;
        size_t   tamanho;
    } ListaLocacoes;

//-------------------------------------------------------------------------------------------------------------//

    // Lista de Funções e Métodos

    // Construtores
        Locacao*       CriaLocacaoArgs  (char[], char[], Data*, Data*, double);
        ListaLocacoes* CriaListaLocacoes();
        ListaLocacoes* CriaListaLocacoesArgs(Locacao*);

    // Métodos Úteis
        void           GeraChave            (Locacao*, string);
        void           ExibeLocacao         (Locacao*);
        Locacao*       LocacaoPorChave      (ListaLocacoes*, char[]);
        ListaLocacoes* ListaLocacaoPorCPF   (ListaLocacoes*, char[]);
        ListaLocacoes* ListaLocacaoPorPlaca (ListaLocacoes*, char[]);
        ListaLocacoes* ListaLocacaoPorData  (ListaLocacoes*, char[]);

    // CRUD
        void ExibeLocacaoPorChave(ListaLocacoes*);
        void ExibeTodasLocacoes(ListaLocacoes*);
        void InsereLocacaoNaLista(ListaLocacoes*, Locacao*);

    // SubMenu


#endif