#include "Relatorios.h"

//-------------------------------------------------------------------------------------------------------------//

    // Métodos Úteis

    //
    // Exibe uma lista de Locações do Veículo com a placa inserida pelo usuário
    //
    void ExibeLocacoesPorPlaca(ListaLocacoes* lista) {
        char placa[PLACA_LEN];

        printf("\nDigite a Placa: ");
        fgets(placa, PLACA_LEN, stdin);
        placa[strcspn(placa, "\n")] = 0;

        ListaLocacoes* filtrada = ListaLocacaoPorPlaca(lista, placa);

        if (!filtrada->locacao) {
            printf("\nhttp ERROR: 404 - Placa NOT Encontrada!!!\n");
            return;
        }

        ExibeListaLocacoes(filtrada);
        free(filtrada);
    }

    //
    // Exibe uma lista de Locações entre as datas inseridas pelo usuário
    //
    void ExibeLocacoesPorData(ListaLocacoes* lista) {
        printf("\nData Inicial:");
        DateTime* dataInicial = CriaDataValida();

        printf("\nData Final:");
        DateTime* dataFinal = CriaDataValida();

        ListaLocacoes* filtrada = ListaLocacaoPorData(lista, dataFinal, dataInicial);

        if(!filtrada->locacao) {
            printf("\nhttp ERROR: 404 - Locacao NOT Encontrada!!!\n");
            return;
        }

        ExibeListaLocacoes(filtrada);

        free(dataInicial);
        free(dataFinal);
        free(filtrada);
    }

//-------------------------------------------------------------------------------------------------------------//

    //
    // Submenu de Locações
    //
    void MenuRelatorios(ListaLocacoes* lista) {
        int opc;

        do { // hast
            cleanScreen();

            printf("===============================\n");
            printf("      RELATORIOS\n\n");
            printf("  1 - Locacoes por Placa\n");
            printf("  2 - Locacoes por Data\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1': ExibeLocacoesPorPlaca(lista); break;
                case '2':  ExibeLocacoesPorData(lista); break;
                case '0': return;
                default : printf("\n INVALIDO!!!\n");   break;
            }

            pause();

        } while (opc != '0');
    }