#include "Veiculos.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"

    //
    // Construtor da struct Veiculo
    //
    Veiculo* CriaVeiculo() {
        Veiculo* aux = (Veiculo *) calloc(1, sizeof(Veiculo));

        if (!aux)
            return NULL;

        aux->proximo = NULL;
        return aux;
    }

    //
    // Construtor da struct Veiculo com Argumentos
    //
    Veiculo* CriaVeiculoArgs(string placa,
                             string montadora,
                             string modelo,
                             const int ano,
                             const double diaria) {

        Veiculo* aux = (Veiculo *) calloc(1, sizeof(Veiculo));

        if (!aux)
            return NULL;

        strcpy(aux->Placa, placa);
        strcpy(aux->Montadora, montadora);
        strcpy(aux->Modelo, modelo);
        aux->Ano = ano;
        aux->ValorDiaria = diaria;

        aux->proximo = NULL;
        return aux;
    }

    //
    // Construtor da struct ListaVeiculos
    //
    ListaVeiculos* CriaListaVeiculos() {
        ListaVeiculos* aux = (ListaVeiculos *) calloc(1, sizeof(ListaVeiculos));

        if (!aux)
            return NULL;

        aux->veiculo = NULL;
        aux->tamanho = 0;

        return aux;
    }

    //
    // Construtor da struct ListaVeiculos com Argumentos
    //
    ListaVeiculos* CriaListaVeiculosArgs(Veiculo* veiculo) {
        ListaVeiculos* aux = (ListaVeiculos *) calloc(1, sizeof(ListaVeiculos));

        if (!aux)
            return NULL;

        aux->veiculo = veiculo;
        aux->tamanho = 1;

        return aux;
    }

//-------------------------------------------------------------------------------------------------------------//

    // Métodos Úteis

    //
    // Retorn 0 se a Placa digitada pelo usuário é válida
    //
    int PlacaInput(string placa) {
        do { // hast
            printf("\nDigite a Placa: ");
            fgets(placa, PLACA_LEN, stdin);
            placa[strcspn(placa, "\n")] = 0;

            if (!strcmp(placa, "0")) return 1;

            if (ValidaPlaca(placa)) continue;

            for (size_t i = 0; i < 5; i++) {
                if (!isupper(placa[i])) { placa[i] = (char)toupper(placa[i]); }
            }

            return 0;

        } while (1);
    }

    //
    // Formata e Exibe um Veiculo
    //
    void ExibeVeiculo(Veiculo* veiculo) {
        printf("\n Placa       : "); PrintPlaca(veiculo->Placa);
        printf("\n Montadora   : %s",  veiculo->Montadora);
        printf("\n Modelo      : %s",  veiculo->Modelo);
        printf("\n Ano         : %4d", veiculo->Ano);
        printf("\n Diária (R$) : %.2lf", veiculo->ValorDiaria);
        puts("\n=============================");
    }

    //
    // Retorna o Veiculo com a Placa passada como argumento
    //
    Veiculo* VeiculoPorPlaca(ListaVeiculos* lista, string placa) {
        Veiculo* aux = lista->veiculo;
        while (aux) {
            if (!strcmp(aux->Placa, placa))
                return aux;
            aux = aux->proximo;
        }
        return NULL;
    }

    //
    // Retorna uma cópia profunda de um Veiculo
    //
    Veiculo* ClonaVeiculo(Veiculo* veiculo) {
        return CriaVeiculoArgs(veiculo->Placa, veiculo->Montadora, veiculo->Modelo, veiculo->Ano, veiculo->ValorDiaria);
    }

