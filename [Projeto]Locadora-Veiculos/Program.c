#include "Entidades/Relatorios/Relatorios.c"

void PreencheClientes(ListaClientes* lista) {
    InsereClienteNaLista(lista, CriaClienteArgs("45612378966", "Stulla Sigurdasson",
                                                "Rua Reykjavik Jokull, 93", "A B"));
    InsereClienteNaLista(lista, CriaClienteArgs("12345678911", "Frida Halfdasdottir",
                                                "Rua Aegir Egmund, 64", "A"));
    InsereClienteNaLista(lista, CriaClienteArgs("36925814722", "Njall Gustavsson",
                                                "Alameda Sogafjordur, 86", "A D"));
}

void PreencheVeiculos(ListaVeiculos* lista) {
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("ABC1234", "Toyota",  "Prius", 2020, 68.49));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("ABC9369", "Honda",   "Civic", 2016, 73.58));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("CDF9369", "Hyundai", "Azera", 2013, 89.61));
}

void PreencheLocacoes(ListaLocacoes* lista) {
    DateTime* data1 = CriaDateTime("05", "09", "2020");
    DateTime* data2 = CriaDateTime("13", "10", "2020");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC9369", data1, data2,
                                                73.58*DiferencaEmDias(data2, data1)));
    
    data1 = CriaDateTime("23", "05", "2022");
    data2 = CriaDateTime("14", "07", "2022");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC1234", data1, data2,
                                                68.49*DiferencaEmDias(data2, data1)));
}

int LogOff(ListaClientes * listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
    printf("\nDeseja salvar as alterações?");
    printf("\nDigite qualquer tecla para voltar");
    printf("\n   1 = SIM  ||  0 = NAO");
    printf("\n--> ");
    int opc = getchar(); clearBuffer();

    if (opc == '1') {
        PersistenciaClientes(listaClientes);
        PersistenciaVeiculos(listaVeiculos);
        PersistenciaLocacoes(listaLocacoes);
        return '0';
    }

    return opc;
}

void Menu(ListaClientes * listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
    int opc;

    do { // hast
        cleanScreen();

        printf("================================\n");
        printf("      Locações Louca-Ações!\n\n");
        printf("  1 - Clientes\n");
        printf("  2 - Veículos\n");
        printf("  3 - Locações\n");
        printf("  4 - Relatórios\n");
        printf("  0 - Retornar\n");
        printf("\nEscolha: ");
        opc = getchar(); clearBuffer();

        switch (opc) {
            case '1': MenuClientes(listaClientes);                                        break;
            case '2': MenuVeiculos(listaVeiculos);                                        break;
            case '3': MenuLocacoes(listaClientes, listaVeiculos, listaLocacoes);          break;
            case '4': MenuRelatorios(listaLocacoes);                                      break;
            case '0': opc = LogOff(listaClientes, listaVeiculos, listaLocacoes); pause(); break;
            default : printf("\n INVÁLIDO!!!\n"); pause();                                break;
        }

    } while(opc != '0');
}

int main(int argc, char const *argv[]) {
    Locale();

    ListaClientes* listaClientes = ReadClientes();
    ListaVeiculos* listaVeiculos = ReadVeiculos();
    ListaLocacoes* listaLocacoes = ReadLocacoes();

//    PreencheClientes(listaClientes);
//    PreencheVeiculos(listaVeiculos);
//    PreencheLocacoes(listaLocacoes);

    Menu(listaClientes, listaVeiculos, listaLocacoes);
    printf("\nlistaLocacoes->locacao->Chave: %s\n\n", listaLocacoes->locacao->Chave);

    return 0;
}
