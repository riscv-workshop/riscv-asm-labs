MEMORY
{
 RAM (rwx): ORIGIN = 0x80000000, LENGTH = 0x5000
}

SECTIONS
{
  .text :
  {
    _text_start = .;
    *(.text)
    _text_end = .;
  } > RAM

  .sdata :
  {
    *(.sdata)
  } > RAM

  .rodata :
  {
    *(.rodata)
  } > RAM  

  .data :
  {
    _data_start = .;
    *(.data)
    . = ALIGN(8);
    _data_end = .;
  } > RAM  

  .bss :AT(_data_start + 0x800)
  {
    _bss_start = .;
    *(.bss)
    . = ALIGN(8);
    _bss_end = .;
  }>RAM
  __global_pointer$ = _data_start; 
}

_stack_start = 0x80001000;
_stack_end = 0x80002000;

