.section    .text
.global _start
.type   _start, @function

_start: 
# jal label:
#             jal x0, label

  jal _jump
  # jal	ra,1008 <_jump>

  addi x2, x0, 0x123 # Load x1 with value 4
_jump: 
  addi x4, x0, 0x123 # Load x1 with value 4  

  ebreak
