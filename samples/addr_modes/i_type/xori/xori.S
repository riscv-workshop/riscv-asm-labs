.section    .text
.global _start
.type   _start, @function

_start: 
  li x1, 0x55551111
  # imm value is positive no
  xori x2, x1, 0x0ff
  # imm value is sign extended no, 
  xori x2, x1, 0xfffffffffffff800

  ebreak
