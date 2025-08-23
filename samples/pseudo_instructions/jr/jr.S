.section    .text
.global _start
.type   _start, @function

_start: 
# jr rs:
#       jalr x0, 0(rs)
  la x1, _jump
  jr x1
  # jalr	zero,0(ra)
  
  addi x2, x0, 0x123 # Load x1 with value 4
_jump: 
  addi x4, x0, 0x123 # Load x1 with value 4  

  ebreak
