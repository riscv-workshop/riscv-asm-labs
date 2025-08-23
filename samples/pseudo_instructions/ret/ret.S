.section    .text
.global _start
.type   _start, @function

_start: 
# ret:
#    jalr x0,0(x1)

  call _jump
  addi x2, x0, 0x123 # Load x1 with value 4
  ebreak
_jump: 
  addi x4, x0, 0x123 # Load x1 with value 4  
  ret

