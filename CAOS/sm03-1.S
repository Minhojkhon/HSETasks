    .att_syntax    noprefix
    .text
    .global main 
main:
    pushl   edi
    movl    esp, edi
    pushl   ebx
    movl    $1, ebx    
    pushl   ebp
    movl    esp, ebp
loop:
    subl    $4, edi
    pushl   edi
    pushl   $scanf_format
    call    scanf
    test    eax, eax
    jz      end_zero
    movl    (edi), eax
    addl    eax, ebx
    jo      overflow 
    jmp     loop
overflow:
    pushl   $of
    pushl   $printf_string_format
    call    printf
    
    movl    ebp, esp
    popl    ebp
    popl    ebx
    popl    edi
    
    xorl    eax, eax
    ret 
end_zero:
    movl    ebx, eax
    subl    $1, eax
    pushl   eax
    pushl   $printf_int_format
    call    printf

    movl    ebp, esp
    popl    ebp
    popl    ebx
    popl    edi

    xorl     eax, eax
    ret 

    .section .rodata
scanf_format:
    .string "%d"
of:
    .string "Overflow"

printf_string_format:
    .string "%s\n"

printf_int_format:
    .string "%d\n"
