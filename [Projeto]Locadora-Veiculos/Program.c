#include "tools.h"
#include "Clientes.c"

int main(int argc, char const *argv[]) {
    ListaClientes* listaClientes = CriaListaClientes();

    MenuClientes(listaClientes);

    return 0;
}
