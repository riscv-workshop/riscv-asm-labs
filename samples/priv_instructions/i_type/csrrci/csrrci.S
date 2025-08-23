.section    .text
.global _start
.type   _start, @function

_start:
  li x1, 0x123 
  csrrsi x1, mstatus, 0x2
  csrrci x1, mstatus, 0x2
  
  ebreak
