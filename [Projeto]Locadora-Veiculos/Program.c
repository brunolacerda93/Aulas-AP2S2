#include "tools.h"
#include "Clientes.c"
#include "Veiculos.c"
#include "Locacoes.c"

void PreencheClientes(ListaClientes* lista) {
    InsereClienteNaLista(lista, CriaClienteArgs("45612378966", "Stulla Sigurdasson",
                                                "Rua Reykjavik Jokull, 93", "A B"));
    InsereClienteNaLista(lista, CriaClienteArgs("98765432144", "Frida Halfdasdottir",
                                                "Rua Aegir Egmund, 64", "C"));
    InsereClienteNaLista(lista, CriaClienteArgs("36925814722", "Njall Gustavsson",
                                                "Alameda Sogafjordur, 86", "A"));
}

void PreencheVeiculos(ListaVeiculos* lista) {
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("ABC9369", "Toyota", "Prius", 2020, 237.69));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("BCD9369", "Honda", "Civic", 2016, 254.37));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("CDF9369", "Hyundai", "Azera", 2013, 892.61));
}

int main(int argc, char const *argv[]) {
    ListaClientes* listaClientes = CriaListaClientes();
    ListaVeiculos* listaVeiculos = CriaListaVeiculos();

    PreencheClientes(listaClientes);
    PreencheVeiculos(listaVeiculos);
    
    //MenuClientes(listaClientes);
    //MenuVeiculos(listaVeiculos);

    Locacao* locacao = CriaLocacaoArgs("12345678911", "ABC9369", CriaData("02", "03", "2020"), CriaData("03", "04", "2021"), 6357.82);
    printf("\nlocacao.chave: %s", locacao->Chave);

    return 0;
}
