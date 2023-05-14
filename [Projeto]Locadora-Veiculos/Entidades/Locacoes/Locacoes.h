#ifndef Locacoes_H
#define Locacoes_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "../Data.c"
    #include "../Clientes/Clientes.c"
    #include "../Veiculos/Veiculos.c"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define CHAVE_LEN 100
    #define LOCACOES "LOCACOES"

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

    typedef struct Locacao {
        char      CPF[CPF_LEN];
        char      Placa[PLACA_LEN];
        DateTime  DataLocacao;
        DateTime  DataDevolucao;
        double    ValorTotal;
        char      Chave[CHAVE_LEN];
        struct Locacao* proximo;
    } Locacao;

    typedef struct ListaLocacoes {
        Locacao* locacao;
        size_t   tamanho;
    } ListaLocacoes;

    typedef struct Termo {
        int  indice;
        char chave[CHAVE_LEN];
        struct Termo* proximo;
    } Termo;

    typedef struct DicionarioLocacoes {
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

        int      ValidaDataLocacao    (DateTime*, DateTime*);
        int      ValidaDataRange      (ListaLocacoes*, Locacao*);
        int      ValidaLocacao        (Locacao*,       ListaClientes*, ListaVeiculos*);
        void     InsereLocacaoNaLista (ListaLocacoes*, Locacao*);
        void     AtualizaLocacao      (ListaLocacoes*, ListaLocacoes*);
        void     InsereLocacao        (ListaClientes*, ListaVeiculos*, ListaLocacoes*);
        void     TelaLocacaoIndex     (ListaLocacoes*, ListaClientes*, ListaVeiculos*, int);
        void     RemoveLocacao        (ListaLocacoes*, ListaLocacoes*, ListaClientes*, ListaVeiculos*);
        Locacao* NovaLocacao          (ListaClientes*, ListaVeiculos*);

    // Arquivos

        void           PersistenciaLocacoes(ListaLocacoes*);
        ListaLocacoes* ReadLocacoes();

    // SubMenu
    
        void MenuLocacoes(ListaClientes*, ListaVeiculos*, ListaLocacoes*);
        void FreeLocacoes(ListaLocacoes*);

#endif