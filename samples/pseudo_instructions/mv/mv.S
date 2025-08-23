.section    .text
.global _start
.type   _start, @function

_start: 
# mv rd, rs:
#           addi rd, rs, 0

  addi x2, x0, 3
  mv x3, x2
  # addi	gp,sp,0

  ebreak
