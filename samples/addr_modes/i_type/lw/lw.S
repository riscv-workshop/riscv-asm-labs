.section    .text
.global _start
.type   _start, @function

_start: 
  la x1, _instr
  lw x2, 0x0(x1) # Load "H", ASCII value of H is 0x48
  lw x2, 0x4(x1) # Load "o", ASCII value of H is 0x6f

  la x1, _negative_data
  lh x2, 0x0(x1)
  
  la x1, _positive_data
  lh x2, 0x0(x1)
  
  ebreak

.section    .data
_instr: 
      .asciz "Hello World.\n"
_negative_data:
      .word 0x88888888
_positive_data:
      .word 0x77777777
