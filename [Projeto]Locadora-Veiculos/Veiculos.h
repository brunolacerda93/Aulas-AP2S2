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
        Veiculo*       CriaVeiculoArgs      (char[], char[], char[], int, double);
        ListaVeiculos* CriaListaVeiculos();
        ListaVeiculos* CriaListaVeiculosArgs(Veiculo*);

    // Métodos Úteis
        void     PrintPlaca      (char[]);
        void     ExibeVeiculo    (Veiculo*);
        Veiculo* VeiculoPorPlaca (ListaVeiculos*, char[]);
        Veiculo* ClonaVeiculo    (Veiculo*);

    // CRUD
        Veiculo* NovoVeiculo          (ListaVeiculos*);
        void     ExibeVeiculoPorPlaca (ListaVeiculos*);
        void     ExibeTodosVeiculos   (ListaVeiculos*);
        void     InsereVeiculoNaLista (ListaVeiculos*, Veiculo*);
        void     InsereVeiculo        (ListaVeiculos*);
        void     AtualizaVeiculo      (ListaVeiculos*);
        void     RemoveVeiculo        (ListaVeiculos*);

    // Submenu
        void MenuVeiculos(ListaVeiculos*);

#endif