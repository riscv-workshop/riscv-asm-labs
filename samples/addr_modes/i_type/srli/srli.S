.section    .text
.global _start
.type   _start, @function

_start: 
  li x1, 0x55551111
  srli x2, x1, 0x04
  
  srli x2, x1, 0x20

  ebreak
