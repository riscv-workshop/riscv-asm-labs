.section    .text
.global _start
.type   _start, @function

_start: 
  addi ra, zero, 4 # Load x1 with value 4
  addi sp, zero, 5 # Load x2 with value 5
  add  gp, ra, sp # x3 <- x1 + x2 which is 9 in this case
  ebreak