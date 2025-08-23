.section    .text
.global _start
.type   _start, @function

_start: 
  addi ra, ra, 0
  beq ra, zero, _jump # branch if equal to -> Jump to _jump if contents of "ra" are equal to "zero"
  addi sp, sp, 0

_jump: 
  addi tp, zero, 0x123 # Load x1 with value 4  

  ebreak
