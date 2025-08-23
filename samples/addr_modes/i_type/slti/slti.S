.section    .text
.global _start
.type   _start, @function

_start: 
  # slti --> set if less than immediate (Signed airthmatic)
  # Positive Numbers
  addi x1, x0, 0x4 # Load x1 with value 4
  slti x2, x1, 0x5 # x2 <- 1 if x1 < imm else x2 <- 0
  slti x2, x1, 0x3 # x2 <- 1 if x1 < imm else x2 <- 0
  
  # Negative Numbers
  addi x1, x0, -1 # Load x1 with value -1
  slti x2, x1, 0x0 # x2 <- 1 if x1 < imm else x2 <- 0
  slti x2, x1, -2 # x2 <- 1 if x1 < imm else x2 <- 0
  
  ebreak