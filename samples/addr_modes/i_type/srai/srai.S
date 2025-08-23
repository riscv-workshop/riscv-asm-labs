.section    .text
.global _start
.type   _start, @function

_start: 
  li x1, 0x55551111
  srai x2, x1, 0x04
  srai x2, x1, 0x20

  li x1, 0xffffffff55551111
  srai x2, x1, 0x04
  srai x2, x1, 0x20
  
  ebreak
