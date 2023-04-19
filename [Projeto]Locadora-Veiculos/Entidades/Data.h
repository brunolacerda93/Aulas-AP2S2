#ifndef Data_H
#define Data_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include <time.h>
    #include "../tools.h"

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

        DateTime* CriaDateTime(const string, const string, const string);

        int       ValidaDia         (const int);
        int       ValidaMes         (const int, const int);
        int       ValidaAno         (const int, const int, const int);
        int       Bissexto          (const int);
        int       DiferencaEmDias   (const DateTime*, const DateTime*);
        int       DataRangeInRange  (const DateTime*, const DateTime*, const DateTime*, const DateTime*);
        void      ExibeData         (const DateTime*);
        string    FormataData       (const DateTime*);
        DateTime* NovaData();
        DateTime* CriaDataValida();

#endif