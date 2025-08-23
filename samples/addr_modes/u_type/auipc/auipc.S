# auipc, Add Upper Immediate to Program Counter
.section    .text
.global _start
.type   _start, @function

_start: 
  auipc x1,0x12345
  
  ebreak
