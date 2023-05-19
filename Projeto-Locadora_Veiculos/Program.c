#include "Entidades/Relatorios/Relatorios.c"

void PreencheClientes(ListaClientes* lista) {
    InsereClienteNaLista(lista, CriaClienteArgs("45612378966", "Stulla Sigurdasson",
                                                "Rua Reykjavik Jokull, 93", "A B"));
    InsereClienteNaLista(lista, CriaClienteArgs("12345678911", "Frida Halfdasdottir",
                                                "Rua Aegir Egmund, 64", "B"));
    InsereClienteNaLista(lista, CriaClienteArgs("36925814722", "Njall Gustavsson",
                                                "Alameda Sogafjordur, 86", "B D"));
}

void PreencheVeiculos(ListaVeiculos* lista) {
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("ABC1234", "Toyota",  "Prius", 2020, 68.49));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("CUF0F00", "Honda",   "Civic", 2016, 73.58));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("CDF9369", "Hyundai", "Azera", 2013, 89.61));
}

void PreencheLocacoes(ListaLocacoes* lista) {
    DateTime* data1 = CriaDateTime("05", "09", "2020");
    DateTime* data2 = CriaDateTime("13", "10", "2020");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "CDF9369", data1, data2,
                                                73.58*DiferencaEmDias(data2, data1)));
    
    free(data1); free(data2);
    
    data1 = CriaDateTime("23", "05", "2022");
    data2 = CriaDateTime("14", "07", "2022");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "CUF0F00", data1, data2,
                                                68.49*DiferencaEmDias(data2, data1)));
    
    free(data1); free(data2);
}

int LogOff(ListaClientes* listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
    puts("\nDeseja salvar as alterações?");
    puts("Digite qualquer tecla para voltar");
    puts("   1 = SIM  ||  0 = NÃO");
    printf(" >> ");
    int opc = getchar(); clearBuffer();

    if (opc == '1') {
        PersistenciaClientes(listaClientes);
        PersistenciaVeiculos(listaVeiculos);
        PersistenciaLocacoes(listaLocacoes);
        return '0';
    }

    return opc;
}

void Menu(ListaClientes* listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
    int opc;

    do { // hast
        cleanScreen();

        puts("================================");
        puts("      Locações Louca-Ações!\n");
        puts("  1 - Clientes");
        puts("  2 - Veículos");
        puts("  3 - Locações");
        puts("  4 - Relatórios");
        puts("  0 - Retornar\n");
        printf("Escolha: ");
        opc = getchar(); clearBuffer();

        switch (opc) {
            case '1': MenuClientes(listaClientes);                                        break;
            case '2': MenuVeiculos(listaVeiculos);                                        break;
            case '3': MenuLocacoes(listaClientes, listaVeiculos, listaLocacoes);          break;
            case '4': MenuRelatorios(listaLocacoes);                                      break;
            case '0': opc = LogOff(listaClientes, listaVeiculos, listaLocacoes); pause(); break;
            default : puts("\n INVÁLIDO!!!"); pause();                                break;
        }

    } while(opc != '0');
}

int main(int argc, char const *argv[]) {
    Locale();

    ListaClientes* listaClientes = ReadClientes();
    ListaVeiculos* listaVeiculos = ReadVeiculos();
    ListaLocacoes* listaLocacoes = ReadLocacoes();

    if (!listaClientes->cliente) PreencheClientes(listaClientes);
    if (!listaVeiculos->veiculo) PreencheVeiculos(listaVeiculos);
    if (!listaLocacoes->locacao) PreencheLocacoes(listaLocacoes);

    Menu(listaClientes, listaVeiculos, listaLocacoes);
    printf("\nlistaLocacoes->locacao->Chave: %s\n\n", listaLocacoes->locacao->Chave);

    FreeClientes(listaClientes);
    FreeVeiculos(listaVeiculos);
    FreeLocacoes(listaLocacoes);

    return 0;
}
