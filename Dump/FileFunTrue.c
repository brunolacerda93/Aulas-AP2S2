#include "[Projeto]Locadora-Veiculos/Entidades/Locacoes/Locacoes.c"

#define LOCACOES "LISTA_LOCACOES"
#define FERROR "Erro ao abrir "

ListaLocacoes* Listosa() {
    ListaLocacoes* lista = CriaListaLocacoes();

    DateTime* data1 = CriaDateTime("05", "09", "2020");
    DateTime* data2 = CriaDateTime("13", "10", "2020");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC9369", data1, data2,
                                                73.58*DiferencaEmDias(data2, data1)));
    
    data1 = CriaDateTime("23", "05", "2022");
    data2 = CriaDateTime("14", "07", "2022");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC1234", data1, data2,
                                                68.49*DiferencaEmDias(data2, data1)));

    return lista;
}

void Permanencia(ListaLocacoes* lista) {
    CALLING;
    FILE* file;
    Locacao* aux = lista->locacao;

    file = fopen(LOCACOES, "wb");
    if(!file) {
        fprint_err(LOCACOES);
        return NULL;
    }

    for (size_t i=0; i < lista->tamanho; i++) {
        fwrite(aux, sizeof(Locacao), 1, file);
        aux = aux->proximo;
    }

    fclose(file);
}

ListaLocacoes* Leitura() {
    CALLING;
    FILE* file;
    Locacao loca_temp;
    ListaLocacoes* lista = CriaListaLocacoes();

    file = fopen(LOCACOES, "rb");
    if(!file) {
        fprint_err(LOCACOES);
        return NULL;
    }

    fread(&loca_temp, sizeof(Locacao), 1, file);
    do { // hast
        InsereLocacaoNaLista(lista, ClonaLocacao(&loca_temp));
        fread(&loca_temp, sizeof(Locacao), 1, file);
    } while (!feof(file));

    fclose(file);
    return lista;
}

int main(int argc, char const *argv[]) {

    ListaLocacoes* lista;
    // ListaLocacoes* lista = Listosa();

    // DateTime* data1 = CriaDateTime("05", "09", "2022");
    // DateTime* data2 = CriaDateTime("13", "10", "2022");
    // Locacao *loca = CriaLocacaoArgs("22345678911", "ABC9369", data1, data2,
    //                                             73.58*DiferencaEmDias(data2, data1));
    
    lista = Leitura();
    ExibeListaLocacoes(lista);

    // lista = Listosa();
    // Permanencia(lista);

    // lista = Leitura();
    // ExibeListaLocacoes(lista);

    return 0;
}
