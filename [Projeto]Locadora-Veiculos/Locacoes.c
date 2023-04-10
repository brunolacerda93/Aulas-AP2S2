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


    // Retorna uma cópia profunda de uma Locacao

    Locacao* ClonaLocacao(Locacao* locacao) {
        UNIMPLEMENTED;
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