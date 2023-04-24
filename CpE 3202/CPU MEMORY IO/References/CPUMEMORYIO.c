/* ============================================================================ 
FILE       			: ACAIN_CPU+MEMORY+IO.c
AUTHOR   			: Jhaycee Anthony P. Acain
DESCRIPTION 		: The program that sets up an ALU using C that can perform operation
					based on the arithmetic concepts discussed in Unit II ?Computer Arithmetic?. 
REVISION HISTORY  
Date:			 	By:          				Description:  
Revision Date		Jhaycee Anthony P. Acain	Revision Description
============================================================================ */
//Header files
#include <stdio.h>
#include <conio.h>
#include <math.h>
#include <stdbool.h>


//funtion prototype
int ALU (void);									
unsigned char twosComp (unsigned data);									// - function to 2's complement a number
unsigned char setFlags (unsigned int ACC);								// - function to set the zero, overflow, sign and carry flags
void printBin(int data, unsigned char data_width);						// - print binary characters of data
void displayFlags (void);
int CU (void);
void displayData (unsigned int ADDR, unsigned int PC, unsigned int MAR, unsigned int MBR,
				  unsigned int IOAR,  unsigned int IOBR,  unsigned int CONTROL);
void initMemory (void);
void MainMemory (void);
void IOMemory (void); 
void InputSim(void);
void SevenSegment();

// global variable
unsigned char iOData[32];
unsigned int ADDR, BUS, IOM, RW, OE, CONTROL, FLAGS;
/* memory chip declaration */
long A1[32], A2[32], A3[32], A4[32], A5[32], A6[32], A7[32], A8[32]; 	// chip group A
long B1[32], B2[32], B3[32], B4[32], B5[32], B6[32], B7[32], B8[32];	// chip group B

/* Input/Output */
void InputSim(void);
void SevenSegment(void);

/* ============================================================================ 
FUNCTION    	: Main
DESCRIPTION 	: The main function of the ACAIN_CPU-MEM.c program.
ARGUMENTS   	: 
	Void   
RETURNS     	: void
=========================================================================== */
void main(void) {
	initMemory(); 									// this function populates the memory
	printf("Initializing Main Memory...\n\n");
	
	if(CU()==1)										// check the return value
      printf("\nProgram run successfully!");
    else
        printf("\nError encountered, program terminated!");
}

