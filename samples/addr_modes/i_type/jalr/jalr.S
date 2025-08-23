.section    .text
.global _start
.type   _start, @function

_start: 
  la x1, _jump
  jalr x3, 0(x1) # jalr -> Jump and Link Register
  addi x2, x0, 0x123 # Load x1 with value 4
_jump: 
  addi x4, x0, 0x123 # Load x1 with value 4  

  ebreak
