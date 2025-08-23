.section    .text
.global _start
.type   _start, @function

_start:
  li x1, 0x123 
  li x2, 0x22 
  csrrs x1, mstatus, x2
  csrrc x1, mstatus, x2
  
  ebreak
