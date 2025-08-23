.section    .text
.global _start
.type   _start, @function

_start: 
  addi x1, x0, 4 # Load x1 with value 4
  addi x2, x0, 5 # Load x2 with value 5
  sub  x3, x2, x1 # x3 <- x2 - x1 which is 1 in this case

  sub  x3, x1, x2 # x3 <- x1 - x2 which is -1 (register will show 0xffffffffffffffff, 2's compliment form of -1) in this case
  ebreak