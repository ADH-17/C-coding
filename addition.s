.global array_Add
.text

array_Add:

                                # rdi is the first array of integers
                                # rsi is the second array of integers
                                # rdx is the result
                                # rcx is the length of the arrays
                                # r12 is the index
                                # rax is what is returned

cmpq $0, %rcx                   # length - 0
jz _done                        # if length is 0 then it jumps to done

xorq %r12, %r12                 # make sure the index is set to 0 

_add: 
cmpq %rcx, %r12                 # index - size
jge _done                       # if size is = index or greater, be done

movl (%rdi, %r12, 4), %r13d     # move the value of the index of the first array into %r13d
movl (%rsi, %r12, 4), %r14d     # move the value of the second array at index to %r14d

addl %r14d , %r13d              # arr1[i] + arr2[i] stored in %r13
movl %r13d, (%rdx, %r12, 4)     # move the value into %rdx at the current index
incq %r12                       # incriment the index by one
jmp _add

_done:
movq %rdx, %rax                 # put return into %rax so it is returned
ret                             # returns %rax