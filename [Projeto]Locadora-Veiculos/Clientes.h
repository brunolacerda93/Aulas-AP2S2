#ifndef Clientes_H
#define Clientes_H

#include "tools.h"

#define CPF_LEN        15
#define NOME_LEN       100
#define ENDERECO_LEN   500
#define CATEGORIA_LEN  10

typedef struct Cliente {
    char   CPF       [CPF_LEN];
    char   Nome      [NOME_LEN];
    char   Endereco  [ENDERECO_LEN];
    char   Categoria [CATEGORIA_LEN];
    struct Cliente* proximo;
} Cliente;

typedef struct {
    Cliente* cliente;
    size_t   tamanho;
} ListaClientes;

#endif