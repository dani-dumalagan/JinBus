/* ============================================================================ 
FILE       			: ACAIN_CUver2.c
AUTHOR   			: Jhaycee Anthony P. Acain
DESCRIPTION 		: The program that sets up an CU using C that can perform operation 
					to emulate the function of a control unit using C/C++ program
REVISION HISTORY  
Date:			 	By:          				Description:  
Revision Date		Jhaycee Anthony P. Acain	Revision Description
============================================================================ */
//Header files
#include <stdio.h>

//function prototype
void initMemory (void);
int CU (void);
void MainMemory(void);
void IOMemory(void);

//global variable
unsigned int dataMemory[1024];
unsigned int ioBuffer[32];
unsigned int ADDR = 0X00, BUS = 0X00, IOM = 0, RW = 0, OE =0, CONTROL = 0X00;

/* ============================================================================ 
FUNCTION    	: Main
DESCRIPTION 	: The main function of the ACAIN_CU.c program.
ARGUMENTS   	: 
	Void   
RETURNS     	: void
=========================================================================== */
void main(void)
 {
	initMemory(); 			 				// this function populates the memory
	printf("Initializing Main Memory...");
	
	if(CU()==1) 			  				// check the return value
		printf("Program run successfully!");
	else
		printf("Error encountered, program terminated!");
 }
 
/* ============================================================================ 
FUNCTION    	: initMemory
DESCRIPTION 	: Perform operation to emulate the function of an Initialization 
				of Memory on the control unit using C/C++ program
ARGUMENTS   	: 
	Void   
RETURNS     	: void - returns 0 to exit 
=========================================================================== */
 void initMemory(void)
 {
	dataMemory[0x000] = 0x30; 				// WB - assigns the data “1111 1111” (0xFF) to MBR
	dataMemory[0x001] = 0xFF;
	dataMemory[0x002] = 0x0C;				// WM - writes data from MBR to memory address “100 0000 0000B” (0x400)
	dataMemory[0x003] = 0x00;
	dataMemory[0x004] = 0x14; 				// RM - reads data at address “100 0000 0000” (0x400) and store MBR
	dataMemory[0x005] = 0x00;
	dataMemory[0x006] = 0x19; 				// BR - branch to memory address “001 0010 1010” (0x12A)
	dataMemory[0x007] = 0x2A;
	
	dataMemory[0x12A] = 0x38; 				// WB - assigns the data “0000 0101” (0x05) to IOBR
	dataMemory[0x12B] = 0x05;
	dataMemory[0x12C] = 0x28; 				// W/IO - writes data from IOBR to IO buffer address “0 1010” (0x0A)
	dataMemory[0x12D] = 0x0A;
	dataMemory[0x12E] = 0xF8; 				// EOP - end of program
	dataMemory[0x12F] = 0x00;
 }

/* ============================================================================ 
FUNCTION    	: MainMemory
DESCRIPTION 	: Perform operation to emulate the function of a Main Memory 
				in the control unit using C/C++ program
ARGUMENTS   	: 
	Void   
RETURNS     	: void - returns 0 to exit 
=========================================================================== */
void MainMemory(void) {
	if(IOM==1){
		if(RW==0 && OE==1) 					// memory read
			BUS = dataMemory[ADDR];
		else if(RW==1 && OE==1) 			// memory write
		 	dataMemory[ADDR] = BUS;
	 }
}

/* ============================================================================ 
FUNCTION    	: IOMemory
DESCRIPTION 	: Perform operation to emulate the function of an I/O Buffer 
				in the control unit using C/C++ program
ARGUMENTS   	: 
	Void   
RETURNS     	: void - returns 0 to exit 
=========================================================================== */
void IOMemory(void) {
	if(IOM == 0) {			 				//check if IOM = 0 
		if(RW==0 && OE==1)					// IO read  
			BUS = ioBuffer[ADDR];
		else if(RW==1 && OE==1) 			// IO write
			ioBuffer[ADDR] = BUS; 	 
	} 
}

