.section    .text
.global _start
.type   _start, @function

_start:  
# l{b|h|w} rd, label:
#             auipc rd, ((label-.) >> U 12) + ((label-.) & 0x00000800 ? 1 : 0)
#             l{b|h|w} rd, ((label-(.-4)) & 0x00000fff)(rd)

  lb x1, _negative_data
  #           auipc ra,0x1
  #           lb ra,28(ra) # 201c <__DATA_BEGIN__>
  lh x2, _negative_data
  #           auipc sp,0x1
  #           lh sp,20(sp) # 201c <__DATA_BEGIN__>
  lw x3, _negative_data
  #        	  auipc gp,0x1
  #       	  lw gp,12(gp) # 201c <__DATA_BEGIN__>
  
  ebreak

.section    .data
#_instr: 
#      .asciz "Hello World.\n"
_negative_data:
      .word 0x88888888
_positive_data:
      .word 0x77777777

.section    .bss      
_store_data:
          .space 4