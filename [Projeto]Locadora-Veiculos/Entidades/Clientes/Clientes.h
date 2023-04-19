#ifndef Clientes_H
#define Clientes_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "../../tools.h"

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
        Cliente*       CriaClienteArgs(const string, const string, const string, const string);
        ListaClientes* CriaListaClientes();
        ListaClientes* CriaListaClientesArgs(const Cliente*);

    // Métodos Úteis

        void     ExibeCliente (const Cliente*);
        Cliente* ClientePorCPF(const ListaClientes*, const string);
        Cliente* Clone        (const Cliente*);
        int      SizeString   (const char);

    // CRUD

        void     InsereCliente       (ListaClientes*);
        void     AtualizaCliente     (ListaClientes*);
        void     RemoveCliente       (ListaClientes*);
        void     ExibeClientePorCPF  (const ListaClientes*);
        void     ExibeTodosClientes  (const ListaClientes*);
        void     InsereClienteNaLista(ListaClientes*, const Cliente*);
        Cliente* NovoCliente         (const ListaClientes*);

    // SubMenu
    
        void MenuClientes(ListaClientes*);

#endif