//-------------------------------------------------------------------------------------------------------------//

    // CRUD

    //
    // Procura um Veiculo com a Placa passada como argumento e chama ExibeVeiculo()
    //
    void ExibeVeiculoPorPlaca(ListaVeiculos* lista) {
        char placa[PLACA_LEN];

        if (PlacaInput(placa)) return;

        Veiculo* aux = VeiculoPorPlaca(lista, placa);

        if (!aux) {
            puts("\nhttp ERROR: 404 - Veículo NOT Found!!!");
            return;
        }

        ExibeVeiculo(aux);
    }

    //
    // Exibe Toda uma Lista de Veiculos
    //
    void ExibeTodosVeiculos(ListaVeiculos* lista) {
        Veiculo* veiculo = lista->veiculo;
        while (veiculo) {
            ExibeVeiculo(veiculo);
            printf("\n");
            veiculo = veiculo->proximo;
        }
    }

    //
    // Retorna um novo Veiculo inserido pelo usuário
    //
    Veiculo* NovoVeiculo(ListaVeiculos* lista) {
        char   placa     [PLACA_LEN];
        char   montadora [MONTADORA_LEN];
        char   modelo    [MODELO_LEN];
        int    ano;
        double diaria;

        cleanScreen();

        if (PlacaInput(placa)) return NULL;

        if (VeiculoPorPlaca(lista, placa)) {
            puts("\nA Placa informada já se encontra cadastrada no sistema!!!");
            return NULL;
        }

        printf("\nDigite a Montadora: ");
        fgets(montadora, MONTADORA_LEN, stdin);
        montadora[strcspn(montadora, "\n")] = 0;

        printf("\nDigite o Modelo: ");
        fgets(modelo, MODELO_LEN, stdin);
        modelo[strcspn(modelo, "\n")] = 0;

        printf("\nDigite o ano (YYYY): ");
        ano = Int();

        printf("\nDigite o valor da diária (R$88.88): ");
        diaria = Double();

        return CriaVeiculoArgs(placa, montadora, modelo, ano, diaria);
    }

    //
    // Insere um Veiculo na última posição da lista
    //
    void InsereVeiculoNaLista(ListaVeiculos* lista, Veiculo* veiculo) {
        if (!veiculo)
            return;

        if (!lista->veiculo) {
            lista->veiculo = veiculo;
            lista->tamanho++;
            return;
        }

        Veiculo* aux = lista->veiculo;

        while(aux->proximo)
            aux = aux->proximo;

        aux->proximo = veiculo;
        lista->tamanho++;
    }

    //
    // Administra a inserção da lista
    //
    void InsereVeiculo(ListaVeiculos* lista) {
        if (!lista)
            return;

        InsereVeiculoNaLista(lista, NovoVeiculo(lista));
    }

    //
    // Atualiza as informações de um Veiculo com a Placa inserida pelo usuário
    //
    void AtualizaVeiculo(ListaVeiculos* lista) {
        char placa[PLACA_LEN];

        if (PlacaInput(placa)) return;

        Veiculo* aux = VeiculoPorPlaca(lista, placa);

        if (!aux) {
            puts("\nhttp ERROR: 404 - Veículo NOT Found!!!");
            pause();
            return;
        }

        int opc;
        do { // hast
            cleanScreen();
            ExibeVeiculo(aux);

            puts("\nQual informação deseja alterar?\n");
            puts(" 1 - Ano");
            puts(" 2 - Diária (R$)");
            puts(" 0 - Retornar");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            if (opc == '0') break;

            if (opc < '1' || opc > '2') {
                puts("\nINVÁLIDO!!!");
                pause();
                continue;
            }

            printf("\nDigite o novo valor: ");

            switch(opc) {
                case '1': aux->Ano = Int();            break;
                case '2': aux->ValorDiaria = Double(); break;
                default : break;
            }

        } while (1);
    }

    //
    // Remove um Veiculo com a Placa inserida pelo usuário
    //
    void RemoveVeiculo(ListaVeiculos* lista) {
        char placa[PLACA_LEN];

        if (PlacaInput(placa)) return;

        Veiculo* anterior = NULL;
        Veiculo* atual    = lista->veiculo;

        while (atual && strcmp(atual->Placa, placa)) {
            anterior = atual;
            atual = atual->proximo;
        }

        if ((!anterior && strcmp(atual->Placa, placa)) || !atual) {
            puts("\nhttp ERROR: 404 - Veículo NOT Found!!!");
            return;
        }

        ExibeVeiculo(atual);
        printf("\nTem certeza? [s/S]: ");
        int opc = getchar(); clearBuffer();

        if (opc != 's' && opc != 'S')
            return;

        if (!anterior) {
            Veiculo* temp = lista->veiculo;
            lista->veiculo = lista->veiculo->proximo;
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
    // Registra Veículos no arquivo VEICULOS
    //
    void PersistenciaVeiculos(ListaVeiculos* lista) {
        if (!lista) return;

        FILE* file;
        Veiculo* aux = lista->veiculo;

        file = fopen(VEICULOS, "wb");

        if (!file) {
            fprint_err(VEICULOS);
            return;
        }

        for (size_t i=0; i < lista->tamanho; i++) {
            fwrite(aux, sizeof(Veiculo), 1, file);
            aux = aux->proximo;
        }

        fclose(file);
    }

    //
    // Lê o arquivo VEICULOS e retorna uma Lista de Veículos com os dados obtidos
    //
    ListaVeiculos* ReadVeiculos() {
        FILE* file;
        Veiculo veiculo;
        ListaVeiculos* lista = CriaListaVeiculos();

        file = fopen(VEICULOS, "rb");
        if (!file) {
            fprint_err(VEICULOS);
            return lista;
        }

        fread(&veiculo, sizeof(Veiculo), 1, file);
        while (!feof(file)) {
            InsereVeiculoNaLista(lista, ClonaVeiculo(&veiculo));
            fread(&veiculo, sizeof(Veiculo), 1, file);
        }

        fclose(file);
        return lista;
    }

//-------------------------------------------------------------------------------------------------------------//

    //
    // Submenu de Veiculos
    //
    void MenuVeiculos(ListaVeiculos* lista) {
        int opc;

        do { // hast
            cleanScreen();
            
            puts("===============================");
            puts("      VEÍCULOS\n");
            puts("  1 - Cadastrar");
            puts("  2 - Exibir Um");
            puts("  3 - Exibir Todos");
            puts("  4 - Atualizar");
            puts("  5 - Remover");
            puts("  0 - Retornar");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1':        InsereVeiculo(lista); pause(); break;
                case '2': ExibeVeiculoPorPlaca(lista); pause(); break;
                case '3':   ExibeTodosVeiculos(lista); pause(); break;
                case '4':      AtualizaVeiculo(lista);          break;
                case '5':        RemoveVeiculo(lista); pause(); break;
                case '0':                                       break;
                default :      puts("\n INVALIDO!!!"); pause(); break;
            }

        } while (opc != '0');
    }

    //
    // Apaga completamente uma Lista de Veículos
    //
    void FreeVeiculos(ListaVeiculos * lista) {
        Veiculo* aux = lista->veiculo;
        Veiculo* temp;

        while(aux) {
            temp = aux;
            aux = aux->proximo;
            free(temp);
        }

        free(lista);
    }
