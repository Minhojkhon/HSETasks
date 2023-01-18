    .text
process: 
    movl    $32, temp
    push    A
    push    B
begin:
    mov     temp, %eax
    test    %eax, %eax 
    jz      end_task
    decl    temp

    shrl    $1, B
    jc      add_to_result 
    shll    $1, A
    jmp     begin

add_to_result:
    movl     A, %eax
    addl     %eax, R
    shll    $1, A
    jmp     begin
    
end_task:
    pop     B
    pop     A
    ret 



    .data
A:
    .skip 4
B:
    .skip 4
R:
    .skip 4, 0
temp:
    .skip 4, 0

    .global A
    .global B
    .global R
    .global process


