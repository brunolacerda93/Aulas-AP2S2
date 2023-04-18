#ifndef Locacoes_H
#define Locacoes_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "tools.h"
    #include "Data.c"
    #include "Clientes.c"
    #include "Veiculos.c"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define CPF_LEN   15
    #define PLACA_LEN 10
    #define CHAVE_LEN 500

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

    typedef struct Locacao {
        char   CPF  [CPF_LEN];
        char   Placa[PLACA_LEN];
        DateTime*  DataLocacao;
        DateTime*  DataDevolucao;
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
        Termo*              CriaTermoArgs    (Locacao*, int);
        Locacao*            CriaLocacaoArgs  (char[], char[], DateTime*, DateTime*, double);
        ListaLocacoes*      CriaListaLocacoes();
        ListaLocacoes*      CriaListaLocacoesArgs(Locacao*);
        DicionarioLocacoes* CriaDicionarioLocacoes();

    // Métodos Úteis
        void                GeraChave              (Locacao*, string);
        void                ExibeLocacao           (Locacao*);
        void                ExibeListaLocacoes     (ListaLocacoes*);
        void                InsereNoDicionario     (DicionarioLocacoes*, Locacao*, int);
        Locacao*            ClonaLocacao           (Locacao*);
        Locacao*            LocacaoPorChave        (ListaLocacoes*, char[]);
        Locacao*            LocacaoPorIndice       (DicionarioLocacoes*, ListaLocacoes*, int);
        ListaLocacoes*      ListaLocacaoPorCPF     (ListaLocacoes*, char[]);
        ListaLocacoes*      ListaLocacaoPorPlaca   (ListaLocacoes*, char[]);
        ListaLocacoes*      ListaLocacaoPorData    (ListaLocacoes*, DateTime*, DateTime*);
        ListaLocacoes*      ListaLocacoesPorIndice (ListaLocacoes*, char);
        DicionarioLocacoes* MapListaParaDicionario (ListaLocacoes*);

    // CRUD
        void     AtualizaLocacao      (ListaLocacoes*);
        void     RemoveLocacao        (ListaLocacoes*);
        void     TelaLocacaoIndex     (ListaLocacoes*, int);
        void     InsereLocacaoNaLista (ListaLocacoes*, Locacao*);
        void     InsereLocacao        (ListaClientes*, ListaVeiculos*, ListaLocacoes*);
        Locacao* NovaLocacao          (ListaClientes*, ListaVeiculos*, ListaLocacoes*);

    // SubMenu
        void MenuLocacoes(ListaClientes*, ListaVeiculos*, ListaLocacoes*);

#endif