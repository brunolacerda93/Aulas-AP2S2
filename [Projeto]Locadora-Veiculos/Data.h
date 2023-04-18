#ifndef Data_H
#define Data_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include <time.h>
    #include "tools.h"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define DIA_LEN 5
    #define MES_LEN 5
    #define ANO_LEN 10
    #define SECONDS_DAY 86400

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

    typedef struct tm DateTime;

//-------------------------------------------------------------------------------------------------------------//

    // Lista de Funções e Métodos

    // Construtores
        DateTime* CriaDateTime(char[], char[], char[]);

    // Métodos Úteis
        int       ValidaDia(int);
        int       ValidaMes(int, int);
        int       ValidaAno(int, int, int);
        int       Bissexto (int);
        int       DiferencaEmDias(DateTime*, DateTime*);
        void      ExibeData(DateTime*);
        string    FormataData(DateTime*);
        DateTime* NovaData();
        DateTime* CriaDataValida();
        DateTime* DataParaDT(DateTime*);

#endif