/* ============================================================================ 
FUNCTION    	: ALU
DESCRIPTION 	: Perform operation based on the arithmetic concepts discussed 
				in Unit II Computer Arithmetic
ARGUMENTS   	: 
	Void   
RETURNS     	: int - returns 0 to exit 
=========================================================================== */
int ALU() {
	static int ACC;
	int count = 0;
	unsigned int  temp_ACC = 0x00;
	unsigned char temp_OP1 = 0x00, temp_OP2 = 0x00, temp_Pro = 0x00,
				  MSB_A = 0, LSB_A = 0, LSB_Q = 0, bit_Neg_One = 0, mask_FLAGS = 0xFF;
	
	printf("\n================== ALU =================\n");
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
		if (CONTROL == 0x1D) {							// SUB operation
			printf("\n");
			printf("Operation = SUB");
			temp_OP2 = twosComp(BUS);
			printf("\n2's comp of BUS");
			printf("\nOP2 (Binary) = ");
			printBin(BUS, 8);
			printf("\nOP2 (Hexadecimal) = ");
			printf("0x%02X", BUS);
			}
		else {											// ADD operation
			temp_OP2 = BUS;
			printf("\nOperation \t = ADD");
		}
		
		temp_ACC = ACC + temp_OP2; 
		setFlags(temp_ACC); 							// set flags function
		printf("\ntemp_ACC \t = ");
		printBin(temp_ACC, 10);
		
		if( temp_ACC > 0x7F) { 							// if temp_ACC is greater than 0x7f
			if (ACC <= 0x7F && temp_OP2 > 0x7F) 		// if OP1 is positive and OP2 is negative, then overflow and carry does not occur
				FLAGS = FLAGS & 0x7D;		
			else if	(ACC > 0x7F && temp_OP2 <= 0x7F)	// if OP1 is negative and OP2 is positive, then overflow and carry does not occur
				FLAGS = FLAGS & 0x7D;		
			else if	(ACC > 0x7F && temp_OP2 > 0x7F) 	// if OP1 and OP2 is negative, then overflow and carry does not occur
				FLAGS = FLAGS & 0x7D;		
		}
			
		ACC = (unsigned char) temp_ACC;
	}
	
	/* MUL operation */
	else if (CONTROL == 0x1B) {
		temp_OP2 = BUS;
		printf("\n");
		printf("Operation = MUL");
		printf("\nA\t\tQ\t\tQ_N1\tM\t\tn\n");
		
		for (count = 8; count > 0; count--){
			printf("\n");
			printBin(temp_Pro, 8);
			printf("\t");
			printBin(temp_OP2, 8);
			printf("\t");
			printBin(bit_Neg_One, 1);
			printf("\t");
			printBin(ACC, 8);
			printf("\t");
			printf("%d", count);
			
			LSB_Q = temp_OP2 & 0x01;
			
			if (LSB_Q == 1 && bit_Neg_One == 0) {
				temp_OP1 = twosComp((int) ACC);
				temp_Pro = temp_Pro + temp_OP1;	 						// A = A - M
			}
			else if (LSB_Q == 0 && bit_Neg_One == 1) {
				temp_OP1 = (int) ACC;
				temp_Pro = temp_Pro + temp_OP1; 						// A = A + M
			}
			
			MSB_A = (temp_Pro >> 7) & 0x01;
			LSB_A = temp_Pro & 0x01;
			bit_Neg_One = LSB_Q;
				
			temp_Pro = temp_Pro >> 1; 									
			temp_Pro = temp_Pro | (MSB_A << 7);	
			temp_OP2 = temp_OP2 >> 1;
			temp_OP2 = temp_OP2 | (LSB_A << 7);	
			
		}
		printf("\n");
		printBin(temp_Pro, 8);
		printf("\t");
		printBin(temp_OP2, 8);
		printf("\t");
		printBin(bit_Neg_One, 1);
		printf("\t");														
		printBin(ACC, 8);
		printf("\t");
		printf("%d", count);
		
		temp_ACC = temp_Pro & 0x00FF;
		temp_ACC = temp_ACC << 8 | temp_OP2;

		ACC = (unsigned char) temp_ACC; 
		
		setFlags(temp_ACC);
	}
	
	/* AND operation */
	else if (CONTROL == 0x1A) {
		printf("\n");
		printf("OPERATION = AND");
		temp_ACC = (int) ACC & BUS;
		ACC = (unsigned char) temp_ACC;
		 
	}
	
	/* OR operation */
	else if (CONTROL == 0x19) {
		printf("\n");
		printf("OPERATION = OR");
		temp_ACC = (int) ACC || BUS;
		ACC = (unsigned char) temp_ACC; 
		
	}
	
	/* NOT operation */
	else if (CONTROL == 0x18) {
		printf("\n");
		printf("OPERATION = NOT");
		temp_ACC = ~(int) ACC;
		ACC = (unsigned char) temp_ACC; 
	
	}
	
	/* XOR operation */
	else if (CONTROL == 0x17) {
		printf("\n");
		printf("OPERATION = XOR");
		temp_ACC = (int) ACC ^ BUS;
		ACC = (unsigned char) temp_ACC; 
		
	}
	
	/* Shift Left (Logical) Operation */
	else if (CONTROL == 0x16) {
		printf("\n");
		printf("OPERATION = LOGICAL SHIFT LEFT");
		temp_ACC = (int) ACC << 1;					
		ACC = (unsigned char) temp_ACC; 		
		
	}
	
	/* Shift Right (Logical) Operation */
	else if (CONTROL == 0x15) { 
		printf("\n");
		printf("OPERATION = LOGICAL SHIFT RIGHT");
		if((ACC & 0x01) == 0x01) LSB_A = 0x02; 	
		temp_ACC = (int) ACC >> 1;			
		ACC = (unsigned char) temp_ACC; 	

	}
	
	/* Write data to ACC */
	else if (CONTROL == 0x09) {
		printf("\n");
		printf("OPERATION = Write data to ACC (WACC)");
		temp_ACC = BUS;
		ACC = (unsigned char) temp_ACC; 
		
	}
	
	/* Read data to ACC */
	else if (CONTROL == 0x0B) {
		printf("\nOPERATION = Read data to ACC (RACC)");
		temp_ACC = ACC;
		BUS = (unsigned char) temp_ACC;

	}
	/* Branch if Equal */
	else if(CONTROL == 0x14){  
        printf("\nOPERATION = Branch if Equal (BRE)");
        temp_ACC = (ACC + twosComp(BUS)) & 0x00FF;
        ACC = (unsigned char) temp_ACC; 

    }
    /* Branch if Not Equal */
    else if(CONTROL == 0x13){  
        printf("\nOPERATION = Branch if Not Equal (BRNE)");
        temp_ACC = (ACC + twosComp(BUS)) & 0x00FF;
        ACC = (unsigned char) temp_ACC; 

    }
    /* Branch if Greater Than */
    else if(CONTROL == 0x12){  
        printf("\nOPERATION = Branch if Greater Than (BRGT)");
        temp_ACC = (ACC + twosComp(BUS)) & 0x00FF;
        ACC = (unsigned char) temp_ACC; 

    }
	/* Branch if Less Than */
	else if(CONTROL == 0x11){   
        printf("\nOPERATION = Branch if Less Than (BRLT)");
        temp_ACC = (ACC + twosComp(BUS)) & 0x00FF;
        ACC = (unsigned char) temp_ACC; 
    }
    setFlags(temp_ACC);
	printf("\n");
	printf("ACC (Binary) \t= ");
	printBin(ACC, 8);
	printf("\nACC (Hexadecimal) \t = ");
	printf("0x%02X", ACC);
	
	unsigned char ZF = FLAGS & 0x01, CF = (FLAGS >> 1) & 0x01, SF = (FLAGS >> 2) & 0x01, OF = (FLAGS >> 7) & 0x01;
	printf("\nFLAGS : ");
	displayFlags();
	printf("\n=========================================\n");
	
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
	if (ACC == 0) 
		FLAGS = FLAGS | 0x01;										// to check if  Zero 
	else 
		FLAGS = FLAGS & 0xFE;
	
	if (ACC >= 0x100) 												// to check if there is carry 
		FLAGS = FLAGS | 0x02;							
	else 
		FLAGS = FLAGS & 0xFD;
	
	if ((ACC & 0x0080) == 0x0080) 									// to check sign 
		FLAGS = FLAGS | 0x04;				
	else 
		FLAGS = FLAGS & 0xFB;
	
	if (ACC >= 0x7F) 												// to check overflow 
		FLAGS = FLAGS | 0x80;							
	else 
		FLAGS = FLAGS & 0x7F;
}

