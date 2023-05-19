#include "Clientes.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"

    //
    // Construtor da struct Cliente
    //
    Cliente* CriaCliente() {
        Cliente* aux = (Cliente *) calloc(1, sizeof(Cliente));

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

        Cliente* aux = (Cliente *) calloc(1, sizeof(Cliente));

        if (!aux)
            return NULL;

        strcpy(aux->CPF, cpf);
        strcpy(aux->Nome, nome);
        strcpy(aux->Endereco, endereco);
        strcpy(aux->Categoria, categoria);
        
        aux->proximo = NULL;
        return aux;
    }

    //
    // Construtor da struct ListaClientes
    //
    ListaClientes* CriaListaClientes() {
        ListaClientes* aux = (ListaClientes *) calloc(1, sizeof(ListaClientes));

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
        ListaClientes* aux = (ListaClientes *) calloc(1, sizeof(ListaClientes));

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
            printf("\nDigite o CPF (apenas números): ");
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
        printf("\nDigite o Endereço: ");
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
            printf("\nDigite a Categoria da Habilitação (A B C D): ");
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
        printf("\n Nome      : %s", client->Nome);
        printf("\n CPF       : ");  PrintCPF(client->CPF);
        printf("\n Endereço  : %s", client->Endereco);
        printf("\n Categoria : %s", client->Categoria);
        puts("\n============================================");
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
        return CriaClienteArgs(cliente->CPF, cliente->Nome, cliente->Endereco, cliente->Categoria);
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
            puts("\nhttp ERROR: 404 - Cliente NOT Found!!!");
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
            putchar('\n');
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
            puts("\nO CPF informado já se encontra cadastrado no sistema!!!");
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
            puts("\nhttp ERROR: 404 - Cliente NOT Found!!!");
            pause();
            return;
        }

        int opc;
        do { // hast
            cleanScreen();
            ExibeCliente(aux);

            puts("Qual informação deseja alterar?\n");
            puts(" 1 - Nome");
            puts(" 2 - Endereço");
            puts(" 3 - Categoria");
            puts(" 0 - Retornar");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            if (opc == '0') break;

            if (opc < '1' || opc > '3') {
                puts("\nINVÁLIDO!!!");
                pause();
                continue;
            }

            string str = String(SizeString(opc));

            switch (opc) {
                case '1': if (!NomeInput(str))      strcpy(aux->Nome,      str); break;
                case '2': if (!EnderecoInput(str))  strcpy(aux->Endereco,  str); break;
                case '3': if (!CategoriaInput(str)) strcpy(aux->Categoria, str); break;
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
            puts("\nhttp ERROR: 404 - Cliente NOT Found!!!");
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
        puts("\n\t Removido!");
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

        file = fopen(CLIENTES, "wb");

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

        file = fopen(CLIENTES, "rb");
        if (!file) {
            fprint_err(CLIENTES);
            return lista;
        }

        fread(&cliente, sizeof(Cliente), 1, file);
        while (!feof(file)) {
            InsereClienteNaLista(lista, ClonaCliente(&cliente));
            fread(&cliente, sizeof(Cliente), 1, file);
        }

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
            
            puts("===============================");
            puts("      CLIENTES\n");
            puts("  1 - Cadastrar");
            puts("  2 - Exibir Um");
            puts("  3 - Exibir Todos");
            puts("  4 - Atualizar");
            puts("  5 - Remover");
            puts("  0 - Retornar\n");
            printf("Escolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1':       InsereCliente(lista); pause(); break;
                case '2':  ExibeClientePorCPF(lista); pause(); break;
                case '3':  ExibeTodosClientes(lista); pause(); break;
                case '4':     AtualizaCliente(lista);          break;
                case '5':       RemoveCliente(lista); pause(); break;
                case '0':                                      break;
                default : puts("\n INVÁLIDO!!!"); pause(); break;
            }

        } while (opc != '0');
    }

    //
    // Apaga completamente uma Lista de Clientes
    //
    void FreeClientes(ListaClientes* lista) {
        Cliente* aux = lista->cliente;
        Cliente* temp;

        while(aux) {
            temp = aux;
            aux = aux->proximo;
            free(temp);
        }

        free(lista);
    }
