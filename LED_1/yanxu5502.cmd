MEMORY
{
    PAGE 0:

        MMR     : origin = 0000000h, length = 00000c0h 
        SPRAM   : origin = 00000c0h, length = 0000040
        VECS    : origin = 0000100h, length = 0000100h
        DARAM0  : origin = 0000200h, length = 0007E00h
        DARAM1  : origin = 0008000h, length = 0008000h
        
        CE0     : origin = 0010000h, length = 03f0000h 	/* ��ӦZBTRAM�ռ� */
        FLASH   : origin = 0400000h, length = 0100000h	/* Flash �ռ� */
        EXTEND	: origin = 0500000h, length = 0300000h	/* ״̬�����ƼĴ�����UARTA��UARTB��USB������չ��������Ӧ�Ŀռ� */
        CE2     : origin = 0800000h, length = 0400000h	/* SDRAM �ռ�*/
        CE3     : origin = 0c00000h, length = 03f8000h	/* SDRAM �ռ�*/

        PDROM   : origin = 0ff8000h, length = 07f00h	/* Ƭ��ROM�ռ� */
        
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
