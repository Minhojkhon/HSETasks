    .att_syntax    noprefix
    .global partition 
partition:
    movl    esi, right
    decl    right
    movl    $0, left
begin:
    //  если индексы совпадают, прекращаем работу
    movl    left, eax 
    // call    writei32
    cmpl    eax, right
    jz      end_task

    // получаем в cx элемент с индексом right
    movl    right, eax    
    movw    (ebx, eax, 2), cx
   
    // получаем в dx элемент с индексом left
    movl    left, eax 
    movw    (ebx, eax, 2), dx

   
   
    // movw    dx, ax
    // movswl  ax, eax
    // call    writei32

    // movw    cx, ax
    // movswl  ax, eax
    // call    writei32

    // сравниваем два элемента
    

    cmpw    di, dx
    jge     left_greater_than_pivot
    incl    left    
    jmp     begin

    
left_greater_than_pivot:
    // поменяли значение массива c right индексом на значение массива с left индексом
    movl    left, eax 
    movw    cx, (ebx, eax, 2)

    movl    right, eax    
    movw    dx, (ebx, eax, 2)

    // уменьшаем на 1 правую границу
    decl    right
    jmp     begin

end_task:
    movl    left, edx
    movw    (ebx, edx, 2), ax
    cmpw    ax, di
    jg      increase_mid
    ret 

increase_mid:
    incl    edx
    ret


    .data
left:
    .skip 4, 0
right:
    .skip 4, 0



// arr:
//     .int    5
//     .int    6
//     // 200 int elements
//     .skip   800

// main:
//     movl    $arr, %eax
//     movl    $4, 4(%eax) // 4 + %eax, поменяли 2 элемент начиная с 4 байта, берем только 4 байта так как прописали move long, а если прописать movw то берется 2 байта
//     movl    $4, (%eax, 1, 4) // тоже самое что и сверху
//     movl    4(%eax), 4(%eax, %ebx)

// xor     eax, eax
    // call    writei32
    // movw    (ebx), ax
    // movswl  ax, eax // sign - знаковое расширение, zero - беззнаковое расширение, word to long, есть еще byte to long
    // call    writei32

// 32 бит - 4 байта => long => movl => eax
    // 16 - 2 байта => word => movw => ax

// movl     $1, eax
    // cmpl     $1, eax
    // jz      end_task
    // call     finish