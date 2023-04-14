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
        Locacao* aux = lista->locacao;
        printf("%s", aux->CPF);
        while (aux) {
            printf("\n");
            ExibeLocacao(aux);
            aux = aux->proximo;
        }
    }


    // Retorna a Locacao com a Chave passada como argumento

    Locacao* LocacaoPorChave(ListaLocacoes* lista, char chave[]) {
        Locacao* aux = lista->locacao;
        while(aux) {
            if (!strcmp(aux->Chave, chave))
                return aux;
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
                InsereLocacaoNaLista(filtrada, aux);
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
                InsereLocacaoNaLista(filtrada, aux);
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
        UNIMPLEMENTED;
    }


    // Exibe na Tela as Locacoes requisitadas dado um índice

    void TelaLocacaoPorIndice(ListaLocacoes* lista, char opc) {
        if (opc == 'c' || opc == 'C') {
            char cpf[CPF_LEN];

            printf("\nDigite o CPF: ");
            fgets(cpf, CPF_LEN, stdin);
            cpf[strcspn(cpf, "\n")] = 0;

            ListaLocacoes* filtrada = ListaLocacaoPorCPF(lista, cpf);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - CPF NOT Encontrado!!!  "); pause();
                return;
            }

            ExibeListaLocacoes(filtrada);
        }

        else if (opc == 'p' || opc == 'P') {
            char placa[PLACA_LEN];

            printf("\nDigite a Placa: ");
            fgets(placa, PLACA_LEN, stdin);
            placa[strcspn(placa, "\n")] = 0;

            ListaLocacoes* filtrada = ListaLocacaoPorPlaca(lista, placa);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - Placa NOT Encontrada!!!  "); pause();
                return;
            }

            ExibeListaLocacoes(filtrada);
        }

        else if (opc == 'd' || opc == 'D') {
            return;
        }

        else if (opc == '0') return;

        else {
            printf("\n INVALIDO!!!\n\n");
        }
    }


    // Tela Locacao

    void TelaLocacao(ListaLocacoes* lista) {
        char opc;

        do { // hast
            cleanScreen();

            printf("\n CPF   [c/C]");
            printf("\n Placa [p/P]");
            printf("\n Data  [d/D]");
            printf("\n 0 - Retorna");
            printf("\n-- ");

            char opc = getchar(); clearBuffer();

            TelaLocacaoPorIndice(lista, opc);
            if (opc == '0') break;
            pause();

        } while (opc != '0');
    }

//-------------------------------------------------------------------------------------------------------------//

    // CRUD


    // Procura uma Locacao com a Chave passada como argumento e chama ExibeLocacao()

    void ExibeLocacaoPorChave(ListaLocacoes* lista) {
        printf("\nDigite a Chave: ");
        UNIMPLEMENTED;
    }


    // Exibe Toda uma Lista de Locacoes

    void ExibeTodasLocacoes(ListaLocacoes* lista) {
        Locacao* locacao = lista->locacao;
        while (locacao) {
            ExibeLocacao(locacao);
            printf("\n");
            locacao = locacao->proximo;
        }
    }


    // Retorna uma nova Locacao inserida pelo usuário


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


    // Submenu de Locacoes

    void MenuLocacoes(ListaLocacoes* lista) {
        char opc;

        do {
            cleanScreen();
            
            printf("====================\n");
            printf("      VEICULOS\n\n");
            printf("  1 - Cadastrar\n");
            printf("  2 - Exibir por Indexador\n");
            printf("  3 - Exibir Todos\n");
            printf("  4 - Atualizar\n");
            printf("  5 - Remover\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1': break;
                case '2': TelaLocacao(lista); break;
                case '3': ExibeTodasLocacoes(lista); break;
                case '4': break;
                case '5': break;
                case '0':                               break;
                default : printf("\n INVALIDO!!!\n");   break;
            }

            pause();

        } while (opc != '0');
    }
