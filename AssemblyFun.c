/*
*  This code was typed into compiler explorer and then converted to Assembly
*  using MinGW gcc 12.2.0, which is similar to what I have installed.
* 
*  For more information you can do the same process using the link below
*  https://godbolt.org/
* 
*  Remember to remove the asm() clause, this was merely an experiment.
*/

#include <stdio.h>
#include <stdlib.h>

void swap(int *n1, int *n2) {
    int temp;
    temp = *n1;
    *n1 = *n2;
    *n2 = temp;

}

int main(int argc, char const *argv[]) {
    int a = 6;
    int b = 9;

    printf("\na=%d", a);
    printf("\nb=%d", b);
    
    swap(&a, &b);

    //
    // The asm command below returns an Assembler Error:
    // Error: junk `rbp' after expression
    // Error: too many memory references for `push'
    //
    // After deleting the first line the error changes to:
    // Error: too many memory references for `mov'
    //
    // Which I believe is related to the assembler no longer knowing rbp
    //
    asm (
        "push    rbp"
        "mov     rbp, rsp"
        "sub     rsp, 16"
        "mov     QWORD PTR 16[rbp], rcx"
        "mov     QWORD PTR 24[rbp], rdx"
        "mov     rax, QWORD PTR 16[rbp]"
        "mov     eax, DWORD PTR [rax]"
        "mov     DWORD PTR -4[rbp], eax"
        "mov     rax, QWORD PTR 24[rbp]"
        "mov     edx, DWORD PTR [rax]"
        "mov     rax, QWORD PTR 16[rbp]"
        "mov     DWORD PTR [rax], edx"
        "mov     rax, QWORD PTR 24[rbp]"
        "mov     edx, DWORD PTR -4[rbp]"
        "mov     DWORD PTR [rax], edx"
        "nop"
        "add     rsp, 16"
        "pop     rbp"
        "ret"
    );
    
    printf("\na=%d", a);
    printf("\nb=%d", b);
    
    return 0;
}
