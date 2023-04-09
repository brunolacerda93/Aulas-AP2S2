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
    pause();

    clearScreen();
    ExibeCliente(lista->cliente);

    printf("\nDigite o CPF (apenas numeros): ");
    fgets(cpf, CPF_LEN, stdin);
    cpf[strcspn(cpf, "\n")] = 0;

    RemoveCliente(lista, cpf);
    printf("\n%d", lista->tamanho);
    
    pause();
    return 0;
}
