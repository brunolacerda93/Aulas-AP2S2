#ifndef Data_H
#define Data_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "tools.h"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define DIA_LEN 5
    #define MES_LEN 5
    #define ANO_LEN 10

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

    typedef struct {
        char Dia[DIA_LEN];
        char Mes[MES_LEN];
        char Ano[ANO_LEN];
    } Data;

//-------------------------------------------------------------------------------------------------------------//

    // Lista de Funções e Métodos

    // Construtores
        Data* CriaData(char[], char[], char[]);

    // Métodos Úteis
        void ExibeData(Data*);
        int  ValidaDia(int);
        int  ValidaMes(int, int);
        int  ValidaAno(int, int, int);
        int   Bissexto(int);

    // CRUD


    // SubMenu


#endif