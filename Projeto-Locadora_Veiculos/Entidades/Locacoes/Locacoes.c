#include "Locacoes.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"

    //
    // Construtor da struct Locacao com Argumentos
    //
    Locacao* CriaLocacaoArgs(string    cpf,
                             string    placa,
                             DateTime* dataLocacao,
                             DateTime* dataDevolucao,
                             const double valor) {

        Locacao* aux = (Locacao *) calloc(1, sizeof(Locacao));

        if (!aux)
            return NULL;
        
        strcpy(aux->CPF, cpf);
        strcpy(aux->Placa, placa);
        aux->DataLocacao    = *dataLocacao;
        aux->DataDevolucao  = *dataDevolucao;
        aux->ValorTotal     = valor;

        string temp = GeraChave(aux);
        strcpy(aux->Chave, temp);
        free(temp);

        aux->proximo = NULL;

        return aux;
    }

    //
    // Construtor da struct ListaLocacoes
    //
    ListaLocacoes* CriaListaLocacoes() {
        ListaLocacoes* aux = (ListaLocacoes *) calloc(1, sizeof(ListaLocacoes));

        if (!aux)
            return NULL;

        aux->locacao = NULL;
        aux->tamanho = 0;
        
        return aux;
    }

    //
    // Construtor da struct ListaLocacoes com Argumentos
    //
    ListaLocacoes* CriaListaLocacoesArgs(Locacao* locacao) {
        ListaLocacoes* aux = (ListaLocacoes *) calloc(1, sizeof(ListaLocacoes));

        if (!aux)
            return NULL;

        aux->locacao = locacao;
        aux->tamanho = 1;
        
        return aux;
    }

    //
    // Construtor da struct Termo (do Dicionário)
    //
    Termo* CriaTermoArgs(const Locacao* locacao, const int indice) {
        Termo* aux = (Termo *) calloc(1, sizeof(Termo));

        if (!aux)
            return NULL;
        
        aux->indice = indice;
        strcpy(aux->chave, locacao->Chave);
        aux->proximo = NULL;

        return aux;
    }

    //
    // Construtor da struct DicionarioLocacoes
    //
    DicionarioLocacoes* CriaDicionarioLocacoes() {
        DicionarioLocacoes* aux = (DicionarioLocacoes *) calloc(1, sizeof(DicionarioLocacoes));

        if (!aux)
            return NULL;
        
        aux->termo = NULL;

        return aux;
    }

