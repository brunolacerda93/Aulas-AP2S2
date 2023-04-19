#ifndef Veiculos_H
#define Veiculos_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "tools.h"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define PLACA_LEN     10
    #define MONTADORA_LEN 50
    #define MODELO_LEN    50

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos Tipos

    typedef struct Veiculo {
        char   Placa     [PLACA_LEN];
        char   Montadora [MONTADORA_LEN];
        char   Modelo    [MODELO_LEN];
        int    Ano;
        double ValorDiaria;
        struct Veiculo* proximo;
    } Veiculo;


    typedef struct {
        Veiculo* veiculo;
        size_t   tamanho;
    } ListaVeiculos;

//-------------------------------------------------------------------------------------------------------------//

    // Lista de Funções e Métodos

    // Construtores
        Veiculo*       CriaVeiculo();
        Veiculo*       CriaVeiculoArgs(const string, const string, const string, const int, const double);
        ListaVeiculos* CriaListaVeiculos();
        ListaVeiculos* CriaListaVeiculosArgs(const Veiculo*);

    // Métodos Úteis
        void     ExibeVeiculo    (const Veiculo*);
        Veiculo* VeiculoPorPlaca (const ListaVeiculos*, const string);
        Veiculo* ClonaVeiculo    (const Veiculo*);

    // CRUD
        void     InsereVeiculo        (ListaVeiculos*);
        void     AtualizaVeiculo      (ListaVeiculos*);
        void     RemoveVeiculo        (ListaVeiculos*);
        void     InsereVeiculoNaLista (ListaVeiculos*, const Veiculo*);
        void     ExibeVeiculoPorPlaca (const ListaVeiculos*);
        void     ExibeTodosVeiculos   (const ListaVeiculos*);
        Veiculo* NovoVeiculo          (const ListaVeiculos*);

    // Submenu
        void MenuVeiculos(ListaVeiculos*);

#endif