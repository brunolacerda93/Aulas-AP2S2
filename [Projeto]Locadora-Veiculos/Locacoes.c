#include "Locacoes.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"


    // Construtor da struct Data

    Data* CriaData(char dia[], char mes[], char ano[]) {
        Data* aux = (Data *) malloc(sizeof(Data));

        if (!aux)
            return NULL;

        strcpy(aux->Dia, dia);
        strcpy(aux->Mes, mes);
        strcpy(aux->Ano, ano);

        return aux;
    }


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

//-------------------------------------------------------------------------------------------------------------//

    // Métodos Úteis


    // Exibe uma Data no formato (DD/mm/YYYY)

    void ExibeData(Data* data) {
        printf("%s/%s/%s\n", data->Dia, data->Mes, data->Ano);
    }


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
