#ifndef Clientes_H
#define Clientes_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "tools.h"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define CPF_LEN        15
    #define NOME_LEN       100
    #define ENDERECO_LEN   500
    #define CATEGORIA_LEN  10

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

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

//-------------------------------------------------------------------------------------------------------------//

    // Lista de Funções e Métodos

    // Construtores
        Cliente*       CriaCliente();
        Cliente*       CriaClienteArgs      (char[], char[], char[], char[]);
        ListaClientes* CriaListaClientes();
        ListaClientes* CriaListaClientesArgs(Cliente*);

    // Métodos Úteis
        void      PrintCPF     (char[]);
        void      ExibeCliente (Cliente*);
        Cliente*  ClientePorCPF(ListaClientes*, char[]);
        Cliente*  Clone        (Cliente*);
        int       SizeString   (char);

    // CRUD
        void     ExibeClientePorCPF  (ListaClientes*, char[]);
        Cliente* NovoCliente         (ListaClientes*);
        void     InsereClienteNaLista(ListaClientes*, Cliente*);
        void     InsereCliente       (ListaClientes*);
        void     AtualizaCliente     (ListaClientes*, char[]);
        void     RemoveCliente       (ListaClientes*, char[]);

#endif