//-------------------------------------------------------------------------------------------------------------//

    // Métodos Úteis

    //
    // Retorna uma chave gerada a partir do conteúdo de uma Locação
    //
    string GeraChave(const Locacao* locacao) {
        string result = String(CHAVE_LEN);
        string temp;

        strcpy(result, locacao->CPF);
        strcat(result, locacao->Placa);

        temp = FormataData(&locacao->DataLocacao);
        strcat(result, temp);
        free(temp);

        temp = FormataData(&locacao->DataDevolucao);
        strcat(result, temp);
        free(temp);

        return result;
    }

    //
    // Formata e Exibe uma Locação
    //
    void ExibeLocacao(Locacao* locacao) {
        printf("\nCPF              : "); PrintCPF(locacao->CPF);
        printf("\nPlaca            : "); PrintPlaca(locacao->Placa);
        printf("\nData Locação     : "); ExibeData(&locacao->DataLocacao);
        printf("\nData Devolução   : "); ExibeData(&locacao->DataDevolucao);
        printf("\nValor Total (R$) : %.2lf", locacao->ValorTotal);
        printf("\n====================================================\n");
    }

    //
    // Exibe uma Lista de Locações
    //
    void ExibeListaLocacoes(ListaLocacoes* lista) {
        if (!lista) return;

        Locacao* aux = lista->locacao;
        int i = 1;
        while (aux) {
            printf("\n     LOCACAO %02d", i++);
            ExibeLocacao(aux);
            aux = aux->proximo;
        }
    }

    //
    // Retorna a Locação com a Chave passada como argumento
    //
    Locacao* LocacaoPorChave(ListaLocacoes* lista, string chave) {
        Locacao* aux = lista->locacao;
        while(aux) {
            if (!strcmp(aux->Chave, chave)) {
                return aux;
            }
            aux = aux->proximo;
        }
        return NULL;
    }

    //
    // Encontra uma Locação em um Dicionário
    //
    Locacao* LocacaoPorIndice(DicionarioLocacoes* dicionario,
                              ListaLocacoes* lista,
                              const int indice) {
        if (indice <= 0)
            return NULL;
        
        Termo* aux = dicionario->termo;

        while (aux) {
            if (aux->indice == indice)
                return LocacaoPorChave(lista, aux->chave);
            
            aux = aux->proximo;
        }

        return NULL;
    }

    //
    // Retorna uma ListaLocacoes com o CPF passado como argumento
    //
    ListaLocacoes* ListaLocacaoPorCPF(ListaLocacoes* lista, string cpf) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->CPF, cpf))
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }

    //
    // Retorna uma ListaLocacoes com a Placa passada como argumento
    //
    ListaLocacoes* ListaLocacaoPorPlaca(ListaLocacoes* lista, string placa) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->Placa, placa))
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }

    //
    // Retorna uma ListaLocacoes com as Datas passadas como argumentos
    //
    ListaLocacoes* ListaLocacaoPorData(ListaLocacoes* lista,
                                       DateTime* dataFinal,
                                       DateTime* dataInicial) {

        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (DataRangeInRange(&aux->DataDevolucao, &aux->DataLocacao, dataFinal, dataInicial) == 1)
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }

    //
    // Retorna uma cópia profunda de uma Locação
    //
    Locacao* ClonaLocacao(Locacao* locacao) {
        return CriaLocacaoArgs(locacao->CPF, locacao->Placa, &locacao->DataLocacao, &locacao->DataDevolucao, locacao->ValorTotal);
    }

    //
    // Retorna uma ListaLocacoes com as Locações requisitadas dado um índice
    //
    ListaLocacoes* ListaLocacoesPorIndice(ListaLocacoes* lista, const int opc) {
        if (opc == 'c' || opc == 'C') {
            char cpf[CPF_LEN];

            if (CPFInput(cpf)) return NULL;

            ListaLocacoes* filtrada = ListaLocacaoPorCPF(lista, cpf);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - CPF NOT Found!!!\n");
                free(filtrada);
                return NULL;
            }

            return filtrada;
        }

        else if (opc == 'p' || opc == 'P') {
            char placa[PLACA_LEN];

            if (PlacaInput(placa)) return NULL;

            ListaLocacoes* filtrada = ListaLocacaoPorPlaca(lista, placa);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - Placa NOT Found!!!\n");
                free(filtrada);
                return NULL;
            }

            return filtrada;
        }

        else if (opc == 'd' || opc == 'D') {
            printf("\nData Inicial:");
            DateTime* dataInicial = CriaDataValida();

            printf("\nData Final:");
            DateTime* dataFinal = CriaDataValida();

            ListaLocacoes* filtrada = ListaLocacaoPorData(lista, dataFinal, dataInicial);

            if(!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - Locacao NOT Found!!!\n");
                free(filtrada);
                return NULL;
            }

            free(dataInicial);
            free(dataFinal);

            return filtrada;
        }

        else if (opc == '0') return NULL;

        else printf("\n INVÁLIDO!!!\n\n");
        
        return NULL;
    }

    //
    // Insere no Dicionário
    //
    void InsereNoDicionario(DicionarioLocacoes* dicionario,
                            const Locacao* locacao,
                            const int indice) {
        if (!locacao)
            return;

        Termo* termo = CriaTermoArgs(locacao, indice);
        
        if (!dicionario->termo) {
            dicionario->termo = termo;
            return;
        }

        Termo* aux = dicionario->termo;

        while (aux->proximo)
            aux = aux->proximo;

        aux->proximo = termo;
    }

    //
    // Mapeador para criação do Dicionário de Locações
    //
    DicionarioLocacoes* MapListaParaDicionario(const ListaLocacoes* lista) {
        DicionarioLocacoes* dicionario = CriaDicionarioLocacoes();
        Locacao* aux = lista->locacao;
        int i = 1;
        
        while (aux) {
            InsereNoDicionario(dicionario, aux, i++);
            aux = aux->proximo;
        }

        return dicionario;
    }

