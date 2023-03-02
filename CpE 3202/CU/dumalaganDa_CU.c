#include <stdio.h>
#include <conio.h>

// Instruction code
#define WM 0x01		
#define RM 0x02 	
#define BR 0x03 
#define RIO 0x04 	
#define WIO 0x05 	
#define WB 0x06 	
#define WIB 0x07 
#define EOP 0x1F 	

// Function prototypes
int CU(void);
void initMemory(void);

// Global variables
unsigned char dataMemory[2048];
unsigned char ioBuffer[32];

// Main function
int main(void) {
	initMemory(); 	// this function populates the memory
	if (CU() == 1) 	// check the return value
		printf("\n\nProgram run successfully!");
	else
		printf("\n\nError encountered, program terminated!");
	return 0;
}

// Memory initialization function
void initMemory(void) {
	printf("Initializing Main Memory...\n");
	/* WB - write data 0xFF to MBR */
	dataMemory[0x000] = 0x30; 
	dataMemory[0x001] = 0xFF;
	/* WM - writes data from MBR to memory address 0x400 */
	dataMemory[0x002] = 0x0C;
	dataMemory[0x003] = 0x00;
	/* RM - reads data at address 0x400 and store MBR */
	dataMemory[0x004] = 0x14;
	dataMemory[0x005] = 0x00;
	/* BR - branch to memory address 0x12A */
	dataMemory[0x006] = 0x19;
	dataMemory[0x007] = 0x2A;
	/* WIB - assigns the data (0x05) to IOBR */
	dataMemory[0x12A] = 0x38;
	dataMemory[0x12B] = 0x05;
	/* WIO - writes data 0x0A from IOBR to IO buffer address */
	dataMemory[0x12C] = 0x28;
	dataMemory[0x12D] = 0x0A;
	/* EOP - end of program */
	dataMemory[0x12E] = 0xF8;
	dataMemory[0x12F] = 0x00;
}

// Control unit function
int CU(void) {
    unsigned int PC = 0x000; 		// Program counter
    unsigned int IR = 0x0000; 		// Instruction register
    unsigned int MAR = 0x000; 		// Memory address register
    unsigned char MBR = 0x00; 		// Memory buffer register
    unsigned int IOAR = 0x000; 		// I/O address register
    unsigned char IOBR = 0x00; 		// I/O buffer register
    unsigned char inst_code = 0x00;	// 5-bit instruction code
    unsigned int operand = 0x000; 	// 11-bit operand
    int exitCode = 0;
    
    while (!exitCode) {
    	
    	printf("\n-----------------------------");
    	printf("\nPC\t\t  : 0x%03X", PC);
    	/* Fetching upper byte */
		IR = dataMemory[PC]; 	// get upper byte from memory pointed to by PC
		IR = IR << 8; 			// move the byte to the correct position
		PC++; 					// point to the address of the lower byte
		
		printf("\nFetching instruction...");
		/* Fetching lower byte */
		IR = IR | dataMemory[PC]; // get lower byte from memory pointed to by PC
		 						 // 16-bit instruction is now fetched
		PC++; 					 // points to the next instruction
		printf("\nIR\t\t  : 0x%04X", IR);
		
		/* Decoding instruction */
		inst_code = IR >> 11; 	// get the 5-bit instruction code
		operand = IR & 0x07FF; 	// get the 11-bit operand
		printf("\nOperand\t\t  : 0x%03X", operand);
		printf("\nInstruction\t  : ");
	
		/* WM instruction (write to memory) */
		if (inst_code == WM) {	
			printf("WM");
			MAR = operand; 				// load the operand of WM (memory address) to MAR
			dataMemory[MAR] = MBR; 		// data in MBR is written to memory address pointed to by MAR
			printf("\nWriting data to memory...");
			getch();
		}
		/* RM instruction (read from memory) */
		else if (inst_code == RM) {
			printf("RM");
			MAR = operand;
			printf("\nReading data from memory...");
			MBR = dataMemory[MAR];
			printf("\nMBR\t\t  : 0x%02X", MBR);
			getch();
		}
		/* BR instruction (branch) */
		else if (inst_code == BR) {
			printf("BR");
			PC = operand;
			printf("\nBranch to 0x%03X on next cycle", PC);
			getch();
		}
		/* RIO instruction (read from IO buffer) */
		else if (inst_code == RIO){
			printf("RIO");
			IOAR = operand;
			printf("\nReading from IO buffer...");
			IOBR = ioBuffer[IOAR];
			printf("\nIOBR\t\t  : 0x%02X", IOBR);
			getch();
		}
		/* WIO instruction (write to IO buffer) */
		else if (inst_code == WIO) { 
			printf("WIO");
			IOAR = operand; 		// load the operand of WIO (memory address) to IOAR
			printf("\nWriting to IO buffer...");
			ioBuffer[IOAR] = IOBR; 	// data in IOBR is written to memory address pointed to by IOAR
			printf("\nIOBR\t\t  : 0x%02X", IOBR);
			getch();
		}
		/* WB instruction (write data to MBR) */
		else if (inst_code == WB) {
			printf("WB");
			printf("\nLoading data to MBR...");
			MBR = dataMemory[PC-1];
			printf("\nMBR\t\t  : 0x%02X", MBR);
			getch();
		}
		/* WIB instruction (write data to IOBR) */
		else if (inst_code == WIB) {
			printf("\nLoading data to IOBR...");
			printf("WIB");
			IOBR = dataMemory[PC-1];
			printf("\nMBR\t\t  : 0x%02X", IOBR);
			getch();
		}
		/* EOP instruction (end of program) */
		else if (inst_code == EOP) {
			printf("EOP");
			exitCode = 1;
			printf("\nEnd of program.");
			getch();	
			return exitCode;		
		}
	}
}
