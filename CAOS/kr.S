    .att_syntax    noprefix
    .global process
process:
    push    A
    push    B
    
    movl    B, eax
    sarl    $4, eax
    movl    eax, B
    
    movl    B, edx
    movl    A, eax

    subl    edx, eax
    movl    A, edx
    addl    edx, eax
    jo      die
    addl    edx, eax
    jo      die
    movl    eax, R
    
   
    pop     B
    pop     A
    ret

die:
    pop     B
    pop     A
    ret

.global A
.global B
.global R

    .data
A:
    .skip 4
B:
    .skip 4
R:
    .skip 4, 0
