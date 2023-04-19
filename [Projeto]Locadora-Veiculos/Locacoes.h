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
        Termo*              CriaTermoArgs    (const Locacao*, const int);
        Locacao*            CriaLocacaoArgs  (const string, const string, const DateTime*, const DateTime*, const double);
        ListaLocacoes*      CriaListaLocacoes();
        ListaLocacoes*      CriaListaLocacoesArgs(const Locacao*);
        DicionarioLocacoes* CriaDicionarioLocacoes();

    // Métodos Úteis
        void                GeraChave              (const Locacao*, string);
        void                ExibeLocacao           (const Locacao*);
        void                ExibeListaLocacoes     (const ListaLocacoes*);
        void                InsereNoDicionario     (DicionarioLocacoes*, const Locacao*, const int);
        Locacao*            ClonaLocacao           (const Locacao*);
        Locacao*            LocacaoPorChave        (const ListaLocacoes*, const string);
        Locacao*            LocacaoPorIndice       (const DicionarioLocacoes*, const ListaLocacoes*, const int);
        ListaLocacoes*      ListaLocacaoPorCPF     (const ListaLocacoes*, const string);
        ListaLocacoes*      ListaLocacaoPorPlaca   (const ListaLocacoes*, const string);
        ListaLocacoes*      ListaLocacaoPorData    (const ListaLocacoes*, const DateTime*, const DateTime*);
        ListaLocacoes*      ListaLocacoesPorIndice (const ListaLocacoes*, const char);
        DicionarioLocacoes* MapListaParaDicionario (const ListaLocacoes*);

    // CRUD
        void     AtualizaLocacao      (ListaLocacoes*);
        void     RemoveLocacao        (ListaLocacoes*);
        void     TelaLocacaoIndex     (ListaLocacoes*, const int);
        void     InsereLocacaoNaLista (ListaLocacoes*, const Locacao*);
        void     InsereLocacao        (const ListaClientes*, const ListaVeiculos*, ListaLocacoes*);
        Locacao* NovaLocacao          (const ListaClientes*, const ListaVeiculos*, const ListaLocacoes*);

    // SubMenu
        void MenuLocacoes(const ListaClientes*, const ListaVeiculos*, ListaLocacoes*);

#endif