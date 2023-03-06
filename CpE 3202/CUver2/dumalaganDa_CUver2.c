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
//	ADDR = MAR;

void MainMemory() {
	if (IOM == 1) {
		if (RW == 0 && OE == 1) 		// memory read
			BUS = dataMemory[ADDR];
		else if (RW == 1 && OE == 1) 	// memory write
			MainMemory[ADDR] = BUS;
	}
}

void IOMemory() {
	if (IOM == 1) {
		if (RW == 0 && OE == 1) 		// memory read
			BUS = dataMemory[ADDR];
		else if (RW == 1 && OE == 1) 	// memory write
			MainMemory[ADDR] = BUS;
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


