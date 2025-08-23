.section    .text
.global _start
.type   _start, @function

_start:  
# s{b|h|w} rd, label, rt:
#             auipc rt, ((label-.) >> U 12) + ((label-.) & 0x00000800 ? 1 : 0)
#             s{b|h|w} rd, ((label-(.-4)) & 0x00000fff)(rt)

  lb x1, _negative_data
  # auipc   ra,0x1
  # lb      ra,0(ra) # 2000 <__DATA_BEGIN__>
  sb x1, _store_data, x6
  # auipc   t1,0x7ffff
  # sb      ra,-8(t1) # 80000000 <_store_data>
  lb x2, _store_data
  # auipc   sp,0x7ffff
  # lb      sp,-16(sp) # 80000000 <_store_data>
  
  lh x1, _negative_data
  # auipc   ra,0x1
  # lh      ra,-24(ra) # 2000 <__DATA_BEGIN__>
  sh x1, _store_data, x6
  #auipc   t1,0x7ffff
  #sh      ra,-32(t1) # 80000000 <_store_data>
  lh x2, _store_data
  #auipc   sp,0x7ffff
  #lh      sp,-40(sp) # 80000000 <_store_data>    

  lw x1, _negative_data
  # auipc   ra,0x1
  # lw      ra,-48(ra) # 2000 <__DATA_BEGIN__>
  sw x1, _store_data, x6
  # auipc   t1,0x7ffff
  # sw      ra,-56(t1) # 80000000 <_store_data>
  lw x2, _store_data
  # auipc   sp,0x7ffff
  # lw      sp,-64(sp) # 80000000 <_store_data>  

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