#ifndef Locacoes_H
#define Locacoes_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "../../tools.h"
    #include "../Data.c"
    #include "../Clientes/Clientes.c"
    #include "../Veiculos/Veiculos.c"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define CPF_LEN   15
    #define PLACA_LEN 10
    #define CHAVE_LEN 500

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

    typedef struct Locacao {
        char       CPF[CPF_LEN];
        char       Placa[PLACA_LEN];
        DateTime*  DataLocacao;
        DateTime*  DataDevolucao;
        double     ValorTotal;
        char       Chave[CHAVE_LEN];
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

        Termo*              CriaTermoArgs    (const Locacao*, int);
        Locacao*            CriaLocacaoArgs  (string, string, DateTime*, DateTime*, double);
        ListaLocacoes*      CriaListaLocacoes();
        ListaLocacoes*      CriaListaLocacoesArgs(Locacao*);
        DicionarioLocacoes* CriaDicionarioLocacoes();

    // Métodos Úteis

        void                ExibeLocacao           (Locacao*);
        void                ExibeListaLocacoes     (ListaLocacoes*);
        void                InsereNoDicionario     (DicionarioLocacoes*, const Locacao*, int);
        string              GeraChave              (const Locacao*);
        Locacao*            ClonaLocacao           (Locacao*);
        Locacao*            LocacaoPorChave        (ListaLocacoes*, string);
        Locacao*            LocacaoPorIndice       (DicionarioLocacoes*, ListaLocacoes*, int);
        ListaLocacoes*      ListaLocacaoPorCPF     (ListaLocacoes*, string);
        ListaLocacoes*      ListaLocacaoPorPlaca   (ListaLocacoes*, string);
        ListaLocacoes*      ListaLocacaoPorData    (ListaLocacoes*, DateTime*, DateTime*);
        ListaLocacoes*      ListaLocacoesPorIndice (ListaLocacoes*, int);
        DicionarioLocacoes* MapListaParaDicionario (const ListaLocacoes*);

    // CRUD

        void     TelaLocacaoIndex     (ListaLocacoes*, int);
        void     InsereLocacaoNaLista (ListaLocacoes*, Locacao*);
        void     AtualizaLocacao      (ListaLocacoes*, ListaLocacoes*);
        void     RemoveLocacao        (ListaLocacoes*, ListaLocacoes*);
        void     InsereLocacao        (ListaClientes*, ListaVeiculos*, ListaLocacoes*);
        Locacao* NovaLocacao          (ListaClientes*, ListaVeiculos*, ListaLocacoes*);

    // SubMenu
    
        void MenuLocacoes(ListaClientes*, ListaVeiculos*, ListaLocacoes*);

#endif