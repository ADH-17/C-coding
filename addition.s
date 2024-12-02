.global array_Add
.text

array_Add:

                            # rdi is the first array of integers
                            # rsi is the second array of integers
                            # rdx is the result
                            # rcx is the length of the arrays
                            # r12 is the index

cmpq $0, %rcx               # length - 0
jz _done                    # jump to done if length is 0

movl $0, %eax               # Set default value as 0 
xorq %r12, %r12             # make sure the index is set to 0 

_add: 
cmpq %rcx, %r12             # size - index
jge _done                   # if size is = index or less, be done

movq (%rdi, %r12, 8), %r13  # move the value of the index of the first array into %r13
movq (%rsi, %r12, 8), %r14  # move the value of the second array at index to %r14

addq %r14 , %r13            # arr1[i] + arr2[i] stored in %r13
movq %r13, (%rax, %r12, 8)  # move the value into %rax at the current index
incq %r12                   # incriment the index by one
jmp _add

_done:
    ret                     # returns %rax