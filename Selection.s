.global _selection_sort
.text

_selection_sort:
                                # rdi = array pointer
                                # rsi = length
                                # r9  = index i (outer loop)
                                # r10 = index j (inner loop)
                                # r11 = value at index i (smallest value)
                                # r12 = value at index j
                                # r13 = smallest index value
                                # r14 = temporary variable for swap
                                # r15 = value at index i

    movq $0, %r9                # Initialize index i to 0
    subq $1, %rsi               # Adjust length to match (length - 1)

_forI:                          # Outer loop for index i
    cmpq %rsi, %r9              # Compare i with (length - 1)
    jg _done                    # If i > length - 1, we're done

    # Initialize smallest value and index
    movq (%rdi, %r9, 4), %r15   # Load value at i into r15 (smallest value)
    movq %r9, %r13              # Set smallest index to i

    movq %r9, %r10              # j = i
    addq $1, %r10               # Increment j by 1 (start from i + 1)

_forJ:                          # Inner loop for index j
    cmpq %rsi, %r10             # Compare j with length
    jg _swap                    # If j >= length, swap and go to next iteration

    movq (%rdi, %r10, 4), %r12  # Load value at j
    cmpq %r12, %r15             # Compare arr[j] with smallest value
    jge _nextJ                  # If arr[j] >= smallest value, continue inner loop

    movq %r10, %r13             # Update smallest index to j
    movq %r12, %r15             # Update smallest value to arr[j]

_nextJ:                         # Continue inner loop
    addq $1, %r10               # Increment j
    cmpq %rsi, %r10             # Compare j with length
    jl _forJ                    # Continue inner loop if j < length

_swap:                          # Swap values if needed
    cmpq %r9, %r13              # If i == smallestIndex, skip swap
    je _nextI                   # If indices are the same, skip swap

    movq (%rdi, %r9, 4), %r14   # Load value at i into temp
    movq %r15, (%rdi, %r9, 4)   # Store smallest value at index i
    movq %r14, (%rdi, %r13, 4)  # Store temp value at smallest index

_nextI:                         # Go back to outer loop
    addq $1, %r9                # Increment index i
    jmp _forI                   # Continue outer loop

_done:
    ret
