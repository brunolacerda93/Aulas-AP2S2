#include "Clientes.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"

    //
    // Construtor da struct Cliente
    //
    Cliente* CriaCliente() {
        Cliente* aux = (Cliente *) malloc(sizeof(Cliente));

        if (!aux)
            return NULL;
        
        aux->proximo = NULL;
        return aux;
    }

    //
    // Construtor da struct Cliente com Argumentos
    //
    Cliente* CriaClienteArgs(string cpf,
                             string nome,
                             string endereco,
                             string categoria) {

        Cliente* aux = (Cliente *) malloc(sizeof(Cliente));

        if (!aux)
            return NULL;

        strcpy_s(aux->CPF, CPF_LEN, cpf);
        strcpy_s(aux->Nome, NOME_LEN, nome);
        strcpy_s(aux->Endereco, ENDERECO_LEN, endereco);
        strcpy_s(aux->Categoria, CATEGORIA_LEN, categoria);
        
        aux->proximo = NULL;
        return aux;
    }

    //
    // Construtor da struct ListaClientes
    //
    ListaClientes* CriaListaClientes() {
        ListaClientes* aux = (ListaClientes *) malloc(sizeof(ListaClientes));

        if (!aux)
            return NULL;
        
        aux->cliente = NULL;
        aux->tamanho = 0;

        return aux;
    }

    //
    // Construtor da struct ListaClientes com Argumentos
    //
    ListaClientes* CriaListaClientesArgs(Cliente* cliente) {
        ListaClientes* aux = (ListaClientes *) malloc(sizeof(ListaClientes));

        if (!aux)
            return NULL;
        
        aux->cliente = cliente;
        aux->tamanho = 1;

        return aux;
    }

