.option push
.option norelax
    la     gp,__global_pointer$
.option pop
    la     sp,_stack_end
    la     t3,_stack_start
    li     t4,0xFE
    li     t1,0x1
_stack_loop_start:
    sb     t4,0(sp)
    beq    sp,t3,_stack_loop_end
    add    sp,sp,t1 
    j      _stack_loop_start
_stack_loop_end:
    la     t3,_bss_start
    la     t4,_bss_end
_bss_loop_start:
    beq    t3,t4,_bss_loop_end
    sb     zero,0(t3)
    add    t3,t3,t1 
    j      _bss_loop_start
_bss_loop_end:
    jal    x1,main
    ebreak 
     
        

