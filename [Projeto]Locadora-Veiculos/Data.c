#include "Data.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"


    // Construtor da struct Data

    DateTime* CriaDateTime(char dia[], char mes[], char ano[]) {
        DateTime* aux = (DateTime *) malloc(sizeof(DateTime));

        if (!aux)
            return NULL;

        int _ano = atoi(ano)-1900;

        aux->tm_sec  = 0;
        aux->tm_min  = 0;
        aux->tm_hour = 0;
        aux->tm_mday = atoi(dia);
        aux->tm_mon  = atoi(mes);
        aux->tm_year = _ano;

        if (Bissexto(_ano))
            aux->tm_isdst = 1;
        else
            aux->tm_isdst = 0;

        return aux;
    }

//-------------------------------------------------------------------------------------------------------------//

    // Métodos Úteis


    // Exibe um DateTime formatado

    void ExibeData(DateTime* data) {
        char novaData[100];

        strftime(novaData, 100, "%a %d %b %Y", data);
        novaData[strcspn(novaData, "\n")] = 0;

        printf("%s", novaData);
    }


    // Formata o rolê já formatado

    string FormataData(DateTime* data) {
        string novaData = (string) malloc(100);

        strftime(novaData, 100, "%a%d%b%Y", data);
        novaData[strcspn(novaData, "\n")] = 0;

        return novaData;
    }


    // Retorna uma nova Data inserida pelo usuário

    DateTime* NovaData() {
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

        return CriaDateTime(dia, mes, ano);
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
        if (ano < 1900 || ano > 3000)
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

    DateTime* CriaDataValida() {
        DateTime* data;

        do { // hast
            printf("\nDigite a Data: ");
            data = NovaData();

            if (!data)
                printf("\nData Invalida!!!\n");
            
        } while(!data);

        return data;
    }

    
    // Retorna a quantidade de dias entre duas datas

    int DiferencaEmDias(DateTime* dataFinal, DateTime* dataInicial) {
        double segundos = difftime(mktime(dataFinal), mktime(dataInicial));
        return (int) (segundos/SECONDS_DAY);
    }

