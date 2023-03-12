/* ============================================================================ 
FILE       			: ACAIN_ALU-CU.c
AUTHOR   			: Jhaycee Anthony P. Acain
DESCRIPTION 		: The program that sets up an ALU using C that can perform operation
					based on the arithmetic concepts discussed in Unit II “Computer Arithmetic”. 
REVISION HISTORY  
Date:			 	By:          				Description:  
Revision Date		Jhaycee Anthony P. Acain	Revision Description
============================================================================ */
//Header files
#include <stdio.h>
#include <conio.h>
#include <math.h>
#include <stdbool.h>

//function prototype
int ALU(void); 
unsigned char twosComp(unsigned data);													// - function to 2's complement a number
unsigned char setFlags(unsigned int ACC);												// - function to set the zero, overflow, sign and carry flags
void printBin(int data, unsigned char data_width);										// - print binary characters of data
void initMemory (void);	
int CU (void);
void MainMemory(void);
void IOMemory(void);

//global variable
// Create a global variable (unsigned char) called FLAGS and remove the individual flag variables
unsigned char FLAGS;
unsigned int dataMemory[2048];
unsigned int ioBuffer[32];
unsigned int ADDR, BUS, IOM, RW, OE, CONTROL;

/* ============================================================================ 
FUNCTION    	: Main
DESCRIPTION 	: The main function of the ACAIN_ALU-CU.c program.
ARGUMENTS   	: 
	Void   
RETURNS     	: void
=========================================================================== */
void main(void) {
	initMemory(); 			 				// this function populates the memory
	printf("Initializing Main Memory...");
	
	if(CU()==1) 			  				// check the return value
		printf("Program run successfully!");
	else
		printf("Error encountered, program terminated!");
 }

