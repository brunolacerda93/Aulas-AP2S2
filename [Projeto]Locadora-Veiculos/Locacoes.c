#include "Locacoes.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"


    // Construtor da struct Locacao com Argumentos

    Locacao* CriaLocacaoArgs(char cpf[], char placa[], Data* dataLocacao, Data* dataDevolucao, double valor) {
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

    ListaLocacoes* CriaListaLocacoesArgs(Locacao* locacao) {
        ListaLocacoes* aux = (ListaLocacoes *) malloc(sizeof(ListaLocacoes));

        if (!aux)
            return NULL;

        aux->locacao = locacao;
        aux->tamanho = 1;
        
        return aux;
    }

    
    // Construtor da struct Termo (do Dicionário)

    Termo* CriaTermoArgs(Locacao* locacao, int indice) {
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

    void GeraChave(Locacao* locacao, string result) {
        strcpy(result, locacao->CPF);
        strcat(result, locacao->Placa);
        strcat(result, locacao->DataLocacao->Dia);
        strcat(result, locacao->DataLocacao->Mes);
        strcat(result, locacao->DataLocacao->Ano);
        strcat(result, locacao->DataDevolucao->Dia);
        strcat(result, locacao->DataDevolucao->Mes);
        strcat(result, locacao->DataDevolucao->Ano);
    }


    // Formata e Exibe uma Locacao

    void ExibeLocacao(Locacao* locacao) {
        printf("\nCPF              : "); PrintCPF(locacao->CPF);
        printf("\nPlaca            : "); PrintPlaca(locacao->Placa);
        printf("\nData Locacao     : "); ExibeData(locacao->DataLocacao);
        printf("\nData Devolucao   : "); ExibeData(locacao->DataDevolucao);
        printf("\nValor Total (R$) : %.2lf", locacao->ValorTotal);
        printf("\n====================================================\n");
    }


    // Exibe uma Lista de Locacoes

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


    // Retorna a Locacao com a Chave passada como argumento

    Locacao* LocacaoPorChave(ListaLocacoes* lista, char chave[]) {
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

    Locacao* LocacaoPorIndice(DicionarioLocacoes* dicionario, ListaLocacoes* lista, int indice) {
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

    ListaLocacoes* ListaLocacaoPorCPF(ListaLocacoes* lista, char cpf[]) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->CPF, cpf)) {
                //ExibeLocacao(aux);
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));
            }
            aux = aux->proximo;
        }
        return filtrada;
    }


    // Retorna uma ListaLocacoes com a Placa passada como argumento

    ListaLocacoes* ListaLocacaoPorPlaca(ListaLocacoes* lista, char placa[]) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->Placa, placa)) {
                //ExibeLocacao(aux);
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));
            }
            aux = aux->proximo;
        }
        return filtrada;
    }


    // Retorna uma ListaLocacoes com a Data passada como argumento

    ListaLocacoes* ListaLocacaoPorData(ListaLocacoes* lista, char cpf[]) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->CPF, cpf)) {
                ExibeLocacao(aux);
                InsereLocacaoNaLista(filtrada, aux);
            }
            aux = aux->proximo;
        }
        return filtrada;
    }


    // Retorna uma cópia profunda de uma Locacao

    Locacao* ClonaLocacao(Locacao* locacao) {
        Locacao* temp = CriaLocacaoArgs(locacao->CPF, locacao->Placa, locacao->DataLocacao, locacao->DataDevolucao, locacao->ValorTotal);
        temp->proximo = NULL;
        return temp;
    }


    // Retorna uma ListaLocacoes com as Locacoes requisitadas dado um índice

    ListaLocacoes* ListaLocacoesPorIndice(ListaLocacoes* lista, char opc) {
        if (opc == 'c' || opc == 'C') {
            char cpf[CPF_LEN];

            printf("\nDigite o CPF: ");
            fgets(cpf, CPF_LEN, stdin);
            cpf[strcspn(cpf, "\n")] = 0;

            ListaLocacoes* filtrada = ListaLocacaoPorCPF(lista, cpf);

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

            ListaLocacoes* filtrada = ListaLocacaoPorPlaca(lista, placa);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - Placa NOT Encontrada!!!\n");
                return NULL;
            }

            return filtrada;
        }

        else if (opc == 'd' || opc == 'D') {
            return NULL;
        }

        else if (opc == '0') return NULL;

        else printf("\n INVALIDO!!!\n\n");
        
        return NULL;
    }


    // Insere no Dicionário

    void InsereNoDicionario(DicionarioLocacoes* dicionario, Locacao* locacao, int indice) {
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

    DicionarioLocacoes* MapListaParaDicionario(ListaLocacoes* lista) {
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

    void TelaLocacaoIndex(ListaLocacoes* lista, int isUpdate) {
        char opc;

        do { // hast
            cleanScreen();

            printf("\n CPF   [c/C]");
            printf("\n Placa [p/P]");
            printf("\n Data  [d/D]");
            printf("\n 0 - Retorna");
            printf("\n--> ");

            char opc = getchar(); clearBuffer();
            if (opc == '0') return;

            ListaLocacoes* filtrada = ListaLocacoesPorIndice(lista, opc);
            ExibeListaLocacoes(filtrada);

            if (isUpdate && filtrada) {
                AtualizaLocacao(lista);
                return;
            }

            pause();

        } while (opc != '0');
    }


    // Retorna uma nova Locacao inserida pelo usuário

    Locacao* NovaLocacao(ListaClientes* listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
        char   cpf[CPF_LEN];
        char   placa[PLACA_LEN];
        Data*  dataLocacao;
        Data*  dataDevolucao;
        double valor;

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

            if (!VeiculoPorPlaca(listaVeiculos, placa)) {
                printf("\nhttp ERROR 404: Placa not Encontrada!!!\n\n"); pause();
                continue;
            }

            printf("\nData da Locacao: ");
            dataLocacao = CriaDataValida();

            printf("\nData da Devolucao: ");
            dataDevolucao = CriaDataValida();

            printf("\nDigite o valor da Diaria: ");
            scanf("%lf", &valor); clearBuffer();

            break;

        } while(1);
        
        return CriaLocacaoArgs(cpf, placa, dataLocacao, dataDevolucao, valor);
    }


    // Insere uma Locacao na última posição da lista

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


    // Administra a inserção na Lista

    void InsereLocacao(ListaClientes* listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
        if (!listaLocacoes || !listaClientes || !listaVeiculos)
            return;

        InsereLocacaoNaLista(listaLocacoes, NovaLocacao(listaClientes, listaVeiculos, listaLocacoes));
    }


    // Atualiza as informações de uma Locação

    void AtualizaLocacao(ListaLocacoes* lista) {
        int loc;

        do { // hast
            printf("\nDigite o indice da locacao que deseja alterar: ");
            scanf("%d", &loc); clearBuffer();

            if (loc <= 0)
                return;

            if (loc > lista->tamanho)
                printf("\nINVALIDO!!!\n");
            
        } while (loc > lista->tamanho);
        
        DicionarioLocacoes* dicionario = MapListaParaDicionario(lista);
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
            double valor; scanf("%lf", &valor); clearBuffer();
            locacao->ValorTotal = valor;

        } while(opc != '0');
    }

//-------------------------------------------------------------------------------------------------------------//

    // Submenu de Locacoes

    void MenuLocacoes(ListaClientes* listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
        char opc;

        do {
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
                case '1': InsereLocacao(listaClientes, listaVeiculos, listaLocacoes); pause(); break;
                case '2': TelaLocacaoIndex(listaLocacoes, 0); break;
                case '3': ExibeListaLocacoes(listaLocacoes); pause(); break;
                case '4': TelaLocacaoIndex(listaLocacoes, 1); break;
                case '5': break;
                case '0': break;
                default : printf("\n INVALIDO!!!\n"); pause(); break;
            }

        } while (opc != '0');
    }
