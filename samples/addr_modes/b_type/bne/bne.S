.section    .text
.global _start
.type   _start, @function

_start: 
  addi x1, x0, 0
  addi x2, x0, 1
  bne x1, x2, _jump_1 
_bne_negative_l:
  addi x1, x0, 0xfffffffffffffffe
  addi x2, x0, 0xffffffffffffffff
  bne x1, x2, _jump_2
_bne_negative_g:
  ebreak

_jump_1: 
  addi x4, x0, 0x123 # Load x1 with value 4  
  beq x0, x0, _bne_negative_l
_jump_2: 
  addi x5, x0, 0x123 # Load x1 with value 4  
  beq x0, x0, _bne_negative_g

  ebreak
