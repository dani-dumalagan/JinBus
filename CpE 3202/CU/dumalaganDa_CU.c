#include <stdio.h>

#define WM 0x0800 // write to memory
#define RM 0x1000 // read from memory
#define BR 0x1800 // branch
#define RIO 0x2000 // read from IO buffer
#define WIO 0x2100 // write to IO buffer
#define WB 0x3000 // write data to MBR
#define WIB 0x3800 // wire data for IOBR
#define EOP 0xF800 // end of program

void main(void)
{
	initMemory(); // this function populates the memory
	if (CU() == 1) // check the return value
		printf(“Program run successfully!”);
	else
		print(“Error encountered, program terminated!”);
}

int CU() {
    unsigned char PC = 0x000; // Program counter
    unsigned char MAR = 0x000; // Memory address register
    unsigned char IO_AR = 0x000; // I/O address register
    
    unsigned char IR = 0x0000; // Instruction register
    
    unsigned char MBR = 0x00; // Memory buffer register
    unsigned char IO_BR = 0x00; // I/O buffer register
    
    unsigned char memory[11] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
    unsigned char programMemory = 0x000;
    unsigned int dataMemory = 0x400;
    unsigned char ioBuffer[5] = {0x00, 0x00, 0x00, 0x00, 0x00};
    unsigned char ioBufferStartAddress = 0x000;
    
}

/* fetching upper byte */
IR = dataMemory[PC]; // get upper byte from memory pointed to by PC
IR = IR << 8; // move the byte to the correct position
PC++; // point to the address of the lower byte
/* fetching lower byte */
IR = IR | dataMemory[PC] // get lower byte from memory pointed to by PC
// 16-bit instruction is now fetched
PC++; // points to the next instruction

/* decoding instruction */
inst_code = IR >> 11; // get the 5-bit instruction code
operand = IR & 0x07FF; // get the 11-bit operand

if(inst_code==0x01) // WM instruction (write to memory)
{
MAR = operand; // load the operand of WM (memory address) to MAR
dataMemory[MAR] = MBR; // data in MBR is written to memory address pointed
// to by MAR
}


else if (inst_code==0x05) // WIO instruction (write to I/O buffer)
{
IOAR = operand; // load the operand of WIO (memory address) to IOAR
ioBuffer[IOAR] = IOBR; // data in IOBR is written to memory address pointed
// to by IOAR
}

void initMemory(void)
{
dataMemory[0x000] = 0x30; // WB - write data 0xFF to MBR
dataMemory[0x001] = 0xFF;
…
…
}