/* ============================================================================ 
FUNCTION    	: displayFlags
DESCRIPTION 	: Funtion to display the value of the Flags of the data
ARGUMENTS   	: 
	Void   
RETURNS     	: void
=========================================================================== */
void displayFlags(void) {
	unsigned char OF = 0, SF = 0, CF = 0, ZF = 0;

	if ((FLAGS & 0x80) == 0x80) 									// checks overflow flag
		OF = 1;		
	if ((FLAGS & 0x04) == 0x04) 									// checks sign flag
		SF = 1;		
	if ((FLAGS & 0x02) == 0x02) 									// checks carry flag
		CF = 1;		
	if ((FLAGS & 0x01) == 0x01) 									// checks zero flag
		ZF = 1;		
	
	printf("OF = %d, SF = %d\n", OF, SF);
	printf("CF = %d, ZF = %d", CF, ZF);
}

/* ============================================================================ 
FUNCTION    	: printBin
DESCRIPTION 	: Funtion to print binary characters of data
ARGUMENTS   	: 
	Void   
RETURNS     	: void
=========================================================================== */
void printBin (int data, unsigned char data_width) {
	int i, bit;
	for (i = (int)data_width - 1; i >= 0; i--) {
		bit = data >> i;
		
		if (bit & 1) {
			printf("1");
		}
		else {
			printf("0");
		}
	}
}

