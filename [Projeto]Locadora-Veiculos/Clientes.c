#include "Clientes.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"


    // Construtor da struct Cliente

    Cliente* CriaCliente() {
        Cliente* aux = (Cliente *) malloc(sizeof(Cliente));

        if (!aux)
            return NULL;
        
        aux->proximo = NULL;
        return aux;
    }


    // Construtor da struct Cliente com Argumentos

    Cliente* CriaClienteArgs(const string cpf,
                             const string nome,
                             const string endereco,
                             const string categoria) {

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


    // Construtor da struct ListaClientes

    ListaClientes* CriaListaClientes() {
        ListaClientes* aux = (ListaClientes *) malloc(sizeof(ListaClientes));

        if (!aux)
            return NULL;
        
        aux->cliente = NULL;
        aux->tamanho = 0;

        return aux;
    }


    // Construtor da struct ListaClientes com Argumentos

    ListaClientes* CriaListaClientesArgs(const Cliente* cliente) {
        ListaClientes* aux = (ListaClientes *) malloc(sizeof(ListaClientes));

        if (!aux)
            return NULL;
        
        aux->cliente = cliente;
        aux->tamanho = 1;

        return aux;
    }

//-------------------------------------------------------------------------------------------------------------//

    // Métodos úteis


    // Formata e exibe um Cliente

    void ExibeCliente(const Cliente* client) {
        printf("\nNome      : %s", client->Nome);
        printf("\nCPF       : "); PrintCPF(client->CPF);
        printf("\nEndereco  : %s", client->Endereco);
        printf("\nCategoria : %s", client->Categoria);
        printf("\n====================================================\n");
    }


    // Retorna o cliente com o CPF passado como argumento

    Cliente* ClientePorCPF(const ListaClientes* lista, const string cpf) {
        Cliente* aux = lista->cliente;
        while (aux) {
            if (!strcmp(aux->CPF, cpf))
                return aux;
            aux = aux->proximo;
        }
        return NULL;
    }


    // Retorna uma cópia profunda de um Cliente

    Cliente* ClonaCliente(const Cliente* cliente) {
        Cliente* temp = CriaClienteArgs(cliente->CPF, cliente->Nome, cliente->Endereco, cliente->Categoria);
        temp->proximo = cliente->proximo;
        return temp;
    }


    // Retorna o tamanho da string dado um campo (nome, endereço ou categoria)

    int SizeString(const char opc) {
        if (opc == '1')
            return NOME_LEN;
        if (opc == '2')
            return ENDERECO_LEN;
        if (opc == '3')
            return CATEGORIA_LEN;
        return 0;
    }

//-------------------------------------------------------------------------------------------------------------//

    // CRUD


    // Procura um Cliente com o CPF passado como argumento e chama ExibeCliente()

    void ExibeClientePorCPF(const ListaClientes* lista) {
        printf("\nDigite o CPF (apenas numeros): ");

        char cpf[CPF_LEN];
        fgets(cpf, CPF_LEN, stdin);
        cpf[strcspn(cpf, "\n")] = 0;

        const Cliente* aux = ClientePorCPF(lista, cpf);

        if (!aux) {
            printf("\nCliente not Encontrado... \n");
            return;
        }
        
        ExibeCliente(aux);
    }


    // Exibe Toda uma Lista de Clientes

    void ExibeTodosClientes(const ListaClientes* lista) {
        Cliente* cliente = lista->cliente;
        while (cliente) {
            ExibeCliente(cliente);
            printf("\n");
            cliente = cliente->proximo;
        }
    }

    
    // Retorna um novo Cliente inserido pelo usuário

    Cliente* NovoCliente(const ListaClientes* lista) {
        char cpf       [CPF_LEN];
        char nome      [NOME_LEN];
        char endereco  [ENDERECO_LEN];
        char categoria [CATEGORIA_LEN];

        cleanScreen();
        
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

        printf("\nDigite a Categoria da Habilitacao (A B C D): ");
        fgets(categoria, CATEGORIA_LEN, stdin);
        categoria[strcspn(categoria, "\n")] = 0;

        return CriaClienteArgs(cpf, nome, endereco, categoria);
    }


    // Insere um Cliente na última posição da lista

    void InsereClienteNaLista(ListaClientes* lista, const Cliente* cliente) {
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


    // Administra a inserção na Lista

    void InsereCliente(ListaClientes* lista) {
        if (!lista)
            return;
        
        InsereClienteNaLista(lista, NovoCliente(lista));
    }


    // Atualiza as informações de um Cliente com o CPF passado como argumento

    void AtualizaCliente(ListaClientes* lista) {
        printf("\nDigite o CPF (apenas numeros): ");

        char cpf[CPF_LEN];
        fgets(cpf, CPF_LEN, stdin);
        cpf[strcspn(cpf, "\n")] = 0;

        Cliente* aux = ClientePorCPF(lista, cpf);

        if (!aux) {
            printf("\nCliente not Encontrado... \n");
            return;
        }

        char opc;
        do { // hast
            cleanScreen();
            ExibeCliente(aux);

            printf("\nQual informacao deseja alterar?\n");
            printf("\n 1 - Nome");
            printf("\n 2 - Endereco");
            printf("\n 3 - Categoria");
            printf("\n 0 - Retornar");
            printf("\n\nEscolha: ");
            opc = getchar(); clearBuffer();

            if (opc == '0') break;

            if (opc < '1' || opc > '3') {
                printf("\nINVALIDO!!!\n");
                pause();
                continue;
            }

            const int size = SizeString(opc);
            char str[size];

            printf("\nDigite o novo valor: ");
            fgets(str, size, stdin);
            str[(strcspn(str, "\n"))] = 0;

            switch (opc) {
                case '1': strcpy(aux->Nome, str);       break;
                case '2': strcpy(aux->Endereco, str);   break;
                case '3': strcpy(aux->Categoria, str);  break;
            }
        } while (opc != '0');
    }


    // Remove um Cliente com o CPF passado como argumento

    void RemoveCliente(ListaClientes* lista) {
        printf("\nDigite o CPF (apenas numeros): ");

        char cpf[CPF_LEN];
        fgets(cpf, CPF_LEN, stdin);
        cpf[strcspn(cpf, "\n")] = 0;

        Cliente* anterior = NULL;
        Cliente* atual    = lista->cliente;

        while (atual && strcmp(atual->CPF, cpf)) {
            anterior = atual;
            atual = atual->proximo;
        }
        
        if ((!anterior && strcmp(atual->CPF, cpf)) || !atual) {
            printf("\nCliente not Encontrado... \n");
            return;
        }

        ExibeCliente(atual);
        printf("\nTem certeza? [s/S]: ");
        char opc = getchar(); clearBuffer();

        if (opc != 's' && opc != 'S')
            return;

        if (!anterior) {
            Cliente* temp = lista->cliente;
            lista->cliente = lista->cliente->proximo;
            free(temp);
        }
        else {
            anterior->proximo = atual->proximo;
            free(atual);
        }

        lista->tamanho--;
        printf("\nRemovido!\n");
    }

//-------------------------------------------------------------------------------------------------------------//

    // Submenu de Clientes

    void MenuClientes(ListaClientes* lista) {
        char opc;

        do { // hast
            cleanScreen();
            
            printf("===============================\n");
            printf("      CLIENTES\n\n");
            printf("  1 - Cadastrar\n");
            printf("  2 - Exibir Um\n");
            printf("  3 - Exibir Todos\n");
            printf("  4 - Atualizar\n");
            printf("  5 - Remover\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1':       InsereCliente(lista); pause(); break;
                case '2':  ExibeClientePorCPF(lista); pause(); break;
                case '3':  ExibeTodosClientes(lista); pause(); break;
                case '4':     AtualizaCliente(lista);          break;
                case '5':       RemoveCliente(lista); pause(); break;
                case '0':                                      break;
                default : printf("\n INVALIDO!!!\n"); pause(); break;
            }

        } while (opc != '0');
    }
