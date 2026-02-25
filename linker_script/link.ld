/* Specify the architecture and entry point */
OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY
{
    /* QEMU 'virt' machine RAM starts at 0x80000000 */
    RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 128M
}

SECTIONS
{
    /* .text section for code */
    .text : {
        *(.text.init)  /* Ensure boot code is first if specifically labeled */
        *(.text .text.*)
    } > RAM

    /* .rodata section for read-only data */
    .rodata : {
        . = ALIGN(4);
        *(.rodata .rodata.*)
    } > RAM

    /* .data section for initialized variables */
    .data : {
        . = ALIGN(4);
        *(.data .data.*)
    } > RAM

    /* .bss section for uninitialized variables */
    .bss : {
        . = ALIGN(4);
        _sbss = .;
        *(.bss .bss.*)
        *(COMMON)
        _ebss = .;
    } > RAM

    /* Define a stack at the end of RAM */
    PROVIDE(_stack_top = ORIGIN(RAM) + LENGTH(RAM));
}
