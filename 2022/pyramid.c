#include <stdio.h>
#include <stdlib.h>

void pyrStar() {
    int i, space, rows, k = 0;

    printf("Enter the number of rows: ");
    scanf("%d", &rows);

    for (i = 1; i <= rows; ++i, k = 0) {
        for (space = 1; space <= rows - i; ++space) {
            printf("  ");
        }
        while (k != 2 * i - 1) {
            printf("* ");
            ++k;
        }
        printf("\n");
    }
}

void pyrNumbers() {
    int i, space, rows, k = 0, count = 0, count1 = 0;
    
    printf("Enter the number of rows: ");
    scanf("%d", &rows);
    
    for (i = 1; i <= rows; ++i) {
        for (space = 1; space <= rows - i; ++space) {
            printf("  ");
            ++count;
        }
        while (k != 2 * i - 1) {
            if (count <= rows - 1) {
                printf("%d ", i + k);
                ++count;
            } else {
                ++count1;
                printf("%d ", (i + k - 2 * count1));
            }
            ++k;
        }
        count1 = count = k = 0;
        printf("\n");
    }
}

void pyrRevStar() {
    int rows, i, j, space;
    printf("Enter the number of rows: ");
    scanf("%d", &rows);
    for (i = rows; i >= 1; --i) {
        for (space = 0; space < rows - i; ++space)
            printf("  ");
        for (j = i; j <= 2 * i - 1; ++j)
            printf("* ");
        for (j = 0; j < i - 1; ++j)
            printf("* ");
        printf("\n");
    }
}

void pyrPascal() {
    int rows, coef = 1, space, i, j;
    printf("Enter the number of rows: ");
    scanf("%d", &rows);
    for (i = 0; i < rows; i++) {
        for (space = 1; space <= rows - i; space++)
        printf("  ");
        for (j = 0; j <= i; j++) {
            if (j == 0 || i == 0)
                coef = 1;
            else
                coef = coef * (i - j + 1) / j;
            printf("%4d", coef);
        }
        printf("\n");
    }
}

void menu(char opc) {
    system("cls");
    switch (opc) {
        case '1': pyrStar();         break;
        case '2': pyrNumbers();      break;
        case '3': pyrRevStar();      break;
        case '4': pyrPascal();       break;
        default: printf("INVALID!\n\n"); break;
    }
}

int main() {
    char opc;
    do { //hast
        system("cls");
        printf("FUNNY PYRAMIDS!");
        printf("\n 1 - *Pyramid*");
        printf("\n 2 - Numbers Pyramid");
        printf("\n 3 - Reverse *Pyramid*");
        printf("\n 4 - Pascal Pyramid");
        printf("\n 0 - Exit");
        printf("\nChoose: ");
        
        fflush(stdin); scanf("%c", &opc);
        if (opc != '0') menu(opc);
        system("pause");

    } while (opc != '0');
    return 0;
}
