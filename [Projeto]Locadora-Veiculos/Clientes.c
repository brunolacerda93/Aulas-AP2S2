#include "Clientes.h"

Cliente* CriaCliente() {
    Cliente* aux = (Cliente *) malloc(sizeof(Cliente));

    if (!aux)
        return NULL;
    
    aux->proximo = NULL;
    return aux;
}

Cliente* CriaClienteArgs(char cpf[], char nome[], char endereco[], char categoria[]) {
    Cliente* aux = (Cliente *) malloc(sizeof(Cliente));

    if (!aux)
        return NULL;

    strcpy(aux->CPF, cpf);
    strcpy(aux->Nome, nome);
    strcpy(aux->Endereco, endereco);
    strcpy(aux->Categoria, categoria);
    
    aux->proximo = NULL;
    return aux;
}

ListaClientes* CriaListaClientes() {
    ListaClientes* aux = (ListaClientes *) malloc(sizeof(ListaClientes));

    if (!aux)
        return NULL;
    
    aux->cliente = NULL;
    aux->tamanho = 0;

    return aux;
}

ListaClientes* CriaListaClientesArgs(Cliente* cliente) {
    ListaClientes* aux = (ListaClientes *) malloc(sizeof(ListaClientes));

    if (!aux)
        return NULL;
    
    aux->cliente = cliente;
    aux->tamanho = 1;

    return aux;
}

void ExibeCliente(Cliente* client) {
    printf("\nNome     : %s", client->Nome);
    printf("\nCPF      : %s", client->CPF);
    printf("\nEndereco : %s", client->Endereco);
    printf("\nCategoria: %s", client->Categoria);
    printf("\n======================================================\n");
}

Cliente* ClientePorCPF(ListaClientes* lista, char cpf[]) {
    Cliente* aux = lista->cliente;
    while (aux) {
        if(!strcmp(aux, cpf))
            return aux;
        aux = aux->proximo;
    }
    return NULL;
}

Cliente* NovoCliente(ListaClientes* lista) {
    char cpf       [CPF_LEN];
    char nome      [NOME_LEN];
    char endereco  [ENDERECO_LEN];
    char categoria [CATEGORIA_LEN];
    
    printf("\nDigite o CPF (apenas numeros): ");
    fgets(cpf, CPF_LEN, stdin);
    cpf[strcspn(cpf, "\n")] = 0;

    if (ClientePorCPF(lista, cpf))
        return NULL;

    printf("\nDigite o Nome: ");
    fgets(nome, NOME_LEN, stdin);
    nome[strcspn(nome, "\n")] = 0;

    printf("\nDigite o Endereco: ");
    fgets(endereco, ENDERECO_LEN, stdin);
    endereco[strcspn(endereco, "\n")] = 0;

    printf("\nDigite a Categoria da Habilitacao (A, B, C, D): ");
    fgets(categoria, CATEGORIA_LEN, stdin);
    categoria[strcspn(categoria, "\n")] = 0;

    return CriaClienteArgs(cpf, nome, endereco, categoria);
}

void InsereClienteNaLista(ListaClientes* lista, Cliente* cliente) {
    if (!cliente)
        return;

    if (!lista->cliente) {
        lista->cliente = cliente;
        lista->tamanho++;
        return;
    }

    Cliente* aux = lista->cliente;

    while (aux->proximo)
        aux = aux->proximo;
    
    aux->proximo = cliente;
    lista->tamanho++;
}

void InsereCliente(ListaClientes* lista) {
    if (!lista)
        return;
    
    InsereClienteNaLista(lista, NovoCliente(lista));
}

void ExibeClientePorCPF(ListaClientes* lista, char cpf[]) {
    Cliente* aux = ClientePorCPF(lista, cpf);

    if (!aux) {
        printf("\nCliente not Encontrado... ");
        return;
    }
    
    ExibeCliente(aux);
}

Cliente* Clone(Cliente* cliente) {
    Cliente* temp = CriaClienteArgs(cliente->CPF, cliente->Nome, cliente->Endereco, cliente->Categoria);
    temp->proximo = cliente->proximo;
    return temp;
}

void EditaCliente(Cliente* cliente) {
    UNIMPLEMENTED;
}

int SizeString(char opc) {
    if (opc == '1')
        return NOME_LEN;
    if (opc == '2')
        return ENDERECO_LEN;
    if (opc == '3')
        return CATEGORIA_LEN;
    return 0;
}

void AtualizaCliente(ListaClientes* lista, char cpf[]) {
    Cliente* aux = ClientePorCPF(lista, cpf);

    if (!aux) {
        printf("\nCliente not Encontrado... ");
        return;
    }

    ExibeCliente(aux);

    printf("\nQual informacao deseja alterar?\n");
    printf("\n 1 - Nome");
    printf("\n 2 - Endereco");
    printf("\n 3 - Categoria");
    printf("\nEscolha: ");
    char opc;
    scanf("%c", &opc); cleanBuffer();

    char str[SizeString(opc)];
    printf("\nDigite o novo valor: ");
    fgets(str, SizeString(opc), stdin);
    str[(strcspn(str, "\n"))] = 0;

    if (opc == '1') {
        strcpy(aux->Nome, str);
    }
    else if (opc == '2') {
        strcpy(aux->Endereco, str);
    }
    else if (opc == '3') {
        strcpy(aux->Categoria, str);
    }
}
