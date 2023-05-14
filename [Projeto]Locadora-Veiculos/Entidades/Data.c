#include "Data.h"

//-------------------------------------------------------------------------------------------------------------//

    // "CONSTRUTORES"

    //
    // Construtor da struct Data
    //
    DateTime* CriaDateTime(string dia,
                           string mes,
                           string ano) {
                            
        DateTime* aux = (DateTime *) malloc(sizeof(DateTime));

        if (!aux)
            return NULL;

        int _ano = strtol(ano, NULL, 10)-1900;
        int _mes = strtol(mes, NULL, 10)-1;

        aux->tm_sec  = 0;
        aux->tm_min  = 0;
        aux->tm_hour = 0;
        aux->tm_wday = 0;
        aux->tm_mday = strtol(dia, NULL, 10);
        aux->tm_mon  = _mes;
        aux->tm_year = _ano;
        aux->tm_yday = 0;

        if (Bissexto(_ano))
            aux->tm_isdst = 1;
        else
            aux->tm_isdst = 0;

        return aux;
    }

//-------------------------------------------------------------------------------------------------------------//

    // Métodos Úteis

    //
    // Exibe um DateTime formatado
    //
    void ExibeData(const DateTime* data) {
        char novaData[100];

        strftime(novaData, 100, "%a %d %b %Y", data);
        novaData[strcspn(novaData, "\n")] = 0;

        printf("%s", novaData);
    }

    //
    // Formata um DateTime
    //
    string FormataData(const DateTime* data) {
        string novaData = String(100);

        strftime(novaData, 100, "%a%d%b%Y", data);
        novaData[strcspn(novaData, "\n")] = 0;

        return novaData;
    }

    //
    // Retorna uma nova Data inserida pelo usuário
    //
    DateTime* NovaData() {
        char dia[DIA_LEN];
        char mes[MES_LEN];
        char ano[ANO_LEN];

        printf("\nDia: ");
        fgets(dia, DIA_LEN, stdin);
        dia[strcspn(dia, "\n")] = 0;

        if (!ValidaDia(strtol(dia, NULL, 10)))
            return NULL;

        printf("Mes: ");
        fgets(mes, MES_LEN, stdin);
        mes[strcspn(mes, "\n")] = 0;

        if (!ValidaMes(strtol(dia, NULL, 10), strtol(mes, NULL, 10)))
            return NULL;

        printf("Ano: ");
        fgets(ano, ANO_LEN, stdin);
        ano[strcspn(ano, "\n")] = 0;

        if (!ValidaAno(strtol(dia, NULL, 10), strtol(mes, NULL, 10), strtol(ano, NULL, 10)))
            return NULL;

        return CriaDateTime(dia, mes, ano);
    }

    //
    // Retorna 1 se o dia é válido
    //
    int ValidaDia(const int dia) {
        if (dia <= 0 || dia > 31)
            return 0;

        return 1;
    }

    //
    // Retorna 1 se o mês é válido
    //
    int ValidaMes(const int dia, const int mes) {
        if (mes <= 0 || mes > 12)
            return 0;

        if (mes == 2 && dia > 29)
            return 0;

        if ((mes == 4 || mes == 6 || mes == 9 || mes == 11) && dia == 31)
            return 0;

        return 1;
    }

    //
    // Retorna 1 se o ano é válido
    //
    int ValidaAno(const int dia, const int mes, const int ano) {
        if (ano < 1900 || ano > 3000)
            return 0;

        if (dia == 29 && mes == 2 && !Bissexto(ano))
            return 0;

        return 1;
    }

    //
    // Retorna 1 se o ano é bissexto
    //
    int Bissexto(const int ano) {
        if (ano%400 == 0 && ano%100 == 0)
            return 1;
        if (ano%4 == 0 && ano%100 != 0)
            return 1;

        return 0;
    }

    //
    // Loop até o usuário inserir uma data válida
    //
    DateTime* CriaDataValida() {
        DateTime* data;

        do { // hast
            if (data) free(data);

            printf("\nDigite a Data: ");
            data = NovaData();

            if (!data)
                printf("\nData Invalida!!!\n");
            
        } while(!data);

        return data;
    }

    //
    // Retorna a quantidade de dias entre duas datas
    //
    int DiferencaEmDias(DateTime* dataFim, DateTime* dataIni) {
        double segundos = difftime(mktime(dataFim), mktime(dataIni));
        return (int) (segundos/SECONDS_DAY);
    }

    //
    // Retorna 1 se o Range de Datas está dentro de um Range passado como argumento
    // Retorna -1 se o Range de Datas está fora de um Range Passado como argumento
    // Retorna 0 se há intersecção
    //
    int DataRangeInRange(DateTime* inputDataFim,
                         DateTime* inputDataIni,
                         DateTime* rangeDataFim,
                         DateTime* rangeDataIni) {

        time_t inputIni = mktime(inputDataIni);
        time_t inputFim = mktime(inputDataFim);
        time_t rangeIni = mktime(rangeDataIni);
        time_t rangeFim = mktime(rangeDataFim);

        if (inputIni >= rangeIni && inputFim <= rangeFim)
            return 1;

        if (inputIni < rangeIni && inputFim < rangeIni)
            return -1;

        if (inputIni > rangeFim && inputFim > rangeFim)
            return -1;

        return 0;
    }
