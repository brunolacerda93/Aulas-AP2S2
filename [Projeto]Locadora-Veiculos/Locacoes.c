#include "Locacoes.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"


    // Construtor da struct Locacao com Argumentos

    Locacao* CriaLocacaoArgs(const string    cpf,
                             const string    placa,
                             const DateTime* dataLocacao,
                             const DateTime* dataDevolucao,
                             const double    valor) {

        Locacao* aux = (Locacao *) malloc(sizeof(Locacao));

        if (!aux)
            return NULL;
        
        strcpy(aux->CPF, cpf);
        strcpy(aux->Placa, placa);
        aux->DataLocacao = dataLocacao;
        aux->DataDevolucao = dataDevolucao;
        aux->ValorTotal = valor;
        GeraChave(aux, aux->Chave);

        aux->proximo = NULL;

        if (!aux->DataLocacao || !aux->DataDevolucao) return NULL;

        return aux;
    }


    // Construtor da struct ListaLocacoes

    ListaLocacoes* CriaListaLocacoes() {
        ListaLocacoes* aux = (ListaLocacoes *) malloc(sizeof(ListaLocacoes));

        if (!aux)
            return NULL;

        aux->locacao = NULL;
        aux->tamanho = 0;
        
        return aux;
    }


    // Construtor da struct ListaLocacoes com Argumentos

    ListaLocacoes* CriaListaLocacoesArgs(const Locacao* locacao) {
        ListaLocacoes* aux = (ListaLocacoes *) malloc(sizeof(ListaLocacoes));

        if (!aux)
            return NULL;

        aux->locacao = locacao;
        aux->tamanho = 1;
        
        return aux;
    }

    
    // Construtor da struct Termo (do Dicionário)

    Termo* CriaTermoArgs(const Locacao* locacao, const int indice) {
        Termo* aux = (Termo *) malloc(sizeof(Termo));

        if (!aux)
            return NULL;
        
        aux->indice = indice;
        strcpy(aux->chave, locacao->Chave);
        aux->proximo = NULL;

        return aux;
    }


    // Construtor da struct DicionarioLocacoes

    DicionarioLocacoes* CriaDicionarioLocacoes() {
        DicionarioLocacoes* aux = (DicionarioLocacoes *) malloc(sizeof(DicionarioLocacoes));

        if (!aux)
            return NULL;
        
        aux->termo = NULL;

        return aux;
    }

