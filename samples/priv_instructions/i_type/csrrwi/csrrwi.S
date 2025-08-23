.section    .text
.global _start
.type   _start, @function

_start:
  li x1, 0x123 
  csrrwi x1, mstatus, 0x2 # Load x1 with old value of misa and load misa with value of x2 in atomic way
  
  ebreak
