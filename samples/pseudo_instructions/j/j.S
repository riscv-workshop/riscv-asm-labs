.section    .text
.global _start
.type   _start, @function

_start: 
# j label:
#             jal x0, label

  j _jump
  # auipc	ra,0x0
  #	jalr	ra,12(ra) # 100c <_jump>

  addi x2, x0, 0x123 # Load x1 with value 4
_jump: 
  addi x4, x0, 0x123 # Load x1 with value 4  

  ebreak