/* ============================================================================ 
FUNCTION    	: initMemory
DESCRIPTION 	: Initialization of the Memory
ARGUMENTS   	: 
	Void   
RETURNS     	: void - returns 0 to exit 
=========================================================================== */
void initMemory() {
	int i, j;
	/* setting the global control signals */
 	IOM = 1, RW = 1, OE = 1;
 	// IOBR = 0x00
    ADDR = 0x000; BUS = 0x38; MainMemory(); // WIB 0x09 (IOBR <- literal)
    ADDR = 0x001; BUS = 0x09; MainMemory();
    ADDR = 0x002; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x003; BUS = 0x00; MainMemory();
    ADDR = 0x004; BUS = 0x38; MainMemory(); // WIB 0x08 (IOBR <- literal)
    ADDR = 0x005; BUS = 0x08; MainMemory();
    ADDR = 0x006; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x007; BUS = 0x00; MainMemory();
    ADDR = 0x008; BUS = 0x38; MainMemory(); // WIB 0x07 (IOBR <- literal)
    ADDR = 0x009; BUS = 0x07; MainMemory();
    ADDR = 0x00A; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x00B; BUS = 0x00; MainMemory();
    ADDR = 0x00C; BUS = 0x38; MainMemory(); // WIB 0x06 (IOBR <- literal)
    ADDR = 0x00D; BUS = 0x06; MainMemory();
    ADDR = 0x00E; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x00F; BUS = 0x00; MainMemory();
    ADDR = 0x010; BUS = 0x38; MainMemory(); // WIB 0x05 (IOBR <- literal)
    ADDR = 0x011; BUS = 0x05; MainMemory();
    ADDR = 0x012; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x013; BUS = 0x00; MainMemory();
    ADDR = 0x014; BUS = 0x38; MainMemory(); // WIB 0x04 (IOBR <- literal)
    ADDR = 0x015; BUS = 0x04; MainMemory();
    ADDR = 0x016; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x017; BUS = 0x00; MainMemory();
    ADDR = 0x018; BUS = 0x38; MainMemory(); // WIB 0x03 (IOBR <- literal)
    ADDR = 0x019; BUS = 0x03; MainMemory();
    ADDR = 0x01A; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x01B; BUS = 0x00; MainMemory();
    ADDR = 0x01C; BUS = 0x38; MainMemory(); // WIB 0x02 (IOBR <- literal)
    ADDR = 0x01D; BUS = 0x02; MainMemory();
    ADDR = 0x01E; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x01F; BUS = 0x00; MainMemory();
    ADDR = 0x020; BUS = 0x38; MainMemory(); // WIB 0x01 (IOBR <- literal)
    ADDR = 0x021; BUS = 0x01; MainMemory();
    ADDR = 0x022; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x023; BUS = 0x00; MainMemory();
    ADDR = 0x024; BUS = 0x38; MainMemory(); // WIB 0x00 (IOBR <- literal)
    ADDR = 0x025; BUS = 0x00; MainMemory();
    ADDR = 0x026; BUS = 0x28; MainMemory(); // WIO 0x000 (BUS <- IOBR)
    ADDR = 0x027; BUS = 0x00; MainMemory();
    ADDR = 0x028; BUS = 0xF8; MainMemory(); // EOP: End of Program
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
	unsigned char row, col, cs;

    if(IOM==1){
        if(OE){
            /* decoding address data */
	 	    col = ADDR & 0x001F;
	 	    row = (ADDR >> 5) & 0x001F;
	 	    cs = ADDR >> 10;
            if(RW==0){         										// read memory
                BUS = 0x00;     									// empty BUS
                if(cs == 0){    									// access chip A
                    BUS |= ((A1[row]>>col) & 0x0001);				// assign bit 0
                    BUS |= (((A2[row]>>col) & 0x0001) << 1);		// assign bit 1
                    BUS |= (((A3[row]>>col) & 0x0001) << 2);		// assign bit 2
                    BUS |= (((A4[row]>>col) & 0x0001) << 3);		// assign bit 3
                    BUS |= (((A5[row]>>col) & 0x0001) << 4);		// assign bit 4
                    BUS |= (((A6[row]>>col) & 0x0001) << 5);		// assign bit 5
                    BUS |= (((A7[row]>>col) & 0x0001) << 6);		// assign bit 6
                    BUS |= (((A8[row]>>col) & 0x0001) << 7);		// assign bit 7
                }
                else if(cs == 1) {   								// access chip B
                    BUS |= ((B1[row]>>col) & 0x0001);				// assign bit 0
                    BUS |= (((B2[row]>>col) & 0x0001) << 1);		// assign bit 1
                    BUS |= (((B3[row]>>col) & 0x0001) << 2);		// assign bit 2
                    BUS |= (((B4[row]>>col) & 0x0001) << 3);		// assign bit 3
                    BUS |= (((B5[row]>>col) & 0x0001) << 4);		// assign bit 4
                    BUS |= (((B6[row]>>col) & 0x0001) << 5);		// assign bit 5
                    BUS |= (((B7[row]>>col) & 0x0001) << 6);		// assign bit 6
                    BUS |= (((B8[row]>>col) & 0x0001) << 7);		// assign bit 7
                }
            }   
            else if(RW==1) { 										// memory write
                if(cs == 0) {    									// access to chip A
                    A1[row] |= ((BUS & 0x01) << col);				// store BUS bit 0 at A1(col,row)
                    A2[row] |= (((BUS & 0x02) >> 1) << col);		// assign bit 1
                    A3[row] |= (((BUS & 0x04) >> 2) << col);		// assign bit 2
                    A4[row] |= (((BUS & 0x08) >> 3) << col);		// assign bit 3
                    A5[row] |= (((BUS & 0x10) >> 4) << col);		// assign bit 4
                    A6[row] |= (((BUS & 0x20) >> 5) << col);		// assign bit 5
                    A7[row] |= (((BUS & 0x40) >> 6) << col);		// assign bit 6
                    A8[row] |= (((BUS & 0x80) >> 7) << col);		// assign bit 7
                }
                else if(cs == 1){   								//access to chip B
                    B1[row] |= ((BUS & 0x01) << col); 				//store BUS bit 0 at A1(col,row)
                   	B2[row] |= (((BUS & 0x02) >> 1) << col);		//assign bit 1
                    B3[row] |= (((BUS & 0x04) >> 2) << col);		//assign bit 2
               		B4[row] |= (((BUS & 0x08) >> 3) << col);		//assign bit 3
                    B5[row] |= (((BUS & 0x10) >> 4) << col);		//assign bit 4
                   	B6[row] |= (((BUS & 0x20) >> 5) << col);		//assign bit 5
                    B7[row] |= (((BUS & 0x40) >> 6) << col);		//assign bit 6
                 	B8[row] |= (((BUS & 0x80) >> 7) << col);		//assign bit 7
                }
            }
        }
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
	if(OE) { 										// check if output is enabled
        if(RW && !IOM) { 							// check if memory write and IO Memory access
            if(ADDR >= 0x000 && ADDR <= 0x00F) { 	// check the address if valid
                iOData[ADDR] = BUS; 				// write data in BUS to IO Memory
            }      
        }
        else {
            if(ADDR >= 0x010 && ADDR <= 0x01F) { 	// check the address if valid
                BUS = iOData[ADDR]; 				// load data to BUS
            }
        }
    }
}

/* ============================================================================ 
FUNCTION    	: displayData
DESCRIPTION 	: function to display the Data of the Control Unit (CU)
ARGUMENTS   	: 
	Void   
RETURNS     	: void - returns 0 to exit 
=========================================================================== */
void displayData(unsigned int ADDR, unsigned int PC, unsigned int MAR, unsigned int MBR,
				unsigned int IOAR,  unsigned int IOBR,  unsigned int CONTROL) {
					
	printf("BUS\t\t : 0x%02X", BUS);
	printf("\nADDR\t\t : 0x%03X", ADDR);
	printf("\nPC\t\t : 0x%03X", PC);
	printf("\nMAR\t\t : 0x%02X", MAR);
	printf("\nMBR\t\t : 0x%02X", MBR);
	printf("\nIOAR\t\t : 0x%02X", IOAR);
	printf("\nIOBR\t\t : 0x%02X", IOBR);
	printf("\nCONTROL\t\t : 0x%02X\n", CONTROL);
}



/* ============================================================================ 
FUNCTION    	: CU
DESCRIPTION 	: Perform operation to emulate the function of a control unit 
				using C/C++ program
ARGUMENTS   	: 
	Void   
RETURNS     	: int - returns result to exit 
=========================================================================== */
int CU() {
	unsigned int PC = 0, IR = 0, MAR = 0, MBR = 0, IOAR = 0, IOBR = 0, 
				 inst_code = 0, operand = 0, temp_FLAGS = 0, temp1;
	unsigned int Fetch, IO, Memory, i;
	int result = 0;
	
	MainMemory();
    if(Fetch == 1){
        IR = BUS;
    }
	while (1) {
		/* setting external control signals */ 
		CONTROL = inst_code; 	 	// setting the control signals
		IOM = 1; 				 	// Main Memory access 
		RW = 0; 					// read operation (fetch) 
		OE = 1; 				 	// allow data movement to/from memory 
		
		/* Fetching Instruction (2 cycle) */ 
		Fetch = 1; 			 	 	// set local control signal Fetch to 1 to signify fetch operation
		IO = 0; 
		Memory = 0;
		i = 1;
		
		/* fetching the upper byte */ 
		ADDR = PC; 
		MainMemory();				 // fetch upper byte 
		if(Fetch==1) { 
			printf("******************************************\n"); 
			printf("CU Operation\n"); 
			printf("PC \t\t : 0x%03x \n", PC);
			IR = (int) BUS; 		// load instruction to IR 
			IR = IR << 8; 			// shift IR 8 bits to the left 
			if(i)					// check for i (increment) if it is set
				PC++; 				// points to the lower byte 
			ADDR = PC;				// update address bus 
		} 
		
		/* fetching the lower byte */ 
		MainMemory(); 				// fetch lower byte 
		if(Fetch==1) 
		{ 
			IR = IR | BUS; 			// load the instruction on bus to lower 
			// 8 bits of IR 
			if(i)
				PC++; 				// points to the next instruction 
			printf("Fetching Instruction...\n");
			printf("IR \t\t : 0x%04x \n", IR);
		} 
		
		/* Instruction Decode */ 
		inst_code = IR >> 11; 		// get the 5-bit instruction code 
		operand = IR & 0x07FF; 		// get the 11-bit operand 
		printf("Instruction Code : 0x%02x\n", inst_code);
		printf("Operand \t : 0x%03x \n", operand);
		
		if(inst_code==0x01) 		// WM instruction (write to memory) 
		{ 		
			MAR = operand; 			// load the operand to MAR (address) 
			
			/* setting local control signals */ 
			Fetch = 0; 
			Memory = 1; 			// accessing memory 
			IO = 0; 
			
			/* setting external control signals */ 
			CONTROL = inst_code; 	// setting the control signals 
			IOM = 1; 				// Main Memory access 
			RW = 1; 				// write operation 
			OE = 1;					// allow data movement to/from memory 
			ADDR = MAR; 			// load MAR to Address Bus 
			
			if(Memory) 
				BUS = MBR;
			MainMemory(); 
		
			printf("Instruction \t : WM \n");
			printf("Writing data to memory...\n");
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		} 						 
		else if(inst_code==0x02) { 	// RM instruction (read from memory) 
			MAR = operand; 			// load the operand to MAR (address) 

			/* setting local control signals */ 
			Fetch = 0; 
			Memory = 1; 			// accessing memory 
			IO = 0; 
			
			/* setting external control signals */ 
			CONTROL = inst_code; 	// setting the control signals 
			IOM = 1; 				// Main Memory access 
			RW = 0; 				// read operation 
			OE = 1; 				// allow data movement to/from memory 
			ADDR = MAR; 
			
			MainMemory(); 
			if(Memory) 
				MBR = BUS; 
			
			printf("Instruction \t : RM \n");
			printf("Reading data from memory...\n");
			printf("MBR \t\t : 0x%02x \n", MBR);
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		} 
		else if(inst_code==0x04) { 	// RIO 
			IOAR = operand; 		// load the operand to MAR (address) 
			
			/* setting local control signals */ 
			Fetch = 0; 
			Memory = 0; 			// memory not accessed
			IO = 1; 				// IO accessed
			
			/* setting external control signals */ 
			CONTROL = inst_code;	// setting the control signals 
			IOM = 0;				// IO BUFFER Memory access 
			RW = 0;					// read operation 
			OE = 1; 			   	// allow data movement to/from memory 
			ADDR = IOAR; 		  	// load IOAR to Address Bus 
			
			IOMemory(); 		
			if(IO)
				IOBR = BUS; 		// IOBR owns the bus since control signal IO is 1 

			printf("Instruction \t : RIO \n");
			printf("Reading data from I/O Buffer...\n");
			printf("IOBR \t\t : 0x%02x \n", IOBR);
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		else if (inst_code==0x05) {	// WIO  
			IOAR = operand; 		// load the operand to MAR (address) 
			
			/* setting local control signals */ 
			Fetch = 0; 
			Memory = 0; 			// memory not accessed
			IO = 1;					// IO accessed
			
			/* setting external control signals */ 
			CONTROL = inst_code; 	// setting the control signals 
			IOM = 0; 				// IO BUFFER Memory access 
			RW = 1; 
			OE = 1; 
			ADDR = IOAR; 
			
			if(IO) 
				BUS = IOBR; 
			IOMemory(); 			// write data in data bus to IO
			SevenSegment();
			printf("Instruction \t : WIO \n");
			printf("Writing data to I/O Buffer...\n");
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		} 
		else if(inst_code==0x06) { 	//WB
			MBR = operand; 
			
			/* setting local control signals */ 
			Fetch = 0; 
			Memory = 0;             // memory not accessed
            IO = 0;                 // IO not accessed
			OE = 0; 
			
			printf("Instruction \t : WB \n");
			printf("Loading data to MBR...\n");
			printf("MBR \t\t : 0x%02x \n", MBR);
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x07) { 	// WIB 
			IOBR = operand; 
			
			/* setting local control signals */ 
			Fetch = 0; 
			Memory = 0; 
			IO = 0;
			OE = 0; 
			
			printf("Instruction \t : WIB \n");
			printf("Loading data to IOBR...\n");
			printf("IOBR \t\t : 0x%02x \n", IOBR);
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		else if(inst_code==0x09) { 	// WACC 
			
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; 
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 	// setup the Control Signals 
			IOM = 0; RW = 0; OE = 1; // operation neither "write" or ?read? 
			
			printf("Instruction \t : WACC \n");
			printf("Preparing ALU Calculations...\n");
			
			if(Memory) 
				BUS = MBR; 
			ALU(); // executes ALU operation 
	
			printf("Loading data from bus to ACC...\n");
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		else if(inst_code==0x0B) { 	// RACC 
			
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; 
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 		
			IOM = 0; RW = 0; OE = 0; 	
			
			printf("Instruction \t : RACC \n");
			printf("Preparing ALU Calculations...");
			
			ALU(); 
			if(Memory) 
				MBR = BUS; 
	
			printf("Reading data from ACC to BUS...\n");
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		else if(inst_code==0x0E) { 	// SWAP
			
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 1; 
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 		// setup the Control Signals 
			IOM = 0; RW = 0; OE = 0; 	// operation neither "write" or ?read? 
			
			if(Memory && IO) {
				temp1 = IOBR;
				IOBR = MBR;
				MBR = temp1;
			}

			printf("Instruction \t : SWAP \n");
			printf("IOBR and MBR data has been swapped...\n");
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}		
		else if(inst_code==0x1E) { 	//  ADD
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; 		// operation is bus access through MBR 
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 				// setup the Control Signals 
			IOM = 0; RW = 0; OE = 0; 			// operation neither "write" or ?read? 
			
			printf("Instruction \t : ADD \n");
			
			if(Memory) 
				BUS = MBR; 					
			ALU(); 
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x1D) { 	//  SUB
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; 		
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 		
			IOM = 0; RW = 0; OE = 0; 
			
			printf("Instruction \t : SUB \n");
			
			if(Memory) 
				BUS = MBR; 	// load data on BUS to MBR (ACC high byte 
			ALU(); 			// executes ALU operation 
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x1B) { 	//  MUL
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0;
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 	
			IOM = 0; RW = 0; OE = 0; 	
			
			printf("Instruction \t : MUL \n");
			
			if(Memory) 
				BUS = MBR; 	
			ALU(); 			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x1A) { 	//  AND
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; 
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 	
			IOM = 0; RW = 0; OE = 0; 	
			
			printf("Instruction \t : AND \n");
			printf("Preparing ALU Calculations...");
			
			if(Memory) 
				BUS = MBR; 	
			ALU(); 			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x19) { 	//  OR
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; 
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 	
			IOM = 0; RW = 0; OE = 0; 
			
			printf("Instruction \t : OR \n");
			
			if(Memory) 
				BUS = MBR; 
			ALU(); 			
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		else if(inst_code==0x18) { 	//  NOT
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 0; IO = 0; 
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 	
			IOM = 0; RW = 0; OE = 0; 
			
			printf("Instruction \t : NOT \n");
			
			ALU(); 		
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x17) { 	//  XOR
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0;
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 		
			IOM = 0; RW = 0; OE = 0; 	
			
			printf("Instruction \t : XOR \n");
			
			if(Memory) 
				BUS = MBR; 
			ALU(); 			
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x16) { 	//  SHL
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 0; IO = 0; 
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 		 
			IOM = 0; RW = 0; OE = 0; 	
			
			printf("Instruction \t : SHL \n");
			
			ALU(); 		
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x15) { 	//  SHR
		
			/* Setting local control signals */ 
			Fetch = 0; Memory = 0; IO = 0;
			
			/* Setting global control signals */ 
			CONTROL = inst_code; 		
			IOM = 0; RW = 0; OE = 0; 
			
			printf("Instruction \t : SHR \n");
			ALU(); 			
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		}
		
		else if(inst_code==0x03) { 	// BR
			PC = operand;
			
			/* setting local control signals */ 
			Fetch = 0; 
			Memory = 0; 			// NOT accessing memory 
			IO = 0; 				// NOT accessing IO
			OE = 0; 				// NO data movement to/from memory
			
			printf("Instruction \t : BR \n");
			printf("Branching to 0x%03x on the next cycle.\n", PC);
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		} 
		
		else if(inst_code==0x14) { 	// BRE 
			
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; 		// operation is bus access through MBR 
			
			/* Setting global control signals */ 
			CONTROL = 0x1D; 					// subtract ACC to BUS
			IOM = 0; RW = 0; OE = 0; 			// operation neither "write" or ?read? 
			
			if(Memory) 
			BUS = MBR; 
			
			printf("Instruction \t : BRE \n");
			printf("Comparing if ACC and BUS are equal through the ALU...");
			
			ALU(); 						// executes ALU operation 
			temp_FLAGS = FLAGS & 0x01;	// get ZF (bit 0)
			
			if(temp_FLAGS==0x01) 	{
				PC = operand;
				printf("ACC is equal to BUS. Branching to 0x%03x on the next cycle.\n", PC);
			}
			else printf("ACC is not equal to BUS. Branching will not proceed\n");
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		} 
		
		else if(inst_code==0x13) { 	// BRNE 
			
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; // operation is bus access through MBR 
			
			/* Setting global control signals */ 
			CONTROL = 0x1D; 			
			IOM = 0; RW = 0; OE = 0; 	
			
			if(Memory) 
			BUS = MBR; 
			
			printf("Instruction \t : BRNE \n");
			printf("Comparing if ACC and BUS are not equal throught the ALU...");
			
			ALU(); 		
			temp_FLAGS = FLAGS & 0x01;	// get ZF (bit 0)
			
			if(temp_FLAGS==0x00) 	{
				PC = operand;
				printf("ACC is not equal to BUS. Branching to 0x%03x on the next cycle.\n", PC);
			}
			else printf("ACC is equal to BUS. Branching will not proceed\n");
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		} 
		
		else if(inst_code==0x12) { 	// BRGT instruction 
			
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; // operation is bus access through MBR 
			
			/* Setting global control signals */ 
			CONTROL = 0x1D; 			// subtract ACC to BUS
			IOM = 0; RW = 0; OE = 0; 	// operation neither "write" or ?read? 
			
			if(Memory) 
			BUS = MBR; 				
			
			printf("Instruction \t : BRGT \n");
			printf("Comparing if ACC is greater than BUS...");
			
			ALU(); 					
			temp_FLAGS = FLAGS & 0x04;	// get SF (bit 2)
			
			if(temp_FLAGS==0x00) 	{
				PC = operand;
				printf("ACC is greater than BUS. Branching to 0x%03x on the next cycle.\n", PC);
			}
			else printf("ACC is not greater than BUS. Branching will not proceed\n");
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		} 
		
		else if(inst_code==0x11) { 	// BRLT instruction 
			
			/* Setting local control signals */ 
			Fetch = 0; Memory = 1; IO = 0; 
			
			/* Setting global control signals */ 
			CONTROL = 0x1D; 			
			IOM = 0; RW = 0; OE = 0; 	
			
			if(Memory) 
			BUS = MBR; 	
			
			printf("Instruction \t : BRLT \n");
			printf("Comparing if ACC is less than BUS...");
			
			ALU(); 		
			temp_FLAGS = FLAGS & 0x04;	
			
			if(temp_FLAGS==0x04) 	{
				PC = operand;
				printf("ACC is lesser than BUS. Branching to 0x%03x on the next cycle.\n", PC);
			}
			else printf("ACC is not esser than BUS. Branching will not proceed\n");
			
			displayData(ADDR,PC,MAR,MBR,IOAR,IOBR,CONTROL);
		} 
		
		else if(inst_code==0x1F) { 	// EOP instruction 
			result =1;
			
			/* setting local control signals */ 
			Fetch = 0; 
			Memory = 0; 
			IO = 0; 
			OE = 0; 
			MAR = 0; 
			MBR = 0; 
			IOAR = 0;
			IOBR = 0;
			
			printf("Instruction \t : EOP \n");
			break; 
		}
	}
	return result;
}

void InputSim(void) {
	int i;
	unsigned char data;
	for(i=7; i>=0; i--) {
		/* load source data */
		data = iOData[0x001];
		/* shift bit to LSB */
		data = data >> i;
		/* mask upper bits */
		data = data & 0x01;
		/* position bit */
		data = data << (7 - i);
		/* write bit to dest buffer */
		iOData[0x01F] = iOData[0x01F] | data;
 	}
} 

void SevenSegment() {
	printf("\n============ 7-SEGMENT DISPLAY ============\n\n");
	
    if(iOData[ADDR]==0x01)
    {
        printf("    X\n");
        printf("    X\n");
        printf("    X\n");
        printf("    X\n");
        printf("    X\n");
        printf("    X\n");
        printf("    X\n");
    }    
    else if(iOData[ADDR]==0x02)
    {
        printf(" XXXXX\n");
        printf("     X\n");
        printf("     X\n");
        printf(" XXXXX\n");
        printf(" X    \n");
        printf(" X    \n");
        printf(" XXXXX\n");
    }    
    else if(iOData[ADDR]==0x03)
    {
        printf(" XXXXX\n");
        printf("     X\n");
        printf("     X\n");
        printf(" XXXXX\n");
        printf("     X\n");
        printf("     X\n");
        printf(" XXXXX\n");
    }    
    else if(iOData[ADDR]==0x04)
    {
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" XXXXX\n");
        printf("     X\n");
        printf("     X\n");
        printf("     X\n");
    }
    else if(iOData[ADDR]==0x05)
    {
        printf(" XXXXX\n");
        printf(" X    \n");
        printf(" X    \n");
        printf(" XXXXX\n");
        printf("     X\n");
        printf("     X\n");
        printf(" XXXXX\n");
    }    
    else if(iOData[ADDR]==0x06)
    {
        printf(" XXXXX\n");
        printf(" X    \n");
        printf(" X    \n");
        printf(" XXXXX\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" XXXXX\n");
    }
    else if(iOData[ADDR]==0x07)
    {
        printf(" XXXXX\n");
        printf("     X\n");
        printf("     X\n");
        printf("     X\n");
        printf("     X\n");
        printf("     X\n");
        printf("     X\n");
    }  
    else if(iOData[ADDR]==0x08)
    {
        printf(" XXXXX\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" XXXXX\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" XXXXX\n");
    }
    else if(iOData[ADDR]==0x09)
    {
        printf(" XXXXX\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" XXXXX\n");
        printf("     X\n");
        printf("     X\n");
        printf(" XXXXX\n");
    }
    else if(iOData[ADDR]==0x00)
    {
        printf(" XXXXX\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" X   X\n");
        printf(" XXXXX\n");
    }
   // getc(stdin);
   
   printf("\n===========================================\n");
   
}

