.section    .text
.global _start
.type   _start, @function

_start: 
  # sra --> shift right airthmatic
  # Positive Numbers
  addi x1, x0, 0x4 # Load x1 with value 4
  addi x2, x0, 0x1 # Load x2 with value 1
  
  sra  x3, x1, x2 # x3 <- x1 >> x2 (airthmatic)

  # Negative Numbers
  addi x1, x0, 0xfffffffffffffffe # Load x1 with value -2
  addi x2, x0, 0x1 # Load x2 with value 1

  sra  x3, x1, x2 # x3 <- x1 >> x2 (airthmatic)

  ebreak