//-------------------------------------------------------------------------------------------------------------//

    // Métodos úteis

    //
    // Retorna 0 se o CPF digitado pelo usuário é válido
    //
    int CPFInput(string cpf) {
        do { // hast
            printf("\nDigite o CPF (apenas numeros): ");
            fgets(cpf, CPF_LEN, stdin);
            cpf[strcspn(cpf, "\n")] = 0;

            if (!strcmp(cpf,"0")) return 1;

            if (ValidaCPF(cpf)) continue;

            return 0;

        } while (1);
    }

    //
    // Retorna 0 se o Nome digitado pelo usuário é válido
    //
    int NomeInput(string nome) {
        do { // hast
            printf("\nDigite o Nome: ");
            fgets(nome, NOME_LEN, stdin);
            nome[strcspn(nome, "\n")] = 0;

            if (!strcmp(nome,"0")) return 1;

            if (ValidaNome(nome)) continue;

            return 0;

        } while (1);
    }

    //
    // Retorna 0 se o Endereço digitado pelo usuário é válido
    //
    int EnderecoInput(string endereco) {
        printf("\nDigite o Endereco: ");
        fgets(endereco, ENDERECO_LEN, stdin);
        endereco[strcspn(endereco, "\n")] = 0;

        if (!strcmp(endereco,"0")) return 1;

        return 0;
    }

    //
    // Retorna 0 se a Categoria digitada pelo usuário é válida
    //
    int CategoriaInput(string categoria) {
        do { // hast
            printf("\nDigite a Categoria da Habilitacao (A B C D): ");
            fgets(categoria, CATEGORIA_LEN, stdin);
            categoria[strcspn(categoria, "\n")] = 0;

            if (!strcmp(categoria,"0")) return 1;

            for (size_t i = 0; i < strlen(categoria); i++) {
                if (!isupper(categoria[i])) { categoria[i] = (char)toupper(categoria[i]); }
            }

            if (ValidaCategoria(categoria)) continue;

            return 0;

        } while (1);
    }

    //
    // Formata e exibe um Cliente
    //
    void ExibeCliente(Cliente* client) {
        printf("\nNome      : %s", client->Nome);
        printf("\nCPF       : ");  PrintCPF(client->CPF);
        printf("\nEndereco  : %s", client->Endereco);
        printf("\nCategoria : %s", client->Categoria);
        printf("\n====================================================\n");
    }

    //
    // Retorna um ponteiro para o Cliente com o CPF passado como argumento
    //
    Cliente* ClientePorCPF(ListaClientes* lista, string cpf) {
        Cliente* aux = lista->cliente;
        while (aux) {
            if (!strcmp(aux->CPF, cpf))
                return aux;
            aux = aux->proximo;
        }
        return NULL;
    }

    //
    // Retorna uma cópia profunda de um Cliente
    //
    Cliente* ClonaCliente(Cliente* cliente) {
        Cliente* temp = CriaClienteArgs(cliente->CPF, cliente->Nome, cliente->Endereco, cliente->Categoria);
        temp->proximo = NULL;
        return temp;
    }

    //
    // Retorna o tamanho da string dado um campo (nome, endereço ou categoria)
    //
    int SizeString(const int opc) {
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

    //
    // Procura um Cliente com o CPF passado como argumento e chama ExibeCliente()
    //
    void ExibeClientePorCPF(ListaClientes* lista) {
        char cpf[CPF_LEN];

        if (CPFInput(cpf)) return;

        Cliente* aux = ClientePorCPF(lista, cpf);

        if (!aux) {
            printf("\nCliente not Encontrado... \n");
            return;
        }
        
        ExibeCliente(aux);
    }

    //
    // Exibe Toda uma Lista de Clientes
    //
    void ExibeTodosClientes(ListaClientes* lista) {
        Cliente* cliente = lista->cliente;
        while (cliente) {
            ExibeCliente(cliente);
            printf("\n");
            cliente = cliente->proximo;
        }
    }

    //
    // Retorna um novo Cliente inserido pelo usuário
    //
    Cliente* NovoCliente(ListaClientes* lista) {
        char cpf       [CPF_LEN];
        char nome      [NOME_LEN];
        char endereco  [ENDERECO_LEN];
        char categoria [CATEGORIA_LEN];

        cleanScreen();

        if (CPFInput(cpf)) return NULL;

        if (ClientePorCPF(lista, cpf)) {
            printf("\nO CPF informado ja se encontra cadastrado no sistema!!!\n");
            return NULL;
        }

        if (NomeInput(nome)) return NULL;

        if (EnderecoInput(endereco)) return NULL;

        if (CategoriaInput(categoria)) return NULL;

        return CriaClienteArgs(cpf, nome, endereco, categoria);
    }

    //
    // Insere um Cliente na última posição da lista
    //
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

    //
    // Administra a inserção na Lista
    //
    void InsereCliente(ListaClientes* lista) {
        if (!lista)
            return;
        
        InsereClienteNaLista(lista, NovoCliente(lista));
    }

    //
    // Atualiza as informações de um Cliente com o CPF inserido pelo usuário
    //
    void AtualizaCliente(ListaClientes* lista) {
        char cpf[CPF_LEN];

        if (CPFInput(cpf)) return;

        Cliente* aux = ClientePorCPF(lista, cpf);

        if (!aux) {
            printf("\nCliente not Encontrado... \n");
            pause();
            return;
        }

        int opc;
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

            string str = String(SizeString(opc));

            switch (opc) {
                case '1': if (!NomeInput(str))      strcpy_s(aux->Nome,      NOME_LEN,      str); break;
                case '2': if (!EnderecoInput(str))  strcpy_s(aux->Endereco,  ENDERECO_LEN,  str); break;
                case '3': if (!CategoriaInput(str)) strcpy_s(aux->Categoria, CATEGORIA_LEN, str); break;
                default : break;
            }

            free(str);

        } while (1);
    }

    //
    // Remove um Cliente com o CPF inserido pelo usuário
    //
    void RemoveCliente(ListaClientes* lista) {
        char cpf[CPF_LEN];

        if (CPFInput(cpf)) return;

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
        int opc = getchar(); clearBuffer();

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

    // Manipulação dos Arquivos

    //
    // Registra Clientes no arquivo CLIENTES
    //
    void PersistenciaClientes(ListaClientes* lista) {
        if (!lista) return;

        FILE* file;
        Cliente* aux = lista->cliente;

        fopen_s(&file, CLIENTES, "wb");

        if (!file) {
            fprint_err(CLIENTES);
            return;
        }

        for (size_t i=0; i < lista->tamanho; i++) {
            fwrite(aux, sizeof(Cliente), 1, file);
            aux = aux->proximo;
        }

        fclose(file);
    }

    //
    // Lê o arquivo CLIENTES e retorna uma Lista de Clientes com os dados obtidos
    //
    ListaClientes* ReadClientes() {
        FILE* file;
        Cliente cliente;
        ListaClientes* lista = CriaListaClientes();

        fopen_s(&file, CLIENTES, "rb");
        if (!file) {
            fprint_err(CLIENTES);
            return lista;
        }

        fread(&cliente, sizeof(Cliente), 1, file);
        do {
            InsereClienteNaLista(lista, ClonaCliente(&cliente));
            fread(&cliente, sizeof(Cliente), 1, file);
        } while (!feof(file));

        fclose(file);
        return lista;
    }

//-------------------------------------------------------------------------------------------------------------//

    //
    // Submenu de Clientes
    //
    void MenuClientes(ListaClientes* lista) {
        int opc;

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
