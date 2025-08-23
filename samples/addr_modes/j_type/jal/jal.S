#jal, jump and link
.section    .text
.global _start
.type   _start, @function

_start: 
  addi ra, zero, 1  # No relevence of this code other than mitigating VSCode issues with debugger
  jal gp, _jump # jal -> Jump and Link 
  addi sp, zero, 0x123 # Load sp with value 0x123
  ebreak
_jump: 
  addi tp, zero, 0x123 # Load tp with value 0x123
  ebreak
