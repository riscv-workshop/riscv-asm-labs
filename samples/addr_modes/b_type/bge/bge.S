.section    .text
.global _start
.type   _start, @function

_start: 
  addi x1, x0, 5
  addi x2, x0, 4
_bge_positive_g:  
  bge x1, x2, _jump_1
_bge_positive_e:    
  addi x1, x0, 5
  bge x1, x2, _jump_2
_bge_positive_l:
  addi x1, x0, 5  
  bge x2, x1, _jump_2
_bge_negative_g:  
  addi x1, x0, -1
  addi x2, x0, -2
  bge x1, x2, _jump_3
_bge_negative_e:  
  addi x1, x0, -2
  addi x2, x0, -2
  bge x1, x2, _jump_4
_bge_negative_l:  
  addi x1, x0, -1
  addi x2, x0, -2
  bge x2, x1, _jump_4

  ebreak

_jump_1: 
  addi x4, x0, 0x123 
  beq x0, x0, _bge_positive_e
_jump_2: 
  addi x5, x0, 0x123 
  beq x0, x0, _bge_positive_l
_jump_3: 
  addi x6, x0, 0x123 
  beq x0, x0, _bge_negative_e
_jump_4: 
  addi x7, x0, 0x123 
  beq x0, x0, _bge_negative_l

  ebreak

