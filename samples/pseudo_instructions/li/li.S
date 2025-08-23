.section    .text
.global _start
.type   _start, @function

_start: 
  # li rd, constant:
  #             lui rd, (constant >> U 12) + (constant & 0x00000800 ? 1 : 0)
  #             addiw rd, rd, (constant & 0x00000fff)
  li x1, 0x12345876
  # lui	ra,0x12346
  #	addiw	ra,ra,-1930
  li x2, 0x12345678
  # lui	sp,0x12345
  #	addiw	sp,sp,1656
  
  ebreak