//-------------------------------------------------------------------------------------------------------------//

    // CRUD

    //
    // Tela Locação para Exibir uma Lista de Locações filtrada
    //
    void TelaLocacaoIndex(ListaLocacoes* listaLocacoes,
                          ListaClientes* listaClientes,
                          ListaVeiculos* listaVeiculos,
                          const int isUpdateDelete) {
        int opc;

        do { // hast
            cleanScreen();

            printf("\nSelecione o Indexador:");
            printf("\n CPF   [c/C]");
            printf("\n Placa [p/P]");
            printf("\n Data  [d/D]");
            printf("\n 0 - Retorna");
            printf("\n--> ");

            opc = getchar(); clearBuffer();
            if (opc == '0') return;

            ListaLocacoes* filtrada = ListaLocacoesPorIndice(listaLocacoes, opc);
            ExibeListaLocacoes(filtrada);

            if (isUpdateDelete == 1 && filtrada) {
                AtualizaLocacao(listaLocacoes, filtrada);
                free(filtrada);
                return;
            }

            if (isUpdateDelete == 2 && filtrada) {
                RemoveLocacao(listaLocacoes, filtrada, listaClientes, listaVeiculos);
                free(filtrada);
                return;
            }

            pause();
            FreeLocacoes(filtrada);

        } while (1);
    }

    //
    // Retorna uma nova Locação inserida pelo usuário
    //
    Locacao* NovaLocacao(ListaClientes* listaClientes,
                         ListaVeiculos* listaVeiculos) {

        char       cpf   [CPF_LEN];
        char       placa [PLACA_LEN];
        DateTime*  dataLocacao;
        DateTime*  dataDevolucao;
        double     valor;

        do { // hast
            cleanScreen();
            printf("\nDigite 0 para cancelar!");

            if (CPFInput(cpf)) return NULL;

            if (!ClientePorCPF(listaClientes, cpf)) {
                printf("\nhttp ERROR: 404 - CPF NOT Found!!!\n"); pause();
                continue;
            }

            if (PlacaInput(placa)) return NULL;

            const Veiculo* veiculo = VeiculoPorPlaca(listaVeiculos, placa);

            if (!veiculo) {
                printf("\nhttp ERROR: 404 - Placa NOT Found!!!\n"); pause();
                continue;
            }

            printf("\nData da Locação: ");
            dataLocacao = CriaDataValida();

            printf("\nData da Devolução: ");
            dataDevolucao = CriaDataValida();

            if (!ValidaDataLocacao(dataDevolucao, dataLocacao)) {
                free(dataLocacao);
                free(dataDevolucao);
                pause(); continue;
            }

            valor = veiculo->ValorDiaria;

            break;

        } while(1);

        Locacao* loc = CriaLocacaoArgs(cpf, placa, dataLocacao, dataDevolucao, valor*DiferencaEmDias(dataDevolucao, dataLocacao));

        free(dataLocacao);
        free(dataDevolucao);

        return loc;
    }

    //
    // Insere uma Locação na última posição da Lista
    //
    void InsereLocacaoNaLista(ListaLocacoes* lista, Locacao* locacao) {
        if (!locacao)
            return;
            
        if (!lista->locacao) {
            lista->locacao = locacao;
            lista->tamanho++;
            return;
        }

        Locacao* aux = lista->locacao;

        while (aux->proximo)
            aux = aux->proximo;
        
        aux->proximo = locacao;
        lista->tamanho++;
    }

    //
    // Administra a inserção na Lista
    //
    void InsereLocacao(ListaClientes* listaClientes,
                       ListaVeiculos* listaVeiculos,
                       ListaLocacoes* listaLocacoes) {

        if (!listaLocacoes || !listaClientes || !listaVeiculos)
            return;

        Locacao* novaLocacao = NovaLocacao(listaClientes, listaVeiculos);

        if (novaLocacao && LocacaoPorChave(listaLocacoes, novaLocacao->Chave)) {
            printf("\nERRO: Existe uma Locação com as mesmas informações no sistema...\n");
            free(novaLocacao);
            return;
        }

        if (novaLocacao && !ValidaDataRange(listaLocacoes, novaLocacao)) {
            printf("\nERRO: Datas informadas conflitam com registros anteriores!!!\n");
            free(novaLocacao);
            return;
        }

        InsereLocacaoNaLista(listaLocacoes, novaLocacao);
    }

    //
    // Atualiza as informações de uma Locação
    //
    void AtualizaLocacao(ListaLocacoes* lista, ListaLocacoes* filtrada) {
        int loc;

        do { // hast
            printf("\nDigite o índice da Locação que deseja alterar: ");
            loc = Int();

            if (loc <= 0)
                return;

            if (loc > filtrada->tamanho)
                printf("\nINVÁLIDO!!!\n");
            
        } while (loc > filtrada->tamanho);
        
        DicionarioLocacoes* dicionario = MapListaParaDicionario(filtrada);
        Locacao* locacao = LocacaoPorIndice(dicionario, lista, loc);
        FreeDicionario(dicionario);

        int opc;
        do { // hast
            cleanScreen();
            ExibeLocacao(locacao);

            printf("\nQual informação deseja alterar?\n");
            printf("\n 1 - Valor Diária");
            printf("\n 0 - Retornar");
            printf("\n\nEscolha: ");
            opc = getchar(); clearBuffer();

            if (opc == '0') break;

            if (opc != '1') {
                printf("\nINVÁLIDO!!!\n");
                pause();
                continue;
            }

            printf("\nDigite o novo valor: ");
            locacao->ValorTotal = Double()*DiferencaEmDias(&locacao->DataDevolucao, &locacao->DataLocacao);

        } while(1);
    }

    //
    // Remove uma Locação da Lista
    //
    void RemoveLocacao(ListaLocacoes* listaLocacoes,
                       ListaLocacoes* filtrada,
                       ListaClientes* listaClientes,
                       ListaVeiculos* listaVeiculos) {
        int loc;

        do { // hast
            printf("\nDigite o índice da Locação que deseja remover: ");
            loc = Int();

            if (loc <= 0)
                return;

            if (loc > filtrada->tamanho)
                printf("\nINVÁLIDO!!!\n");
            
        } while (loc > filtrada->tamanho);
        
        DicionarioLocacoes* dicionario = MapListaParaDicionario(filtrada);
        Locacao* locacao = LocacaoPorIndice(dicionario, listaLocacoes, loc);
        FreeDicionario(dicionario);

        if (!ValidaLocacao(locacao, listaClientes, listaVeiculos)) return;

        ExibeLocacao(locacao);
        printf("\nTem certeza? [s/S]: ");
        int opc = getchar(); clearBuffer();

        if (opc != 's' && opc != 'S') return;
        
        Locacao* anterior = NULL;
        Locacao* atual    = listaLocacoes->locacao;

        while (atual && strcmp(atual->Chave, locacao->Chave)) {
            anterior = atual;
            atual = atual->proximo;
        }

        if (!anterior) {
            Locacao* temp = listaLocacoes->locacao;
            listaLocacoes->locacao = listaLocacoes->locacao->proximo;
            free(temp);
        }
        else {
            anterior->proximo = atual->proximo;
            free(atual);
        }

        listaLocacoes->tamanho--;
        printf("\nRemovido!\n");
    }

    //
    // Retorna 1 se o CPF e a Placa da Locação não estão registrados no sistema
    //
    int ValidaLocacao(Locacao* locacao, ListaClientes* listaClientes, ListaVeiculos* listaVeiculos) {
        if (ClientePorCPF(listaClientes, locacao->CPF)) {
            printf("\nERRO: Cliente possui cadastro ativo no sistema!\n");
            return 0;
        }

        if (VeiculoPorPlaca(listaVeiculos, locacao->Placa)) {
            printf("\nERRO: Veiculo possui cadastro ativo no sistema!\n");
            return 0;
        }

        return 1;
    }

    //
    // Retorna 1 se as Datas passadas são válidas no contexto de uma Locação
    //
    int ValidaDataLocacao(DateTime* dataDevolucao, DateTime* dataLocacao) {
        if (!dataLocacao || !dataDevolucao) {
            printf("\nhttp ERROR 202: Falha ao criar Data...\n");
            return 0;
        }

        if (difftime(mktime(dataDevolucao), mktime(dataLocacao)) <= 0) {
            printf("\nA Data de Devolucao deve ser maior do que a Data de Locacao!!!\n");
            return 0;
        }

        return 1;
    }

    //
    // Retorna 1 se as Datas da Locação não conflitam com as Datas que já existem na Lista de Locações
    //
    int ValidaDataRange(ListaLocacoes* listaLocacoes, Locacao* locacao_pendente) {
        Locacao* aux = listaLocacoes->locacao;
        Locacao* temp;
        ListaLocacoes* lista;

        while (aux) {
            if (!strcmp(locacao_pendente->CPF, aux->CPF)) {
                lista = ListaLocacaoPorCPF(listaLocacoes, locacao_pendente->CPF);
                temp = lista->locacao;

                while (temp) {
                    if (DataRangeInRange( &locacao_pendente->DataDevolucao,
                                          &locacao_pendente->DataLocacao,
                                          &temp->DataDevolucao,
                                          &temp->DataLocacao) != -1) { return 0; }
                    temp = temp->proximo;
                }
                free(lista);
            }

            if (!strcmp(locacao_pendente->Placa, aux->Placa)) {
                lista = ListaLocacaoPorPlaca(listaLocacoes, locacao_pendente->Placa);
                temp = lista->locacao;

                while (temp) {
                    if (DataRangeInRange( &locacao_pendente->DataDevolucao,
                                          &locacao_pendente->DataLocacao,
                                          &temp->DataDevolucao,
                                          &temp->DataLocacao) != -1) { return 0; }
                    temp = temp->proximo;
                }
                free(lista);
            }

            aux = aux->proximo;
        }

        return 1;
    }

