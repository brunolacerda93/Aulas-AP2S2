#include "Data.h"

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

//-------------------------------------------------------------------------------------------------------------//

    // Métodos Úteis


    // Exibe uma Data no formato (DD/mm/YYYY)

    void ExibeData(Data* data) {
        printf("%s/%s/%s\n", data->Dia, data->Mes, data->Ano);
    }

