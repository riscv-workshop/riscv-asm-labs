.section    .text
.global _start
.type   _start, @function

_start: 
# call label:
#             auipc x1, ((label-.) >> U 12) + ((label-.) & 0x00000800 ? 1 : 0)
#             jalr x1, ((label-(.-4)) & 0x00000fff)(x1)

  call _jump
  # auipc   ra,0x0
  # jalr    12(ra) # 100c <_jump>

  addi x2, x0, 0x123 # Load x1 with value 4
_jump: 
  addi x4, x0, 0x123 # Load x1 with value 4  

  ebreak
