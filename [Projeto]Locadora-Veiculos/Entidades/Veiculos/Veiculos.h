#ifndef Veiculos_H
#define Veiculos_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "../ValidaInput.h"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define PLACA_LEN     10
    #define MONTADORA_LEN 50
    #define MODELO_LEN    50
    #define VEICULOS "VEICULOS"

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
        Veiculo*       CriaVeiculoArgs(string, string, string, int, double);
        ListaVeiculos* CriaListaVeiculos();
        ListaVeiculos* CriaListaVeiculosArgs(Veiculo*);

    // Métodos Úteis

        int      PlacaInput      (string);
        void     ExibeVeiculo    (Veiculo*);
        Veiculo* VeiculoPorPlaca (ListaVeiculos*, string);
        Veiculo* ClonaVeiculo    (Veiculo*);

    // CRUD

        void     InsereVeiculo        (ListaVeiculos*);
        void     AtualizaVeiculo      (ListaVeiculos*);
        void     RemoveVeiculo        (ListaVeiculos*);
        void     InsereVeiculoNaLista (ListaVeiculos*, Veiculo*);
        void     ExibeVeiculoPorPlaca (ListaVeiculos*);
        void     ExibeTodosVeiculos   (ListaVeiculos*);
        Veiculo* NovoVeiculo          (ListaVeiculos*);

    // Arquivos

        void            PersistenciaVeiculos(ListaVeiculos*);
        ListaVeiculos*  ReadVeiculos();

    // Submenu
    
        void MenuVeiculos(ListaVeiculos*);

#endif