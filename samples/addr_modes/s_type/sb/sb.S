.section    .text
.global _start
.type   _start, @function

_start:  
  la ra, _negative_data
  lw sp, 0x0(ra)
  la gp, _store_data
  sb sp, 0x0(gp)
  lb tp, 0x0(gp)
  
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