//-------------------------------------------------------------------------------------------------------------//

    // Métodos Úteis


    // Concatena informações de uma locacao para gerar uma chave

    void GeraChave(const Locacao* locacao, string result) {
        strcpy(result, locacao->CPF);
        strcat(result, locacao->Placa);
        strcat(result, FormataData(locacao->DataLocacao));
        strcat(result, FormataData(locacao->DataDevolucao));
    }


    // Formata e Exibe uma Locacao

    void ExibeLocacao(const Locacao* locacao) {
        printf("\nCPF              : "); PrintCPF(locacao->CPF);
        printf("\nPlaca            : "); PrintPlaca(locacao->Placa);
        printf("\nData Locacao     : "); ExibeData(locacao->DataLocacao);
        printf("\nData Devolucao   : "); ExibeData(locacao->DataDevolucao);
        printf("\nValor Total (R$) : %.2lf", locacao->ValorTotal);
        printf("\n====================================================\n");
    }


    // Exibe uma Lista de Locacoes

    void ExibeListaLocacoes(const ListaLocacoes* lista) {
        if (!lista) return;

        Locacao* aux = lista->locacao;
        int i = 1;
        while (aux) {
            printf("\n     LOCACAO %02d", i++);
            ExibeLocacao(aux);
            aux = aux->proximo;
        }
    }


    // Retorna a Locacao com a Chave passada como argumento

    Locacao* LocacaoPorChave(const ListaLocacoes* lista, const string chave) {
        Locacao* aux = lista->locacao;
        while(aux) {
            if (!strcmp(aux->Chave, chave)) {
                return aux;
            }
            aux = aux->proximo;
        }
        return NULL;
    }


    // Encontra uma Locação em um dicionário

    Locacao* LocacaoPorIndice(const DicionarioLocacoes* dicionario,
                              const ListaLocacoes* lista,
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


    // Retorna uma ListaLocacoes com o CPF passado como argumento

    ListaLocacoes* ListaLocacaoPorCPF(const ListaLocacoes* lista, const string cpf) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->CPF, cpf))
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }


    // Retorna uma ListaLocacoes com a Placa passada como argumento

    ListaLocacoes* ListaLocacaoPorPlaca(const ListaLocacoes* lista, const string placa) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->Placa, placa))
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }


    // Retorna uma ListaLocacoes com a Data passada como argumento

    ListaLocacoes* ListaLocacaoPorData(const ListaLocacoes* lista,
                                       const DateTime* dataFinal,
                                       const DateTime* dataInicial) {

        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (DataRangeInRange(aux->DataDevolucao, aux->DataLocacao, dataFinal, dataInicial))
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }


    // Retorna uma cópia profunda de uma Locacao

    Locacao* ClonaLocacao(const Locacao* locacao) {
        Locacao* temp = CriaLocacaoArgs(locacao->CPF, locacao->Placa, locacao->DataLocacao, locacao->DataDevolucao, locacao->ValorTotal);
        temp->proximo = NULL;
        return temp;
    }


    // Retorna uma ListaLocacoes com as Locacoes requisitadas dado um índice

    ListaLocacoes* ListaLocacoesPorIndice(const ListaLocacoes* lista, const char opc) {
        if (opc == 'c' || opc == 'C') {
            char cpf[CPF_LEN];

            printf("\nDigite o CPF: ");
            fgets(cpf, CPF_LEN, stdin);
            cpf[strcspn(cpf, "\n")] = 0;

            const ListaLocacoes* filtrada = ListaLocacaoPorCPF(lista, cpf);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - CPF NOT Encontrado!!!\n");
                return NULL;
            }

            return filtrada;
        }

        else if (opc == 'p' || opc == 'P') {
            char placa[PLACA_LEN];

            printf("\nDigite a Placa: ");
            fgets(placa, PLACA_LEN, stdin);
            placa[strcspn(placa, "\n")] = 0;

            const ListaLocacoes* filtrada = ListaLocacaoPorPlaca(lista, placa);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - Placa NOT Encontrada!!!\n");
                return NULL;
            }

            return filtrada;
        }

        else if (opc == 'd' || opc == 'D') {
            printf("\nData Inicial:");
            DateTime* dataInicial = CriaDataValida();

            printf("\nData Final:");
            DateTime* dataFinal = CriaDataValida();

            const ListaLocacoes* filtrada = ListaLocacaoPorData(lista, dataFinal, dataInicial);

            if(!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - Locacao NOT Encontrada!!!\n");
                return NULL;
            }

            return filtrada;
        }

        else if (opc == '0') return NULL;

        else printf("\n INVALIDO!!!\n\n");
        
        return NULL;
    }


    // Insere no Dicionário

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


    // Mapeador para criação do Dicionário de Locações

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


    // Tela Locacao para Exibir uma lista de Locações filtrada

    void TelaLocacaoIndex(ListaLocacoes* lista, const int isUpdateDelete) {
        char opc;

        do { // hast
            cleanScreen();

            printf("\nSelecione o Indexador:");
            printf("\n CPF   [c/C]");
            printf("\n Placa [p/P]");
            printf("\n Data  [d/D]");
            printf("\n 0 - Retorna");
            printf("\n--> ");

            char opc = getchar(); clearBuffer();
            if (opc == '0') return;

            const ListaLocacoes* filtrada = ListaLocacoesPorIndice(lista, opc);
            ExibeListaLocacoes(filtrada);

            if (isUpdateDelete == 1 && filtrada) {
                AtualizaLocacao(lista);
                return;
            }
            else if (isUpdateDelete == 2 && filtrada) {
                RemoveLocacao(lista);
                return;
            }

            pause();

        } while (opc != '0');
    }


    // Retorna uma nova Locacao inserida pelo usuário

    Locacao* NovaLocacao(const ListaClientes* listaClientes,
                         const ListaVeiculos* listaVeiculos,
                         const ListaLocacoes* listaLocacoes) {

        char       cpf[CPF_LEN];
        char       placa[PLACA_LEN];
        DateTime*  dataLocacao;
        DateTime*  dataDevolucao;
        double     valor;

        do { // hast
            cleanScreen();
            printf("\nDigite 0 para cancelar!");
            
            printf("\nDigite o CPF (apenas numeros): ");
            fgets(cpf, CPF_LEN, stdin);
            cpf[strcspn(cpf, "\n")] = 0;

            if (!strcmp(cpf, "0")) return NULL;

            if (!ClientePorCPF(listaClientes, cpf)) {
                printf("\nhttp ERROR 404: CPF not Encontrado!!!\n"); pause();
                continue;
            }

            printf("\nDigite a Placa (AAA0000): ");
            fgets(placa, PLACA_LEN, stdin);
            placa[strcspn(placa, "\n")] = 0;

            if (!strcmp(placa, "0")) return NULL;

            const Veiculo* veiculo = VeiculoPorPlaca(listaVeiculos, placa);

            if (!veiculo) {
                printf("\nhttp ERROR 404: Placa not Encontrada!!!\n\n"); pause();
                continue;
            }

            printf("\nData da Locacao: ");
            dataLocacao = CriaDataValida();

            printf("\nData da Devolucao: ");
            dataDevolucao = CriaDataValida();

            if (!dataLocacao || !dataDevolucao) continue;

            valor = veiculo->ValorDiaria;

            break;

        } while(1);
        
        return CriaLocacaoArgs(cpf, placa, dataLocacao, dataDevolucao, valor*DiferencaEmDias(dataDevolucao, dataLocacao));
    }


    // Insere uma Locacao na última posição da lista

    void InsereLocacaoNaLista(ListaLocacoes* lista, const Locacao* locacao) {
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


    // Administra a inserção na Lista

    void InsereLocacao(const ListaClientes* listaClientes,
                       const ListaVeiculos* listaVeiculos,
                       ListaLocacoes* listaLocacoes) {

        if (!listaLocacoes || !listaClientes || !listaVeiculos)
            return;

        InsereLocacaoNaLista(listaLocacoes, NovaLocacao(listaClientes, listaVeiculos, listaLocacoes));
    }


    // Atualiza as informações de uma Locação

    void AtualizaLocacao(ListaLocacoes* lista) {
        const int loc;

        do { // hast
            printf("\nDigite o indice da locacao que deseja alterar: ");
            scanf("%d", &loc); clearBuffer();

            if (loc <= 0)
                return;

            if (loc > lista->tamanho)
                printf("\nINVALIDO!!!\n");
            
        } while (loc > lista->tamanho);
        
        const DicionarioLocacoes* dicionario = MapListaParaDicionario(lista);
        Locacao* locacao = LocacaoPorIndice(dicionario, lista, loc);

        char opc;
        do { // hast
            cleanScreen();
            ExibeLocacao(locacao);

            printf("\nQual informacao deseja alterar?\n");
            printf("\n 1 - Valor Diaria");
            printf("\n 0 - Retornar");
            printf("\n\nEscolha: ");
            opc = getchar(); clearBuffer();

            if (opc == '0') break;

            if (opc != '1') {
                printf("\nINVALIDO!!!\n");
                pause();
                continue;
            }

            printf("\nDigite o novo valor: ");
            const double valor; scanf("%lf", &valor); clearBuffer();
            locacao->ValorTotal = valor*DiferencaEmDias(locacao->DataDevolucao, locacao->DataLocacao);

        } while(opc != '0');
    }


    // Remove uma Locação da Lista

    void RemoveLocacao(ListaLocacoes* lista) {
        const int loc;

        do { // hast
            printf("\nDigite o indice da locacao que deseja remover: ");
            scanf("%d", &loc); clearBuffer();

            if (loc <= 0)
                return;

            if (loc > lista->tamanho)
                printf("\nINVALIDO!!!\n");
            
        } while (loc > lista->tamanho);
        
        const DicionarioLocacoes* dicionario = MapListaParaDicionario(lista);
        Locacao* locacao = LocacaoPorIndice(dicionario, lista, loc);

        ExibeLocacao(locacao);
        printf("\nTem certeza? [s/S]: ");
        char opc = getchar(); clearBuffer();

        if (opc != 's' && opc != 'S')
            return;
        
        Locacao* anterior = NULL;
        Locacao* atual    = lista->locacao;

        while (atual && strcmp(atual->Chave, locacao->Chave)) {
            anterior = atual;
            atual = atual->proximo;
        }

        if (!anterior) {
            Locacao* temp = lista->locacao;
            lista->locacao = lista->locacao->proximo;
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

    // Submenu de Locacoes

    void MenuLocacoes(const ListaClientes* listaClientes,
                      const ListaVeiculos* listaVeiculos,
                      ListaLocacoes* listaLocacoes) {
        char opc;

        do { // hast
            cleanScreen();
            
            printf("===============================\n");
            printf("      LOCACOES\n\n");
            printf("  1 - Cadastrar\n");
            printf("  2 - Exibir por Indexador\n");
            printf("  3 - Exibir Todas\n");
            printf("  4 - Atualizar\n");
            printf("  5 - Remover\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1':      InsereLocacao(listaClientes, listaVeiculos, listaLocacoes); pause(); break;
                case '2':   TelaLocacaoIndex(listaLocacoes, 0);          break;
                case '3': ExibeListaLocacoes(listaLocacoes);    pause(); break;
                case '4':   TelaLocacaoIndex(listaLocacoes, 1); pause(); break;
                case '5':   TelaLocacaoIndex(listaLocacoes, 2); pause(); break;
                case '0':                                                break;
                default : printf("\n INVALIDO!!!\n"); pause();           break;
            }

        } while (opc != '0');
    }
