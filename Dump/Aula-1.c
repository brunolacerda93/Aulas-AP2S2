#include "sorting.c"

void bla(const int size) {
    int a[size];
    int b[size];
    int c[size*2];

    fillArray(a, size);
    fillArray(b, size);

    for (size_t i = 0; i < size; i++) {
        c[2*i]    = a[i];
        c[2*i+1]  = b[i];
    }

    printf("\nA:\n");
    showArray(a, size);
    printf("\nB:\n");
    showArray(b, size);
    printf("\nC:\n");
    showArray(c, size*2);
}

int main(int argc, char const *argv[]) {

    bla(10);

    return 0;
}
