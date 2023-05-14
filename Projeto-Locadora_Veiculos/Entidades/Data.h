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

        DateTime* CriaDateTime(string, string, string);

        int       ValidaDia         (int);
        int       ValidaMes         (int, int);
        int       ValidaAno         (int, int, int);
        int       Bissexto          (int);
        int       DiferencaEmDias   (DateTime*, DateTime*);
        int       DataRangeInRange  (DateTime*, DateTime*, DateTime*, DateTime*);
        void      ExibeData         (const DateTime*);
        string    FormataData       (const DateTime*);
        DateTime* NovaData();
        DateTime* CriaDataValida();

#endif