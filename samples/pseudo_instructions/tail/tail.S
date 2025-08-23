.section    .text
.global _start
.type   _start, @function

_start: 
# tail label:
#             auipc rt, ((label-.) >> U 12) + ((label-.) & 0x00000800 ? 1 : 0)
#             jalr x0, ((label-(.-4)) & 0x00000fff)(rt)

  tail _jump
  # auipc	t1,0x0
  #	jalr	zero,12(t1) # 100c <_jump>
  
  addi x2, x0, 0x123 # Load x1 with value 4
_jump: 
  addi x4, x0, 0x123 # Load x1 with value 4  

  ebreak
