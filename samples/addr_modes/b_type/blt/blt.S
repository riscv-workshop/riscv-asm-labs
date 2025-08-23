.section    .text
.global _start
.type   _start, @function

_start: 
  addi x1, x0, 0
  addi x2, x0, 1
  blt x1, x2, _jump_1 
_blt_positive_g:
  blt x2, x1, _jump_1
_blt_negative_l:
  addi x1, x0, -2
  addi x2, x0, -1
  blt x1, x2, _jump_2
_blt_negative_g:
  blt x2, x1, _jump_2

  ebreak

_jump_1: 
  addi x4, x0, 0x123 # Load x1 with value 4  
  beq x0, x0, _blt_positive_g
_jump_2: 
  addi x5, x0, 0x123 # Load x1 with value 4  
  beq x0, x0, _blt_negative_g

  ebreak
