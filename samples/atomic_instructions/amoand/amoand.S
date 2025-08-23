.section    .text
.global _start
.type   _start, @function

_start:  
  lw x1, _negative_data
  sw x1, _store_data, x2
  la x3, _store_data
  li x4, 0x8888
  amoand.w x5, x4, (x3)

  lw x1, _negative_data
  sw x1, _store_data, x2
  la x3, _store_data
  li x4, 0x8888
  amoand.d x5, x4, (x3)

  ebreak

.section    .data
#_instr: 
#      .asciz "Hello World.\n"
_negative_data:
      .word 0x88888888
      .word 0x88888888
_positive_data:
      .word 0x77777777

.section    .bss      
_store_data:
          .space 8