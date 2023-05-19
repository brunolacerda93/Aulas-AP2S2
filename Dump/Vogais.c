#include <stdio.h>

int main(int argc, char const *argv[]) {
    
    char str[100];
    fgets(str, 100, stdin);

    typedef struct {
        char v;
        int n;
    } Vogal;

    Vogal arr[5] = { {'a', 0}, {'e', 0}, {'i', 0}, {'o', 0}, {'u', 0} };

    int j = 0;

    #define a arr[0].n
    #define e arr[1].n
    #define i arr[2].n
    #define o arr[3].n
    #define u arr[4].n

    while (str[j] != '\0') {
        switch (str[j++]) {
            case 'a': case 'A': a++; break;
            case 'e': case 'E': e++; break;
            case 'i': case 'I': i++; break;
            case 'o': case 'O': o++; break;
            case 'u': case 'U': u++; break;
        }
    }

    #undef a
    #undef e
    #undef i
    #undef o
    #undef u

    Vogal maior = arr[0];

    for (size_t k = 0; k < 5; k++) {
        if (arr[k].n > maior.n) {
            maior = arr[k];
        }
    }

    printf("\n%c", maior.v);
    
    return 0;
}
