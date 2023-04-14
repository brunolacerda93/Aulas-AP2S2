#include "tools.h"
#include "Clientes.c"
#include "Veiculos.c"
#include "Locacoes.c"
#include "Relatorios.c"

void PreencheClientes(ListaClientes* lista) {
    InsereClienteNaLista(lista, CriaClienteArgs("45612378966", "Stulla Sigurdasson",
                                                "Rua Reykjavik Jokull, 93", "A B"));
    InsereClienteNaLista(lista, CriaClienteArgs("98765432144", "Frida Halfdasdottir",
                                                "Rua Aegir Egmund, 64", "C"));
    InsereClienteNaLista(lista, CriaClienteArgs("36925814722", "Njall Gustavsson",
                                                "Alameda Sogafjordur, 86", "A"));
}

void PreencheVeiculos(ListaVeiculos* lista) {
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("ABC9369", "Toyota",  "Prius", 2020, 237.69));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("BCD9369", "Honda",   "Civic", 2016, 254.37));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("CDF9369", "Hyundai", "Azera", 2013, 892.61));
}

void PreencheLocacoes(ListaLocacoes* lista) {
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC9369", CriaData("02", "03", "2020"),
                                                CriaData("03", "04", "2021"), 6357.82));
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
            case '1': MenuClientes(listaClientes); break;
            case '2': MenuVeiculos(listaVeiculos); break;
            case '3': MenuLocacoes(listaLocacoes); break;
            case '4': break;
            case '0': pause(); break;
            default : printf("\n INVALIDO!!!\n"); pause(); break;
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
