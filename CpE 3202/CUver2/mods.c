#include <stdio.h>
#include <conio.h>

// Global variables
unsigned int ADDR = 0x000; 
unsigned char BUS = 0x00; 	
unsigned char CONTROL = 0x00;
unsigned char IOM = 0x00;
unsigned char RW = 0x00;

// Local variables -> Internal control signals
int Fetch;
int IO;
int Memory;

int OE; // signal start of read operation
/*
OE = 1; requires access to main or IO memory or any bus operations
OE = 0;
*/

MainMemory();
if (Fetch == 1)
	IR = BUS;

void MainMemory() {
	if (IOM == 1) {
		if (RW == 0 && OE == 1) 		// memory read
			BUS = dataMemory[ADDR];
		else if (RW == 1 && OE == 1) 	// memory write
			dataMemory[ADDR] = BUS;
	}
}

void IOMemory() {
	if (IOM == 0) {
		if (RW == 0 && OE == 1) 		// I/O read
			BUS = ioBuffer[ADDR];
		else if (RW == 1 && OE == 1) 	// I/O write
			ioBuffer[ADDR] = BUS;
	}
}

	/* Setting external control signals */
	CONTROL = inst_code;	// setting the control signals
	IOM = 1; 				// Main Memory access
	RW = 0; 				// read operation (fetch)
	OE = 1; 				// allow data movement to/from memory
	
	/* Fetching Instruction (2 cycle) */
	Fetch = 1; 	// set local control signal Fetch to 1 to signify fetch operation
	I/O = 0;
	Memory = 0;
	
	/* Fetching the upper byte */
	ADDR = PC;
	MainMemory(); 		// fetch upper byte
	if (Fetch == 1) {
		IR = (int) BUS;	// load instruction to IR
		IR = IR << 8; 	// shift IR 8 bits to the left
		PC++; 			// points to the lower byte
		ADDR = PC; 		// update address bus
	}
	/* Fetching the lower byte */
	MainMemory(); 		// fetch lower byte
	if (Fetch == 1) {
		IR = IR | BUS;	// load the instruction on bus to lower 8 bits of IR
		PC++; 			// points to the next instruction
	}
	/* Instruction Decode */
	
	
	/* Write to Memory */
	if (inst_code == 0x0001) { 	// check instruction code if WM
		MAR = operand; 			// load the operand to MAR (address)
		
		/* Setting local control signals */
		Fetch = 0;
		Memory = 1; 			// accessing memory
		IO = 0;
		
		/* Setting external control signals */
		CONTROL = inst_code; 	// setting the control signals
		IOM = 1; 				// Main Memory access
		RW = 1; 				// write operation
		OE = 1; 				// allow data movement to/from memory
		ADDR = MAR; 			// load MAR to Address Bus
		if (Memory)
			BUS = MBR; 			// MBR owns the bus since control signal Memory is 1
		MainMemory(); 			// write data in data bus to memory
		
		/* Echo */
	}


		/* WM instruction (write to memory given a memory address) */
		if (inst_code == WM) {	
			printf("WM");
			MAR = operand; 				// load the operand of WM (memory address) to MAR

			/* Setting local control signals */
			Fetch = 0;
			Memory = 1; 			// accessing memory
			IO = 0;
		
			/* Setting external control signals */
			CONTROL = inst_code; 	// setting the control signals
			IOM = 1; 				// Main Memory access
			RW = 1; 				// write operation
			OE = 1; 				// allow data movement to/from memory

			ADDR = MAR; 			// load MAR to Address Bus
			if (Memory)
				BUS = MBR; 			// MBR owns the bus since control signal Memory is 1
			MainMemory(); 			// write data in data bus to memory
			
			/* Echo */
			
			getch();
		}
		/* RM instruction (read from memory given a memory address) */
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
		/* RIO instruction (read from IO buffer given a memory address) */
		else if (inst_code == RIO){
			printf("RIO");
			IOAR = operand;
			printf("\nReading from IO buffer...");
			IOBR = ioBuffer[IOAR];
			printf("\nIOBR\t\t  : 0x%02X", IOBR);
			getch();
		}
		/* WIO instruction (write to IO buffer given a memory address) */
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