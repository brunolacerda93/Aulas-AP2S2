#include <stdio.h>
#include <string.h>

void version_01() {
    char str1[100];
    char newString[10][10];
    int i, j, ctr;
    
    printf("\n\n Split string by space into words :\n");
    printf("---------------------------------------\n");

    printf(" Input  a string : ");
    fgets(str1, sizeof str1, stdin);

    j = 0;
    ctr = 0;
    for (i = 0; i <= (strlen(str1)); i++) {
        
        // if space or NULL found, assign NULL into newString[ctr]
        if (str1[i] == ' ' || str1[i] == '\0') {
            newString[ctr][j] = '\0';
            ctr++; // for next word
            j = 0; // for next word, init index to 0
        }
        else {
            newString[ctr][j] = str1[i];
            j++;
        }
    }
    
    printf("\n Strings or words after split by space are :\n");
    for (i = 0; i < ctr; i++)
        printf(" %s\n", newString[i]);
}

void version_02(char newString[][10]) {
    char string[] = "Bjorn is cool";
    char *array[10];
    char *p = strtok(string, " ");
    int i=0;

    while (p != NULL) {
        array[i++] = p;
        p = strtok(NULL, " ");
    }

    for (i=0; i<3; i++) {
        printf("%s\n", array[i]);
        strcpy(newString[i], array[i]);
    }
}

int main() {
    char array[10][10];
    version_01();
    version_02(array);
    printf("\n");
    for (int i=0; i<3; i++)
        printf("%s ", array[i]);
    return 0;
}
