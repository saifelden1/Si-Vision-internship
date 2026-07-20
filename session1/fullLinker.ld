/* Full standalone GNU ld linker script for a simple MinGW/GCC x86_64 build. */
/* Includes a custom .sivision output section. */

OUTPUT_FORMAT(pei-x86-64)
OUTPUT_ARCH(i386:x86-64)
ENTRY(main)

SECTIONS
{
  /* Image base and standard PE alignment values. */
  . = SIZEOF_HEADERS;
  . = ALIGN(4096);

  .text :
  {
    *(.text.unlikely)
    *(.text.startup)
    *(.text.hot)
    *(.text .text.*)
    *(.gnu.linkonce.t.*)
  }

  .pdata :
  {
    *(.pdata)
    *(.pdata.*)
  }

  .xdata :
  {
    *(.xdata)
    *(.xdata.*)
  }

  .rdata :
  {
    *(.rdata .rdata.*)
    *(.rodata .rodata.*)
    *(.gnu.linkonce.r.*)
  }

  .sivision :
  {
    KEEP(*(.sivision))
    KEEP(*(.sivision.*))
  }

  .data :
  {
    *(.data)
    *(.data.*)
    *(.gnu.linkonce.d.*)
    SORT(CONSTRUCTORS)
  }

  .bss :
  {
    *(.bss)
    *(.bss.*)
    *(COMMON)
  }

  .tls :
  {
    *(.tls)
    *(.tls.*)
  }

  .CRT :
  {
    *(.CRT$XIA)
    *(.CRT$XIAA)
    *(.CRT$XIZ)
    *(.CRT$XLA)
    *(.CRT$XLZ)
    *(.CRT$XCA)
    *(.CRT$XCZ)
    *(.CRT$XDA)
    *(.CRT$XDZ)
    *(.CRT$XPA)
    *(.CRT$XPZ)
    *(.CRT$XTA)
    *(.CRT$XTZ)
    *(.CRT$XCU)
    *(.CRT$XLC)
    *(.CRT$XLD)
    *(.CRT$XLB)
    *(.CRT$XLF)
    *(.CRT$XLU)
  }

  .idata :
  {
    *(.idata)
    *(.idata.*)
  }

  .reloc :
  {
    *(.reloc)
    *(.reloc.*)
  }

  /DISCARD/ :
  {
    *(.note*)
    *(.comment*)
    *(.eh_frame*)
    *(.eh_frame.*)
  }
}