.section    .text
.global _start
.type   _start, @function

_start: 
  li x1, 0x55551111
  # imm value is positive no
  ori x2, x1, 0x0ff
  # imm value is sign extended no, 
  ori x2, x1, 0xfffffffffffff800

  ebreak
