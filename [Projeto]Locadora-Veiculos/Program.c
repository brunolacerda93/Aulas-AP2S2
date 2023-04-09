#include "tools.h"
#include "Clientes.c"

int main(int argc, char const *argv[]) {
    ListaClientes* lista = CriaListaClientes();

    InsereCliente(lista);
    ExibeCliente(lista->cliente);

    char cpf[CPF_LEN];
    printf("\nDigite o CPF (apenas numeros): ");
    fgets(cpf, CPF_LEN, stdin);
    cpf[strcspn(cpf, "\n")] = 0;

    AtualizaCliente(lista, cpf);

    clearScreen();
    ExibeCliente(lista->cliente);
    
    pause();
    return 0;
}
