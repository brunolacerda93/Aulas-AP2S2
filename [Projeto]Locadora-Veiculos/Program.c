#include "tools.h"
#include "Clientes.c"
#include "Veiculos.c"
#include "Relatorios.c"

void PreencheClientes(ListaClientes* lista) {
    InsereClienteNaLista(lista, CriaClienteArgs("45612378966", "Stulla Sigurdasson",
                                                "Rua Reykjavik Jokull, 93", "A B"));
    InsereClienteNaLista(lista, CriaClienteArgs("12345678911", "Frida Halfdasdottir",
                                                "Rua Aegir Egmund, 64", "C"));
    InsereClienteNaLista(lista, CriaClienteArgs("36925814722", "Njall Gustavsson",
                                                "Alameda Sogafjordur, 86", "A"));
}

void PreencheVeiculos(ListaVeiculos* lista) {
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("ABC1234", "Toyota",  "Prius", 2020, 237.69));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("BCD9369", "Honda",   "Civic", 2016, 254.37));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("CDF9369", "Hyundai", "Azera", 2013, 892.61));
}

void PreencheLocacoes(ListaLocacoes* lista) {
    DateTime* data1 = CriaDateTime("05", "09", "2020");
    DateTime* data2 = CriaDateTime("13", "10", "2020");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC9369", data1, data2,
                                                63.83*DiferencaEmDias(data2, data1)));
    
    data1 = CriaDateTime("23", "05", "2022");
    data2 = CriaDateTime("14", "07", "2022");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC1234", data1, data2,
                                                75.48*DiferencaEmDias(data2, data1)));
}

void Menu(ListaClientes* listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
    char opc;
    
    do {
        cleanScreen();
        
        printf("===============================\n");
        printf("      Locacoes Louca-Acoes!\n\n");
        printf("  1 - Clientes\n");
        printf("  2 - Veiculos\n");
        printf("  3 - Locacoes\n");
        printf("  4 - Relatorios\n");
        printf("  0 - Retornar\n");
        printf("\nEscolha: ");
        opc = getchar(); clearBuffer();
        
        switch (opc) {
            case '1': MenuClientes(listaClientes);                               break;
            case '2': MenuVeiculos(listaVeiculos);                               break;
            case '3': MenuLocacoes(listaClientes, listaVeiculos, listaLocacoes); break;
            case '4': MenuRelatorios(listaLocacoes);                             break;
            case '0': pause();                                                   break;
            default : printf("\n INVALIDO!!!\n"); pause();                       break;
        }

    } while(opc != '0');
}

int main(int argc, char const *argv[]) {
    ListaClientes* listaClientes = CriaListaClientes();
    ListaVeiculos* listaVeiculos = CriaListaVeiculos();
    ListaLocacoes* listaLocacoes = CriaListaLocacoes();

    PreencheClientes(listaClientes);
    PreencheVeiculos(listaVeiculos);
    PreencheLocacoes(listaLocacoes);

    Menu(listaClientes, listaVeiculos, listaLocacoes);
    printf("\nlistaLocacoes->locacao->Chave: %s\n\n", listaLocacoes->locacao->Chave);

    return 0;
}