//-------------------------------------------------------------------------------------------------------------//

    // Manipulação dos Arquivos

    //
    // Registra Locações no arquivo LOCACOES
    //
    void PersistenciaLocacoes(ListaLocacoes* lista) {
        if (!lista) return;

        FILE* file;
        Locacao* aux = lista->locacao;

        file = fopen(LOCACOES, "wb");

        if (!file) {
            fprint_err(LOCACOES);
            return;
        }

        for (size_t i=0; i < lista->tamanho; i++) {
            fwrite(aux, sizeof(Locacao), 1, file);
            aux = aux->proximo;
        }

        fclose(file);
    }

    //
    // Lê o arquivo LOCACOES e retorna uma Lista de Locações com os dados obtidos
    //
    ListaLocacoes* ReadLocacoes() {
        FILE* file;
        Locacao locacao;
        ListaLocacoes* lista = CriaListaLocacoes();

        file = fopen(LOCACOES, "rb");
        if (!file) {
            fprint_err(LOCACOES);
            return lista;
        }

        fread(&locacao, sizeof(Locacao), 1, file);
        do {
            InsereLocacaoNaLista(lista, ClonaLocacao(&locacao));
            fread(&locacao, sizeof(Locacao), 1, file);
        } while (!feof(file));

        fclose(file);
        return lista;
    }

