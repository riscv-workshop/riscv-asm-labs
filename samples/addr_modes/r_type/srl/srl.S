.section    .text
.global _start
.type   _start, @function

_start: 
  # srl --> shift right logical
  # Positive Numbers
  addi x1, x0, 0x4 # Load x1 with value 4
  addi x2, x0, 0x1 # Load x2 with value 1
  
  srl  x3, x1, x2 # x3 <- x1 >> x2

  # Negative Numbers
  addi x1, x0, 0xffffffffffffffff # Load x1 with value -1
  addi x2, x0, 0x1 # Load x2 with value 1

  srl  x3, x1, x2 # x3 <- x1 >> x2

  ebreak
