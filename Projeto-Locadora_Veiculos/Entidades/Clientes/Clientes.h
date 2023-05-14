#ifndef Clientes_H
#define Clientes_H

//-------------------------------------------------------------------------------------------------------------//

    // Bibliotecas

    #include "../ValidaInput.h"

//-------------------------------------------------------------------------------------------------------------//

    // Definição dos tamanhos

    #define CPF_LEN        20
    #define NOME_LEN       100
    #define ENDERECO_LEN   500
    #define CATEGORIA_LEN  10
    #define CLIENTES "CLIENTES"

//-------------------------------------------------------------------------------------------------------------//

    // Estrutura dos tipos

    typedef struct Cliente {
        char   CPF       [CPF_LEN];
        char   Nome      [NOME_LEN];
        char   Endereco  [ENDERECO_LEN];
        char   Categoria [CATEGORIA_LEN];
        struct Cliente* proximo;
    } Cliente;


    typedef struct ListaClientes {
        Cliente* cliente;
        size_t   tamanho;
    } ListaClientes;

//-------------------------------------------------------------------------------------------------------------//

    // Lista de Funções e Métodos

    // Construtores

        Cliente*       CriaCliente();
        Cliente*       CriaClienteArgs(string, string, string, string);
        ListaClientes* CriaListaClientes();
        ListaClientes* CriaListaClientesArgs(Cliente*);

    // Métodos Úteis

        int      SizeString    (int);
        int      CPFInput      (string);
        int      NomeInput     (string);
        int      EnderecoInput (string);
        int      CategoriaInput(string);
        void     ExibeCliente  (Cliente*);
        Cliente* ClientePorCPF (ListaClientes*, string);
        Cliente* ClonaCliente  (Cliente*);

    // CRUD

        void     InsereCliente       (ListaClientes*);
        void     AtualizaCliente     (ListaClientes*);
        void     RemoveCliente       (ListaClientes*);
        void     ExibeClientePorCPF  (ListaClientes*);
        void     ExibeTodosClientes  (ListaClientes*);
        void     InsereClienteNaLista(ListaClientes*, Cliente*);
        Cliente* NovoCliente         (ListaClientes*);

    // Arquivos

        void PersistenciaClientes(ListaClientes*);
        ListaClientes* ReadClientes();

    // SubMenu
    
        void MenuClientes(ListaClientes*);
        void FreeClientes(ListaClientes*);

#endif