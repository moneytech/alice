.global gdt_flush
.type gdt_flush, @function
gdt_flush:
    mov     4(%esp),    %eax
    lgdt    (%eax)
    mov     $0x10,      %ax
    mov     %ax,        %ds
    mov     %ax,        %es
    mov     %ax,        %fs
    mov     %ax,        %ss

    ljmp    $0x08,      $.flush
.flush:
    ret