//-------------------------------------------------------------------------------------------------------------//

    //
    // Submenu de Locações
    //
    void MenuLocacoes(ListaClientes* listaClientes,
                      ListaVeiculos* listaVeiculos,
                      ListaLocacoes* listaLocacoes) {
        int opc;

        do { // hast
            cleanScreen();
            
            printf("===============================\n");
            printf("      LOCAÇÕES\n\n");
            printf("  1 - Cadastrar\n");
            printf("  2 - Exibir por Indexador\n");
            printf("  3 - Exibir Todas\n");
            printf("  4 - Atualizar\n");
            printf("  5 - Remover\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1':      InsereLocacao(listaClientes, listaVeiculos, listaLocacoes);    pause(); break;
                case '2':   TelaLocacaoIndex(listaLocacoes, listaClientes, listaVeiculos, 0);          break;
                case '3': ExibeListaLocacoes(listaLocacoes);                                  pause(); break;
                case '4':   TelaLocacaoIndex(listaLocacoes, listaClientes, listaVeiculos, 1); pause(); break;
                case '5':   TelaLocacaoIndex(listaLocacoes, listaClientes, listaVeiculos, 2); pause(); break;
                case '0':                                                                              break;
                default : printf("\n INVALIDO!!!\n"); pause();                                         break;
            }

        } while (opc != '0');
    }

    //
    // Apaga completamente uma Lista de Locações
    //
    void FreeLocacoes(ListaLocacoes* lista) {
        Locacao* aux = lista->locacao;
        Locacao* temp;

        while(aux) {
            temp = aux;
            aux = aux->proximo;
            free(temp);
        }

        free(lista);
    }

    //
    // Apaga completamente um Dicionário de Locações
    //
    void FreeDicionario(DicionarioLocacoes* dic) {
        Termo* aux = dic->termo;
        Termo* temp;

        while(aux) {
            temp = aux;
            aux = aux->proximo;
            free(temp);
        }

        free(dic);
    }
