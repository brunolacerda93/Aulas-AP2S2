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

        if (!ValidaDia(atoi(dia)))
            return NULL;

        printf("Mes: ");
        fgets(mes, MES_LEN, stdin);
        mes[strcspn(mes, "\n")] = 0;

        if (!ValidaMes(atoi(dia), atoi(mes)))
            return NULL;

        printf("Ano: ");
        fgets(ano, ANO_LEN, stdin);
        ano[strcspn(ano, "\n")] = 0;

        if (!ValidaAno(atoi(dia), atoi(mes), atoi(ano)))
            return NULL;

        return CriaData(dia, mes, ano);
    }


    // Verifica se a Data é válida

    int ValidaDia(int dia) {
        if (dia <= 0 || dia > 31)
            return 0;

        return 1;
    }


    // Verifica se o mês é válido

    int ValidaMes(int dia, int mes) {
        if (mes <= 0 || mes > 12)
            return 0;

        if (mes == 2 && dia > 29)
            return 0;

        if ((mes == 4 || mes == 6 || mes == 9 || mes == 11) && dia == 31)
            return 0;

        return 1;
    }


    // Verifica se o ano é válido

    int ValidaAno(int dia, int mes, int ano) {
        if (ano < 1900 || ano > 2100)
            return 0;

        if (dia == 29 && mes == 2 && !Bissexto(ano))
            return 0;

        return 1;
    }


    // Valida se o ano é bissexto

    int Bissexto(int ano) {
        if (ano%400 == 0 && ano%100 == 0)
            return 1;
        if (ano%4 == 0 && ano%100 != 0)
            return 1;

        return 0;
    }

    
    // Loop data

    Data* CriaDataValida() {
        Data* data;

        do { // hast
            printf("\nDigite a Data: ");
            data = NovaData();

            if (!data)
                printf("\nData Invalida!!!\n");
            
        } while(!data);

        return data;
    }

