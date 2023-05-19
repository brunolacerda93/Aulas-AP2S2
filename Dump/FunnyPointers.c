#include "tools.h"

int main(int argc, char const *argv[]) {
    const uintptr_t* stack_base_ptr = (const uintptr_t*)__builtin_frame_address(0);
    var stack_base_void = __builtin_frame_address(0);

    printf("stack_base_ptr: %p\n", stack_base_ptr);
    printf("stack_base_ptr: %p\n", stack_base_ptr-1);
    printf("stack_base_ptr: %p\n", stack_base_ptr-2);

    printf("\n");

    printf("stack_base_void: %p\n", stack_base_void);
    printf("stack_base_void: %p\n", stack_base_void-1);
    printf("stack_base_void: %p\n", stack_base_void-2);

    return 0;
}
