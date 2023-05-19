#include "tools.h"

int main(int argc, char const *argv[]) {
    int n;
    printf("%p\n", &n);
    do {
        scanf("%d", &n);
        if (n <= 0) break;
        
        int mat[n][n];
        uintptr_t x;

        printf("&mat: %p\n", &mat);
        printf("&x  : %p\n", &x);
        
    } while (n);

    return 0;
}
