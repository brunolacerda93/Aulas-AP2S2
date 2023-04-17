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

    typedef struct Termo {
        int  indice;
        char chave[CHAVE_LEN];
        struct Termo* proximo;
    } Termo;

    typedef struct {
        Termo* termo;
    } DicionarioLocacoes;

//-------------------------------------------------------------------------------------------------------------//

    // Lista de Funções e Métodos

    // Construtores
        Locacao*       CriaLocacaoArgs  (char[], char[], Data*, Data*, double);
        ListaLocacoes* CriaListaLocacoes();
        ListaLocacoes* CriaListaLocacoesArgs(Locacao*);

    // Métodos Úteis
        void           GeraChave             (Locacao*, string);
        void           ExibeLocacao          (Locacao*);
        void           ExibeListaLocacoes    (ListaLocacoes*);
        void           TelaLocacaoIndex      (ListaLocacoes*, int);
        Locacao*       ClonaLocacao          (Locacao*);
        Locacao*       LocacaoPorChave       (ListaLocacoes*, char[]);
        ListaLocacoes* ListaLocacaoPorCPF    (ListaLocacoes*, char[]);
        ListaLocacoes* ListaLocacaoPorPlaca  (ListaLocacoes*, char[]);
        ListaLocacoes* ListaLocacaoPorData   (ListaLocacoes*, char[]);
        ListaLocacoes* ListaLocacoesPorIndice(ListaLocacoes*, char);
        DicionarioLocacoes* MapListaParaDicionario(ListaLocacoes*);

    // CRUD
        void ExibeLocacaoPorChave(ListaLocacoes*);
        void InsereLocacaoNaLista(ListaLocacoes*, Locacao*);
        void InsereLocacao(ListaClientes*, ListaVeiculos*, ListaLocacoes*);
        void AtualizaLocacao(ListaLocacoes*);
        Locacao* NovaLocacao(ListaClientes*, ListaVeiculos*, ListaLocacoes*);

    // SubMenu
        void MenuLocacoes(ListaClientes*, ListaVeiculos*, ListaLocacoes*);

#endif