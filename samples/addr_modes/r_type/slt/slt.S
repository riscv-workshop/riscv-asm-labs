.section    .text
.global _start
.type   _start, @function

_start: 
  # slt --> set if less than (Signed airthmatic)
  # Positive Numbers
  addi x1, x0, 0x4 # Load x1 with value 4
  addi x2, x0, 0x5 # Load x2 with value 5
  
  slt  x3, x1, x2 # x3 <- 1 if x1 < x2 else x3 <- 0

  slt  x3, x2, x1 # x3 <- 1 if x2 < x1 else x3 <- 0

  # Negative Numbers
  addi x1, x0, 0xffffffffffffffff # Load x1 with value -1
  addi x2, x0, 0xfffffffffffffffe # Load x1 with value -2
  slt  x3, x2, x1 # x3 <- 1 if x2 < x1 else x3 <- 0

  slt  x3, x1, x2 # x3 <- 1 if x1 < x2 else x3 <- 0

  ebreak