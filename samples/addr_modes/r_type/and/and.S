.section    .text
.global _start
.type   _start, @function

_start: 
  addi x1, x0, 0xfffffffffffffffe # Load x1 with value -2
  addi x2, x0, 0xffffffffffffffff # Load x2 with value -1

  and  x3, x1, x2 # x3 <- x1 & x2

  ebreak
