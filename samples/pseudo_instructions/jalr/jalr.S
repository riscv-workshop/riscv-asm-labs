.section    .text
.global _start
.type   _start, @function

_start: 
# jalr rs:
#       jalr x1,0(rs)

  la x2, _jump
  jalr x2
  # jalr	ra,0(sp)
  
  addi x2, x0, 0x123 # Load x1 with value 4
_jump: 
  addi x4, x0, 0x123 # Load x1 with value 4  

  ebreak
