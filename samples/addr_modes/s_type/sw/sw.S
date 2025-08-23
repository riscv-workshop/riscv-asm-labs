.section    .text
.global _start
.type   _start, @function

_start:  
  la x1, _negative_data
  lw x2, 0x0(x1)
  la x3, _store_data
  sw x2, 0x0(x3)
  lw x4, 0x0(x3)
  
  ebreak

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