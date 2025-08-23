.section    .text
.global _start
.type   _start, @function

_start: 
  addi x1, x0, 0x234 # Load x1 with value 4
  addi x2, x0, 4 # Load x2 with value 5
  sll  x3, x1, x2 # x3 <- x1 << x2 which is 0x2340 in this case

  ebreak