/* ============================================================================ 
FUNCTION    	: CU
DESCRIPTION 	: Perform operation to emulate the function of a control unit 
				using C/C++ program
ARGUMENTS   	: 
	Void   
RETURNS     	: int - returns 1 to exit 
=========================================================================== */
 int CU(void){
 	unsigned int PC = 0x000, IR = 0x0000, MAR = 0x00, MBR = 0x00, IOAR = 0x00, 
	 			 IOBR = 0x00, inst_code = 0x00, operand = 0x00;
	int exit = 0;
	
	unsigned int Fetch = 0, IO = 0, Memory = 0;
	
	printf("\n\n****************************");
	
	while (1){
		if (PC < 10)
			printf("\nPC \t\t: 0x00%X", PC);
		else
			printf("\nPC \t\t: 0x%X", PC);
		
		printf("\nFetching Instruction...");
		
		/* setting external control signals */
		CONTROL = inst_code; 				// setting the control signals
		IOM = 1; 							// Main Memory access
		RW = 0; 							// read operation (fetch)
		OE = 1; 							// allow data movement to/from memory
		
		/* Fetching Instruction (2 cycle) */
		Fetch = 1; 							// set local control signal Fetch to 1 to signify fetch operation
		IO = 0;
		Memory = 0;
		
		/* fetching the upper byte */
		ADDR = PC;
		MainMemory(); 						// fetch upper byte
		
		if(Fetch==1) {
		IR = (int) BUS; 					// load instruction to IR
		IR = IR << 8;						// shift IR 8 bits to the left
		PC++; 								// points to the lower byte
		ADDR = PC; 							// update address bus
		}
		
		/* fetching the lower byte */
		MainMemory(); 						// fetch lower byte
		
		if(Fetch==1) {
		IR = IR | BUS; 						// load the instruction on bus to lower 8 bits of IR
		PC++; 								// points to the next instruction
		}
		printf("\nIR\t\t: 0x%X", IR);
		/* Instruction Decode */
		inst_code = IR >> 11; 				// get the 5-bit instruction code
		operand = IR & 0x07FF; 				// get the 11-bit operand
		
		printf("\nInstruction Code: 0x%02X", inst_code);
		printf("\nOperand\t\t: 0x%03X", operand);
		
		if (inst_code==0x01) { 				// WM instruction (write to memory) 
			MAR = operand; 					// load the operand of WM (memory address) to MAR
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing memory
			IO = 0;
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 1; 						// Main Memory access
			RW = 1;							// write operation
			OE = 1; 						// allow data movement to/from memory
			ADDR = MAR; 					// load MAR to Address Bus
			if(Memory)
				BUS = MBR; 					// MBR owns the bus since control signal Memory is 1
			MainMemory(); 					// write data in data bus to memory
			
			/* echo */
			printf("\nInstruction: WM");
			printf("\nWriting data to memory....");
			
			printf("\nBUS\t\t: 0x%02X", BUS);
			printf("\nADDR\t\t: 0x%03X", ADDR);
			printf("\nPC\t\t: 0x%03X", PC);
			printf("\nMAR\t\t: 0x%02X", MAR);
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nIOAR\t\t: 0x%02X", IOAR);
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nIR\t\t: 0x%02X", IR);
			printf("\nCONTROL\t\t: 0x%02X", CONTROL);
			getch();
		}
		else if(inst_code == 0x02) { 		// RM instruction
			MAR = operand; 					// load the operand of WM (memory address) to MAR
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing memory
			IO = 0;
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 1; 						// Main Memory access
			RW = 0;							// write operation
			OE = 1; 						// allow data movement to/from memory
			ADDR = MAR; 					// load MAR to Address Bus
			MainMemory(); 					// Read data in data bus to memory
			if(Memory)
				BUS = MBR; 					// MBR owns the bus since control signal Memory is 1
			
			
			printf("\nInstruction\t: RM");
			printf("\nReading data from memory....");
			printf("\nMBR\t\t: 0x%02X", MBR);
			
			printf("\nBUS\t\t: 0x%02X", BUS);
			printf("\nADDR\t\t: 0x%03X", ADDR);
			printf("\nPC\t\t: 0x%03X", PC);
			printf("\nMAR\t\t: 0x%02X", MAR);
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nIOAR\t\t: 0x%02X", IOAR);
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nIR\t\t: 0x%02X", IR);
			printf("\nCONTROL\t\t: 0x%02X", CONTROL);
			getch();
		}
		else if(inst_code == 0x03) {		 // BR instruction
			printf("\nInstruction\t: BR");
			PC = operand;
			CONTROL = inst_code;			// setting the control signals
			OE = 1;							// allow data movement to/from memory
			
			printf("\nBUS\t\t: 0x%02X", BUS);
			printf("\nADDR\t\t: 0x%03X", ADDR);
			printf("\nPC\t\t: 0x%03X", PC);
			printf("\nMAR\t\t: 0x%02X", MAR);
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nIOAR\t\t: 0x%02X", IOAR);
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nIR\t\t: 0x%02X", IR);
			printf("\nCONTROL\t\t: 0x%02X", CONTROL);
			printf("\nBranch to 0x%02X on next cycle...", operand);
			getch();

		}
		else if(inst_code == 0x04) {		// RIO instruction
			IOAR = operand; 				// load the operand of WIO (memory address) to IOAR
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 					
			IO = 1;							// accessing IO
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 1; 						// allow data movement to/from memory
			ADDR = IOAR; 					// load IOAR to Address Bus
			
			printf("\nInstruction\t: RIO");
			printf("\nReading data from IO....");
			IOMemory();
			if (IO)
				IOBR = BUS;
				
			printf("\nMBR\t\t: 0x%02X", IOBR);
			printf("\nBUS\t\t: 0x%02X", BUS);
			printf("\nADDR\t\t: 0x%03X", ADDR);
			printf("\nPC\t\t: 0x%03X", PC);
			printf("\nMAR\t\t: 0x%02X", MAR);
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nIOAR\t\t: 0x%02X", IOAR);
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nIR\t\t: 0x%02X", IR);
			printf("\nCONTROL\t\t: 0x%02X", CONTROL);
			printf("\nBranch to %02X on next cycle...", operand);
			getch();
		}
		else if (inst_code==0x05) {			// WIO instruction (write to I/O buffer)
			IOAR = operand;					// load the operand of WIO (memory address) to IOAR
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 					
			IO = 1;							// accessing IO
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 1;							// write operation
			OE = 1; 						// allow data movement to/from memory
			ADDR = IOAR; 					// load IOAR to Address Bus
			
			if (IO)
				BUS = IOBR;
			printf("\nInstruction\t: WIO");
			printf("\nWriting to IO buffer....");
			IOMemory();
			printf("\nBUS\t\t: 0x%02X", BUS);
			printf("\nADDR\t\t: 0x%03X", ADDR);
			printf("\nPC\t\t: 0x%03X", PC);
			printf("\nMAR\t\t: 0x%02X", MAR);
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nIOAR\t\t: 0x%02X", IOAR);
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nIR\t\t: 0x%02X",IR);
			printf("\nCONTROL\t\t: 0x%02X", CONTROL);
			getch();
		}
		else if(inst_code == 0x06) { 		// WB instruction
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 1; 						// Main Memory access
			RW = 1;							// write operation
			OE = 1; 						// allow data movement to/from memory
			ADDR = PC-1; 					// load PC to Address Bus
			printf("\nInstruction\t: WB");
			printf("\nLoading data to MBR.....");
			MainMemory();
			if(MainMemory)
				MBR = BUS;
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nBUS\t\t: 0x%02X", BUS);
			printf("\nADDR\t\t: 0x%03X", ADDR);
			printf("\nPC\t\t: 0x%03X", PC);
			printf("\nMAR\t\t: 0x%02X", MAR);
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nIOAR\t\t: 0x%02X", IOAR);
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nIR\t\t: 0x%02X", IR);
			printf("\nCONTROL\t\t: 0x%02X", CONTROL);
			getch();
		}
		else if (inst_code == 0x07) { 		// WIB instruction
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 1; 						// Main Memory access
			RW = 1;							// write operation
			OE = 1; 						// allow data movement to/from memory
			ADDR = PC-1; 					// load PC to Address Bus
			printf("\nInstruction\t: WIB");
			printf("\nLoading data to IOBR....");
			IOMemory();
			if (IO)
				IOBR = BUS;
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nBUS\t\t: 0x%02X", BUS);
			printf("\nADDR\t\t: 0x%03X", ADDR);
			printf("\nPC\t\t: 0x%03X", PC);
			printf("\nMAR\t\t: 0x%02X", MAR);
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nIOAR\t\t: 0x%02X", IOAR);
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nIR\t\t: 0x%02X", IR);
			printf("\nCONTROL\t\t: 0x%02X", CONTROL);
			getch();
		}
		else { 								// EOP End of Process
			printf("\nInstruction\t: EOP");
			printf("\nBUS\t\t: 0x%02X", BUS);
			printf("\nADDR\t\t: 0x%03X", ADDR);
			printf("\nPC\t\t: 0x%03X", PC);
			printf("\nMAR\t\t: 0x%02X", MAR);
			printf("\nMBR\t\t: 0x%02X", MBR);
			printf("\nIOAR\t\t: 0x%02X", IOAR);
			printf("\nIOBR\t\t: 0x%02X", IOBR);
			printf("\nIR\t\t: 0x%02X", IR);
			printf("\nCONTROL\t\t: 0x%02X", CONTROL);
			printf("\nEnd of program.\n\n");
			exit = 1;
			return 1;
		}
		
		printf("\n****************************");
		
	}
	return 0;
 }
 

 
 

