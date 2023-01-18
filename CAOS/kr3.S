    .att_syntax    noprefix
    .global main 
main:
    call    readi64

    // edx==0, тогда:
    test    edx, edx
    jz      first_if

    // если в еdх все единички
    cmpl    $-1, edx
    jz      second_if


    cmpl    $0, edx
    jg      third_eax_positive
    jmp     second_eax_positive

    call    finish

first_if:
    cmpl    $0, eax
    jge     first_eax_positive
    movl    $2147483647, eax
    call    writei32
    call    finish

first_eax_positive:
    call    writei32
    call    finish

second_if:
    cmpl    $0, eax
    jge     second_eax_positive
    call    writei32
    call    finish

second_eax_positive:
    movl    $-2147483648, eax
    call    writei32
    call    finish

third_eax_positive:
    movl    $2147483647, eax
    call    writei32
    call    finish
