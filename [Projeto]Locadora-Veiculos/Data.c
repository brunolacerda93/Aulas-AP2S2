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
        printf("%s/%s/%s", data->Dia, data->Mes, data->Ano);
    }


    // Retorna uma nova Data inserida pelo usuário

    Data* NovaData() {
        char dia[DIA_LEN];
        char mes[MES_LEN];
        char ano[ANO_LEN];

        printf("\nDia: ");
        fgets(dia, DIA_LEN, stdin);
        dia[strcspn(dia, "\n")] = 0;

        printf("Mes: ");
        fgets(mes, MES_LEN, stdin);
        mes[strcspn(mes, "\n")] = 0;

        printf("Ano: ");
        fgets(ano, ANO_LEN, stdin);
        ano[strcspn(ano, "\n")] = 0;

        return CriaData(dia, mes, ano);
    }

