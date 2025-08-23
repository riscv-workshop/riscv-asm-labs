.section    .text
.global _start
.type   _start, @function

_start: 
  addi x1, x0, 0
  addi x2, x0, 1
  bltu x1, x2, _jump_1 
_bltu_positive_g:
  bltu x2, x1, _jump_1
_bltu_negative_l:
  addi x1, x0, 0xfffffffffffffffe
  addi x2, x0, 0xffffffffffffffff
  bltu x1, x2, _jump_2
_bltu_negative_g:
  bltu x2, x1, _jump_2

  ebreak

_jump_1: 
  addi x4, x0, 0x123 # Load x1 with value 4  
  beq x0, x0, _bltu_positive_g
_jump_2: 
  addi x5, x0, 0x123 # Load x1 with value 4  
  beq x0, x0, _bltu_negative_g

  ebreak
