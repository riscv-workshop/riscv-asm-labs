.section    .text
.global _start
.type   _start, @function

_start: 
  addi x1, x0, 0x123 # Load x1 with value 4
  andi x2, x1, 0x123 # x2 <- x1 ^ 0x123
  ebreak
