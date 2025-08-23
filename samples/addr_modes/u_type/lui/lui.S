# lui, Load Upper Immediate
.section    .text
.global _start
.type   _start, @function

_start: 
  lui ra, 0x12345
  
  ebreak
