.section    .text
.global _start
.type   _start, @function

_start:  
  # la rd, label:
  #             auipc rd, ((label-.) >> U 12) + ((label-.) & 0x00000800 ? 1 : 0)
  #             addi rd, rd, ((label-(.-4)) & 0x00000fff)
  la x1, _negative_data
  #          	auipc	ra,0x1
  #          	addi	ra,ra,12 # 200c <__DATA_BEGIN__>
  
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