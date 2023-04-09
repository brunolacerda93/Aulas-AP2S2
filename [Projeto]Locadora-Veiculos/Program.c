#include "tools.h"
#include "Clientes.c"

void PreencheClientes(ListaClientes* lista) {
    InsereClienteNaLista(lista, CriaClienteArgs("45612378966", "Stulla Sigurdasson",
                                                "Rua Reykjavik Jokull, 93", "A B"));

    InsereClienteNaLista(lista, CriaClienteArgs("98765432144", "Frida Halfdasdottir",
                                                "Rua Aegir Egmund, 64", "C"));

    InsereClienteNaLista(lista, CriaClienteArgs("36925814722", "Njall Gustavsson",
                                                "Alameda Sogafjordur, 86", "A"));
}

int main(int argc, char const *argv[]) {
    ListaClientes* listaClientes = CriaListaClientes();

    PreencheClientes(listaClientes);
    MenuClientes(listaClientes);

    return 0;
}
