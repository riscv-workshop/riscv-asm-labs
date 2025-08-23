.section    .text
.global _start
.type   _start, @function

_start:  
  lw x1, _negative_data
  sw x1, _store_data, x2
  la x3, _store_data
  lr.w x4, (x3)
  call _jump
  li x5, 0x12
  sc.w x6, x5, (x3)

  lr.d x4, (x3)
  call _jump
  li x5, 0x1234
  sc.d x6, x5, (x3)

  ebreak

_jump: 
  addi x7, x0, 0x123 # Load x1 with value 4  
  ret

.section    .data
#_instr: 
#      .asciz "Hello World.\n"
_negative_data:
      .word 0x88888888
_positive_data:
      .word 0x77777777

.section    .bss      
_store_data:
          .space 4