.global _array_product
.text
_array_product:
                                # rsi stores the size of the array
                                # rdi is the array
                                # rax is the value that we return for multiplying
                                # rcx is the index

    cmpl $0, %esi               # make sure array isn't 0
    jle _done

    movl $1, %eax               # make eax 1 as a default
    xorq %rcx,  %rcx            # rcx is 0 and is used as the index

    _mult: 
    cmpq %rcx, %rsi             # size - index
    jle _done                   # if size isn't larger than the index go to done

    movq (%rdi, %rcx, 4), %rdx  # moves the next value of %rdi to %rdx
    imulq %rdx, %rax            # multiplies two indexes
    incq %rcx                   # incriments index by one

    jmp _mult

    _done: 
    ret
        
       
