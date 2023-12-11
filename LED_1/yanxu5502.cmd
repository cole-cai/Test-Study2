MEMORY
{
    PAGE 0:

        MMR     : origin = 0000000h, length = 00000c0h 
        SPRAM   : origin = 00000c0h, length = 0000040
        VECS    : origin = 0000100h, length = 0000100h
        DARAM0  : origin = 0000200h, length = 0007E00h
        DARAM1  : origin = 0008000h, length = 0008000h
        
        CE0     : origin = 0010000h, length = 03f0000h 	/* 对应ZBTRAM空间 */
        FLASH   : origin = 0400000h, length = 0100000h	/* Flash 空间 */
        EXTEND	: origin = 0500000h, length = 0300000h	/* 状态／控制寄存器、UARTA、UARTB、USB、和扩展总线所对应的空间 */
        CE2     : origin = 0800000h, length = 0400000h	/* SDRAM 空间*/
        CE3     : origin = 0c00000h, length = 03f8000h	/* SDRAM 空间*/

        PDROM   : origin = 0ff8000h, length = 07f00h	/* 片上ROM空间 */
        
        RESET_VECS  : origin = 0ffff00h, length = 00100h  /* reset vector */
}       

 
SECTIONS
{
        .vectors  : {} > VECS  PAGE 0         /* interrupt vector table */
        .cinit   : {} > DARAM1 PAGE 0
        .text    : {} > DARAM1 PAGE 0
        
        .stack   : {} > DARAM0 PAGE 0
        .sysstack: {} > DARAM0 PAGE 0
        .sysmem  : {} > DARAM0 PAGE 0
        .cio     : {} > DARAM1 PAGE 0
        .data    : {} > DARAM1 PAGE 0
        .bss     : {} > DARAM1 PAGE 0
        .const   : {} > DARAM1 PAGE 0

        .csldata:  {} > DARAM0   PAGE 0 
        dmaMem:   {} > DARAM0 PAGE 0
}
