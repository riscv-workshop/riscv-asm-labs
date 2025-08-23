.section    .text
.global _start
.type   _start, @function

_start: 
  la x1, _instr
  lb x2, 0x0(x1) # Load "H", ASCII value of H is 0x48
  lb x2, 0x1(x1) # Load "e", ASCII value of e is 0x65
  lb x2, 0x2(x1) # Load "l", ASCII value of l is 0x6c
  
  la x1, _negative_data
  lb x2, 0x0(x1)
  
  la x1, _positive_data
  lb x2, 0x0(x1)

  ebreak

.section    .data
_instr: 
      .asciz "Hello World.\n"
_negative_data:
      .word 0x88888888
_positive_data:
      .word 0x77777777