/* ============================================================================ 
FUNCTION    	: ALU
DESCRIPTION 	: Perform operation based on the arithmetic concepts discussed 
				in Unit II “Computer Arithmetic”
ARGUMENTS   	: 
	Void   
RETURNS     	: int - returns 0 to exit 
=========================================================================== */
int ALU (void) {
	static int ACC;
	int count = 0;
	unsigned int temp_ACC = 0x00;
	unsigned char temp_OP1 = 0x00, temp_OP2 = 0x00, temp_Pro = 0x00, 
				  MSB_A = 0x00, LSB_A = 0x00, LSB_Q = 0x00, bit_Neg_One = 0x00;

	
	printf("\n============ ALU ============\n");
	printf("Fetching Operands...\n");
	printf("OP1 (Binary) = ");
	printBin(ACC, 8);
	printf("\nOP1 (Hexadecimal) = ");
	printf("0x%02X", ACC);
	printf("\nOP2 (Binary) = ");
	printBin(BUS, 8);
	printf("\nOP2 (Hexadecimal) = ");
	printf("0x%02X", BUS);
	
	/* ADD OR SUB OPERATION */
	if (CONTROL == 0x1E || CONTROL == 0x1D) {
		if (CONTROL == 0x1D) { 						// SUB operation
			printf("\n");
			printf("Operation = SUB\n");
			temp_OP2 = twosComp(BUS);
			printf("2's complement OP2\n");
			printf("Adding operand1 & OP2...\n");
		}
		else {										// ADD operation
			temp_OP2 = BUS;
			printf("\n");
			printf("Operation = ADD\n");
			printf("2's complement OP1\n");
			printf("2's complement OP2\n");
			printf("Adding OP1 & OP2...\n");
		}
		
		temp_ACC = (int)ACC + temp_OP2;
		temp_ACC = temp_ACC & 0x00FF;    
        ACC = (unsigned char) temp_ACC;  
	}
	
	/* MUL operation */
	else if (CONTROL == 0x1B) {
		temp_OP2 = BUS;
		printf("\n");
		printf("Operation = MUL\n");
		printf("\t\tQ\t\tQ_n1\tM\t\tn");
		
		for (count = 8; count > 0; count--) {
			printf("\n");
			printBin(temp_Pro, 8);
			printf("\t");
			printBin(temp_OP2, 8);
			printf("\t");
			printBin(bit_Neg_One, 1);
			printf("\t");
			printBin(ACC, 8);
			printf("\t");
			printf("%d\n", count);
			
			LSB_Q = temp_OP2 & 0x01;
			
			if (LSB_Q == 1 && bit_Neg_One == 0) {
				temp_OP1 = twosComp(ACC);
				temp_Pro = temp_Pro + temp_OP1; 
			}
			else if (LSB_Q == 0 && bit_Neg_One == 1) {
				temp_OP1 = ACC;
				temp_Pro = temp_Pro + temp_OP1; 
			}
			
			MSB_A = (temp_Pro >> 7) & 0x01;
			LSB_A = temp_Pro & 0x01;
			LSB_Q = temp_OP2 & 0x01; 
				
			MSB_A = (temp_Pro >> 7) & 0x01;
			LSB_A = temp_Pro & 0x01;
			bit_Neg_One = LSB_Q;	
				
			temp_Pro = temp_Pro >> 1;
			temp_Pro = temp_Pro | (MSB_A << 7);
			temp_OP2 = temp_OP2 >> 1;
			temp_OP2 = temp_OP2 | (LSB_A << 7);
				
		}
		printf("\n");
		temp_OP1 = temp_Pro << 8 | temp_OP2;
		ACC = (unsigned int)temp_OP1;
	}
	/* AND operation */
	else if (CONTROL == 0x1A) {
		printf("\n");
		printf("OPERATION = AND\n");
		ACC = ACC & BUS;
	}
	/* OR operation */
	else if (CONTROL == 0x18) {
		printf("\n");
		printf("OPERATION = OR\n");
		ACC = ACC || BUS;
	}
	/* NOT operation */
	else if (CONTROL == 0x19) {
		printf("\n");
		printf("OPERATION = NOT\n");
		ACC = ~ACC;
	}
	/* XOR operation */
	else if (CONTROL == 0x17) {
		printf("\n");
		printf("OPERATION = XOR\n");
		ACC = ACC ^ BUS;
	}
	else if (CONTROL== 0x15) {					// Shift Right (Logical) Operation
		printf("\n");
		printf("OPERATION = SHIFT RIGHT (LOGICAL)\n");
		ACC = ACC >> BUS;
	}
	else if (CONTROL == 0x16) {					// Shift Left (Logical) Operation
		printf("\n");
		printf("OPERATION = SHIFT LEFT (LOGICAL)\n");
		ACC = ACC << BUS;
	}
	else if(CONTROL == 0x09) {					// Write data to ACC
        printf("\nWrite data to ACC\n");
        temp_ACC = BUS;
        ACC = (unsigned char) temp_ACC; 

    }
	else if(CONTROL == 0x0B) {					// Read ACC
        printf("\nRead ACC to MBR via BUS\n");
        BUS =  ACC;
    }
    else if(CONTROL == 0x14)					//BRE
	{   
        printf("\nBRE\n");
        ACC = (ACC + twosComp(BUS)) & 0x00FF; 
    }
    else if(CONTROL == 0x13) {					//BRNE  
        printf("\nBRNE\n");
        ACC = (ACC + twosComp(BUS)) & 0x00FF;
    }
    else if(CONTROL == 0x12) {					//BRGT	
        printf("\nBRGT\n");
		ACC = (ACC + twosComp(BUS)) & 0x00FF;
    }
    else if(CONTROL == 0x11)					//BRLT
	{   
        printf("\nBRLT\n");
      	ACC = (ACC + twosComp(BUS)) & 0x00FF;
    }
    /* Set Flags */
    setFlags(temp_ACC);
    unsigned char ZF = FLAGS & 0x01, CF = (FLAGS >> 1) & 0x01, 
				  SF = (FLAGS >> 2) & 0x01, OF = (FLAGS >> 7) & 0x01;
	printf("ACC (Binary) = ");
	printBin(ACC, 0x08);
	printf("\nACC (Hexadecimal) = ");
	printf("0x%02X", ACC);
	printf("\nZF = %d, CF = %d, SF = %d, OF = %d", ZF, CF, SF, OF);
	
	return ACC;
}

/* ============================================================================ 
FUNCTION    	: twosComp
DESCRIPTION 	: function to perform 2's Compliment on a number
ARGUMENTS   	: 
	Void   
RETURNS     	: int - returns n to exit 
=========================================================================== */
unsigned char twosComp (unsigned data) {
	int n;
	n = ~(data) + 1;
	return n;
}

/* ============================================================================ 
FUNCTION    	: setFlags
DESCRIPTION 	: function to set the zero, overflow, sign and carry flags
ARGUMENTS   	: 
	Void   
RETURNS     	:
=========================================================================== */
unsigned char setFlags (unsigned int ACC) {
	FLAGS = 0x00;
	if (ACC == 0x0000) 
		FLAGS = FLAGS | 0X01;
	if (ACC > 0x7F) 
		FLAGS = FLAGS | 0x80;
	if ((ACC & 0x0080) == 0x0080)
		FLAGS = FLAGS | 0X04;
	if (ACC > 0xFF)
		FLAGS = FLAGS | 0x02;
	if (CONTROL == 0x15 || CONTROL == 0X16)
		FLAGS = FLAGS & 0X02;
	if(CONTROL == 0x17 || CONTROL == 0x18 || CONTROL == 0x19 || CONTROL == 0x1A)
        FLAGS = FLAGS & 0x01;
}

