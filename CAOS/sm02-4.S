    .att_syntax    noprefix
    .global main 
main:
    movl    $last, edx
    addl    $4, edx
    movl    $parent, ebx
    addl    $4, ebx
    xor     esi, esi
    xor     edi, edi
    xor     ebp, ebp
process:
    call    readi32
    jc      end_task
    test    eax, eax
    jz      pushing
    jmp     poping
pushing:
    call    readi32
    movl    eax, esi
    call    readi32
    movl    eax, edi
    // Добавляем позицию и значение в parent и last соответсвенно
    movl    esi, eax
    movl    eax, (ebx)
    movl    edi, eax
    movl    eax, (edx)
    movl    (edx), eax
    addl    $4, edx
    addl    $4, ebx
    jmp     process
poping:
    call    readi32
    movl    eax, esi
    shll    $2, esi
    movl    $last, eax
    addl    esi, eax
    movl    (eax), eax
    cmpl    $0, eax
    jl      is_negative
    call    writei32
    movl    $parent, eax
    addl    esi, eax
    movl    (eax), eax
    movl    eax, ebp
    shll    $2, ebp
    movl    $last, eax
    addl    ebp, eax
    movl    (eax), eax
    // Добавляем позицию и значение в parent и last соответсвенно
    movl    eax, (edx)
    movl    $parent, eax
    addl    ebp, eax
    movl    (eax), eax
    // Добавляем позицию и значение в parent и last соответсвенно
    movl    eax, (ebx)
    addl    $4, edx
    addl    $4, ebx
    jmp     process
is_negative:
    movl    $-1, eax
    call    writei32
    jmp     process
end_task:
    call finish
    .data
last:
    .int    -1
    .skip   30000 * 4
parent:
    .int    -1
    .skip   30000 * 4