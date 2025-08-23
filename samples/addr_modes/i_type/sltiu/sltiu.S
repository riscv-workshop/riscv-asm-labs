.section    .text
.global _start
.type   _start, @function

_start: 
  # sltiu --> set if less than immediate (UnSigned airthmatic)
  # Positive Numbers
  addi x1, x0, 0x4 # Load x1 with value 4
  sltiu x2, x1, 0x5 # x2 <- 1 if x2 < imm else x2 <- 0 
  sltiu x2, x1, 0x3 # x2 <- 1 if x2 < imm else x2 <- 0 
  
  addi x1, x0, 0xfffffffffffffffe # Load x1 with value unsigned 0xfffffffffffffffe
  sltiu x2, x1, 0xffffffffffffffff # x2 <- 1 if x2 < imm else x2 <- 0 
  sltiu x2, x1, 0xfffffffffffffffd # x2 <- 1 if x2 < imm else x2 <- 0  
  
  ebreak