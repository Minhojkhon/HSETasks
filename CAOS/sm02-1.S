    .global main
main:
    xor     %ebx, %ebx
loop:
    call    readi32
    jc      print_loop
    push    %eax
    inc     %ebx      
    jmp     loop
print_loop:
    test    %ebx, %ebx
    jz      end_task
    dec     %ebx
    pop     %eax
    call    writei32
    jmp     print_loop
end_task:
    call    finish