/* ============================================================================ 
FUNCTION    	: printBin
DESCRIPTION 	: print binary characters of data
ARGUMENTS   	: 
	Void   
RETURNS     	: void
=========================================================================== */
void printBin(int data, unsigned char data_width) {
	int i;
	int bit;
	
	for (i = (int)data_width - 1; i >= 0; i--) {
		bit = data >> i;
		
		if (bit & 1)
			printf("1");
		else 
			printf("0");
	}
}

/* ============================================================================ 
FUNCTION    	: initMemory
DESCRIPTION 	: Perform operation to emulate the function of an Initialization 
				of Memory on the control unit using C/C++ program
ARGUMENTS   	: 
	Void   
RETURNS     	: void - returns 0 to exit 
=========================================================================== */
 void initMemory(void) {
	dataMemory[0x000] = 0x30;       		// WB - assigns the data “1111 1111” (0xFF) to MBR
    dataMemory[0x001] = 0x15;
    dataMemory[0x002] = 0x0C;       		// WM - writes data from MBR to memory address “100 0000 0000B” (0x400)
    dataMemory[0x003] = 0x00;
    dataMemory[0x004] = 0x30;       		// RM - reads data at address “100 0000 0000” (0x400) and store MBR
    dataMemory[0x005] = 0x05;
    dataMemory[0x006] = 0x48;     			// BR - branch to memory address “001 0010 1010” (0x12A)
    dataMemory[0x007] = 0x00;
    dataMemory[0x008] = 0x30;
    dataMemory[0x009] = 0x08;
    dataMemory[0x00A] = 0xF0;
    dataMemory[0x00B] = 0x00;
    dataMemory[0x00C] = 0x14;
    dataMemory[0x00D] = 0x00;
    dataMemory[0x00E] = 0xD8;
    dataMemory[0x00F] = 0x00;
    dataMemory[0x010] = 0x58;
    dataMemory[0x011] = 0x00;
    dataMemory[0x012] = 0x0C;
    dataMemory[0x013] = 0x01;
    dataMemory[0x014] = 0x38;
    dataMemory[0x015] = 0x0B;
    dataMemory[0x016] = 0x28;
    dataMemory[0x017] = 0x00;
    dataMemory[0x018] = 0x30;
    dataMemory[0x019] = 0x10;
    dataMemory[0x01A] = 0xE8;
    dataMemory[0x01B] = 0x00;
    dataMemory[0x01C] = 0x58;
    dataMemory[0x01D] = 0x00;
    dataMemory[0x01E] = 0x28;       
    dataMemory[0x01F] = 0x01;
    dataMemory[0x020] = 0xB0;       
    dataMemory[0x021] = 0x00;
    dataMemory[0x022] = 0xB0;       
    dataMemory[0x023] = 0x00;
    dataMemory[0x024] = 0x14;      
    dataMemory[0x025] = 0x01;
    dataMemory[0x026] = 0xA8;       
    dataMemory[0x027] = 0x00;
    dataMemory[0x028] = 0xC8;       
    dataMemory[0x029] = 0x00;
    dataMemory[0x02A] = 0xC0;       
    dataMemory[0x02B] = 0x00;
    dataMemory[0x02C] = 0x20;       
    dataMemory[0x02D] = 0x01;
    dataMemory[0x02E] = 0x70;       
    dataMemory[0x02F] = 0x00;
    dataMemory[0x030] = 0xB8;       
    dataMemory[0x031] = 0x00;
    dataMemory[0x032] = 0x30;       
    dataMemory[0x033] = 0xFF;
    dataMemory[0x034] = 0xD0;      
    dataMemory[0x035] = 0x00;
    dataMemory[0x036] = 0x14;       
    dataMemory[0x037] = 0x01;
    dataMemory[0x038] = 0xA0;       
    dataMemory[0x039] = 0x3C;
    dataMemory[0x03A] = 0x30;       
    dataMemory[0x03B] = 0xF0;
    dataMemory[0x03C] = 0x90;       
    dataMemory[0x03D] = 0x40;
    dataMemory[0x03E] = 0x88;       
    dataMemory[0x03F] = 0x44;
    dataMemory[0x040] = 0x30;       
    dataMemory[0x041] = 0x00;
    dataMemory[0x042] = 0x48;       
    dataMemory[0x043] = 0x00;
    dataMemory[0x044] = 0x30;       
    dataMemory[0x045] = 0x03;
    dataMemory[0x046] = 0x48;      
    dataMemory[0x047] = 0x00;
    dataMemory[0x048] = 0x30;       
    dataMemory[0x049] = 0x00;
    dataMemory[0x04A] = 0xA0;       
    dataMemory[0x04B] = 0x52;
    dataMemory[0x04C] = 0x30;       
    dataMemory[0x04D] = 0x01;
    dataMemory[0x04E] = 0xE8;     
    dataMemory[0x04F] = 0x00;
    dataMemory[0x050] = 0x18;
    dataMemory[0x051] = 0x48;
    dataMemory[0x052] = 0xF8;
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
	
	unsigned int Fetch = 0, IO = 0, Memory = 0;
	
	printf("\n\n****************************");
	
	MainMemory();
	if (Fetch == 1)
		IR = BUS;
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
			MainMemory(); 					// read data in data bus to memory
			if(Memory)
				MBR = BUS; 					// MBR owns the bus since control signal Memory is 1
							
			
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
			 
		}
		else if (inst_code == 0x1F) { 								// EOP End of Process
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
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
			return 1;
		}
		/* ALU ADD operation */
		else if (inst_code == 0x1E) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU ADD Operation");
			printf("\nPerforming Addtion on ACC and BUS...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU SUB operation */
		else if (inst_code == 0x1D) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU SUB Operation");
			printf("\nPerforming Subtraction on ACC and BUS...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU MUL operation */
		else if (inst_code == 0x1B) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU MUL Operation");
			printf("\nPerforming Multiplication on ACC and BUS...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU AND operation */
		else if (inst_code == 0x1A) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU AND Operation");
			printf("\nPerforming AND: ACC & BUS...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU OR operation */
		else if (inst_code == 0x19) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU OR Operation");
			printf("\nPerforming OR: ACC | BUS...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU NOT operation */
		else if (inst_code == 0x18) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU NOT Operation");
			printf("\nPerforming NOT: ~ACC...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU XOR operation */
		else if (inst_code == 0x17) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU XOR Operation");
			printf("\nPerforming XOR: ACC ^ BUS...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU SHIFT RIGHT (LOGICAL) operation */
		else if (inst_code == 0x15) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU SHIFT RIGHT (LOGICAL) Operation");
			printf("\nPerforming >> on ACC...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU SHIFT LEFT (LOGICAL) operation */
		else if (inst_code == 0x16) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU SHIFT LEFT (LOGICAL) Operation");
			printf("\nPerforming << on ACC...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU WRITE ACC operation */
		else if (inst_code == 0x09) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU WRITE ACC Operation");
			printf("\nWriting to ACC...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU READ ACC operation */
		else if (inst_code == 0x0B) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			if (Memory)
				MBR = BUS;
			printf("\nInstruction\t: ALU READ ACC Operation");
			printf("\nReading ACC...");
			ALU();
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
			printf("\n============================");
			 
		}
		/* ALU SWAP operation */
		else if (inst_code == 0x0E) {
			unsigned char tempMBR;
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 				
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			
			tempMBR = MBR;
            MBR = IOBR;
            IOBR = tempMBR;
			printf("\nInstruction\t: ALU SWAP Operation");
			printf("\nSwapping IOBR and MBR...");
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
			printf("\n============================");
			 
		}
		/* ALU BRE operation */
		else if (inst_code == 0x14) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			ADDR = operand;
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU BRE Operation");
			printf("\nComparing ACC and BUS...");
			ALU();
			if((FLAGS & 0x01) == 1) {
				PC = ADDR;
				printf("Branching to 0x%0x2X on next cycle...\n", PC);
			}
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
			printf("\n============================");
			 
		}
		/* ALU BRNE operation */
		else if (inst_code == 0x13) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			ADDR = operand;
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU BRNE Operation");
			printf("\nComparing ACC and BUS...");
			ALU();
			if((FLAGS & 0x01) == 1) {
				PC = ADDR;
				printf("Branching to 0x%0x2X on next cycle...\n", PC);
			}
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
			printf("\n============================");
		}
		/* ALU BRGT operation */
		else if (inst_code == 0x12) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			ADDR = operand;
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU BRGT Operation");
			printf("\nComparing ACC and BUS...");
			ALU();
			if((FLAGS & 0x01) == 1) {
				PC = ADDR;
				printf("Branching to 0x%0x2X on next cycle...\n", PC);
			}
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
			printf("\n============================");
		}
		/* ALU BRlT operation */
		else if (inst_code == 0x11) {
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing Memory
			IO = 0;						
 
			/* setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			ADDR = operand;
			if (Memory)
				BUS = MBR;
			printf("\nInstruction\t: ALU BRLT Operation");
			printf("\nComparing ACC and BUS...");
			ALU();
			if((FLAGS & 0x01) == 1) {
				PC = ADDR;
				printf("Branching to 0x%0x2X on next cycle...\n", PC);
			}
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
			printf("\n============================");
		}
		else {
			printf("\n Invalid op code: 0x%03x", inst_code);
			
			return 0;
		}
		printf("\n****************************");
		
	}
	return 0;
 }
