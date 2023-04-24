// dumalaganDa_CPU-MEM

#include <stdio.h>
#include <stdio.h>
#include <conio.h>

// Data Movement -> Instruction code
#define WM 0x01		
#define RM 0x02 	
#define RIO 0x04 	
#define WIO 0x05 	
#define WB 0x06 	
#define WIB 0x07 
#define WACC 0x09
#define RACC 0x0B
#define SWAP 0x0E

// Arithmetic & Logical -> Instruction code
#define ADD 0x1E
#define SUB 0x1D
#define MUL 0x1B
#define AND 0x1A
#define OR 0x19
#define NOT 0x18
#define XOR 0x17
#define SHL 0x16
#define SHR 0x15

// Program control -> Instruction code
#define BR 0x03 
#define BRE 0x14
#define BRNE 0x13
#define BRGT 0x12
#define BRLT 0x11
#define EOP 0x1F 

// Global variables -> Flags
unsigned char FLAGS = 0x00;

// Declaration of I/O memory (latches and buffers)
unsigned char iOData[32]; // 8-bit data x 32 (16 latches and 16 buffers)

// Memory chip declaration 
long A1[32], A2[32], A3[32], A4[32], A5[32], A6[32], A7[32], A8[32]; // chip group A
long B1[32], B2[32], B3[32], B4[32], B5[32], B6[32], B7[32], B8[32]; // chip group B

// Global variables -> Buses
unsigned int ADDR = 0x000; 
unsigned char BUS = 0x00; 	

// Global variables -> External control signals
unsigned char CONTROL = 0x00;
int IOM = 0;
int RW = 0;
int OE = 0;

// Function prototypes -> ALU: Required functions
int ALU(void);
unsigned char twosComp(unsigned char data);
unsigned char setFlags(unsigned int ACC);
void printBin(int data, unsigned char data_width);
void printBoothsTable(unsigned char A, unsigned char Q, unsigned char Qneg1, unsigned char M);

// Function prototypes -> ALU: Arithmetic functions
unsigned char arithmeticAddition(unsigned char op1, unsigned char op2);
unsigned char arithmeticSubtraction(unsigned char minuend, unsigned char subtrahend);
unsigned char arithmeticMultiplication(unsigned char multiplicand, unsigned char multiplier);

unsigned char getLSB_8bit(unsigned char data);
unsigned char getMSB_8bit(unsigned char data);

// Function prototypes -> ALU: Logical functions
unsigned char logicalAND(unsigned char op1, unsigned char op2);
unsigned char logicalOR(unsigned char op1, unsigned char op2);
unsigned char logicalNOT(unsigned char op);
unsigned char logicalXOR(unsigned char op1, unsigned char op2);
unsigned char logicalShiftRight(unsigned char currentBits, unsigned char numberOfShifts);
unsigned char logicalShiftLeft(unsigned char currentBits, unsigned char numberOfShifts);

void printBoothsTable (unsigned char A, unsigned char Q, unsigned char Qneg1, unsigned char M);
void printACC(unsigned int ACC, int numberOfBits);

// Function prototypes -> CU: Control Unit
int CU(void);
void initMemory(void);
void MainMemory(void);
void IOMemory(void);

void InputSim(void);
void SevenSegment(void);


/*======================================================================================================================================================*/
int main(void) {
	initMemory(); 	// this function populates the memory
	if (CU() == 1) 	// check the return value
		printf("\n\nProgram run successfully!");
	else
		printf("\n\nError encountered, program terminated!");
	return 0;
}

/*======================================================================================================================================================*/
int ALU(void) {
	static int ACC = 0x0000;
	
    printf("\n------------------------------[@ ALU]---------------------------------\n");
    printf("Fetching operands...\n");
    printf("OP1 = ");
    printBin(ACC,8);
    printf("\nOP2 = ");
    printBin(BUS,8);
    printf("\n");
    
    // Select operation based on CONTROL
    switch (CONTROL)
    {
        // Addition
        case ADD:
    		printf("Operation = ADD\n");
    		printf("Adding OP1 & OP2...\n");
            ACC = arithmeticAddition(ACC,BUS);
            printACC(ACC, 16);
            break;
        
        // Subtraction (addition via 2's complement)
        case SUB:
    		printf("Operation = SUB\n");
    		printf("Subtracting OP1 & OP2...\n");
            ACC = arithmeticSubtraction(ACC,BUS);
            printACC(ACC, 16);
            break;
        
        // Multiplication (use Booth's algorithm)    
        case MUL:
    		printf("Operation = MUL\n");
            ACC = arithmeticMultiplication(ACC,BUS);
            printACC(ACC, 16);
            break;
        
        // AND    
        case AND:
    		printf("Operation = AND\n");
            ACC = logicalAND(ACC,BUS);
            printACC(ACC, 8);
            break;
        
        // OR    
        case OR:
    		printf("Operation = OR\n");
            ACC = logicalOR(ACC,BUS);
            printACC(ACC, 8);
            break;
        
        // NOT (second operand will be 0x00)   
        case NOT:
    		printf("Operation = NOT\n");
            ACC = logicalNOT(ACC);
            printACC(ACC, 8);
            break;
        
        // XOR   
        case XOR:
    		printf("Operation = XOR\n");
            ACC = logicalXOR(ACC,BUS);
            printACC(ACC, 8);
            break;
        
        // Shift right (logical)    
        case SHR:
    		printf("Operation = SHIFT R\n");
            ACC = logicalShiftRight(ACC,BUS);
            printACC(ACC, 8);
            break;
        
        // Shift left (logical)
        case SHL:
    		printf("Operation = SHIFT L\n");
            ACC = logicalShiftLeft(ACC,BUS);
            printACC(ACC, 8);
            break;
		
		// WACC
		case WACC:
    		printf("\nWACC\n");
			ACC = (unsigned char) BUS;
            printACC(ACC, 16);
			break;

		// RACC
		case RACC:
    		printf("RACC\n");
			BUS = ACC;
            printACC(ACC, 16);
			break;

		// BRE
		case BRE:
    		printf("\nBRE\n");
        	ACC = (ACC + twosComp(BUS)) & 0x00FF; 
            printACC(ACC, 16);
			break;

		// BRNE
		case BRNE:
    		printf("\nBRNE\n");
        	ACC = (ACC + twosComp(BUS)) & 0x00FF;
            printACC(ACC, 16);
			break;

		// BRGT
		case BRGT:
    		printf("\nBRGT\n");
        	ACC = (ACC + twosComp(BUS)) & 0x00FF;
            printACC(ACC, 16);
			break;

		// BRLT
		case BRLT:
    		printf("\nBRLT\n");
        	ACC = (ACC + twosComp(BUS)) & 0x00FF;
            printACC(ACC, 16);
			break;

        default: printf("Out of range!\n");  
    }
    setFlags(ACC);
	printf("ACC = 0x%04X\n", ACC);
	printf("ZF = %d, CF = %d, SF = %d, OF = %d", FLAGS & 0x01, (FLAGS >> 1) & 0x01, (FLAGS >> 2) & 0x01, (FLAGS >> 7) & 0x01);
    printf("\n-----------------------------[exit ALU]-------------------------------");
}

/*======================================================================================================================================================*/
unsigned char setFlags(unsigned int ACC) {
	FLAGS = FLAGS^FLAGS;
	if (CONTROL == 0x17 || CONTROL == 0x18 || CONTROL == 0x19 || CONTROL == 0x1A)
        FLAGS = FLAGS & 0x01;
	if (CONTROL == 0x15 || CONTROL == 0X16)
		FLAGS = FLAGS & 0X02;
	if (ACC == 0x0000) 
		FLAGS = FLAGS | 0x01;
	if (ACC > 0x7F) 
		FLAGS = FLAGS | 0x80;
	if ((ACC & 0x0080) == 0x0080)
		FLAGS = FLAGS | 0X04;
	if (ACC > 0xFF)
		FLAGS = FLAGS | 0x02;
}

/*======================================================================================================================================================*/
void printACC(unsigned int ACC, int numberOfBits) {
	printf("\nACC = ");
    printBin(ACC,numberOfBits);
	printf("\n");   
}

/*======================================================================================================================================================*/
// Function to 2's complement a number
unsigned char twosComp(unsigned char data) {
	return ~(data) + 0x01;
}

/*======================================================================================================================================================*/
// Print binary characters of data
void printBin(int data, unsigned char data_width) {
	int i;
	int bit;
	
	for (i=(int)data_width-1; i>=0; i--) {
		bit = data >> i;
		if (logicalAND(bit,0x01))
			printf("1");
		else 
			printf("0");
	}
}

/*======================================================================================================================================================*/
unsigned char arithmeticAddition(unsigned char op1, unsigned char op2) {
	return op1 + op2;
}

/*======================================================================================================================================================*/
unsigned char arithmeticSubtraction(unsigned char minuend, unsigned char subtrahend) {
	subtrahend = twosComp(subtrahend);
	return arithmeticAddition(minuend,subtrahend);
}

/*======================================================================================================================================================*/
unsigned char arithmeticMultiplication(unsigned char multiplicand, unsigned char multiplier) {
	// using Booth's Algorithm
	
	unsigned char A_LSB = 0x00;
	unsigned char A_MSB = 0x00;
	unsigned char ACC_local = 0x0000;
		
	// Load values
	unsigned char A = 0x00;
	unsigned char Q = multiplier; 
	unsigned char Qneg1 = 0x00;
	unsigned char Qsub0 = getLSB_8bit(Q);
	unsigned char M = multiplicand;
	
	printf("\n    A        Q     Q_-1     M           Comments\n");
	printBoothsTable(A,Q,Qneg1,M);
	
	int i;
	for (i=0; i<8; i++) {
		printf("\n\t\t\t\t\t[%d] Since %d %d\n",i+1, (int)Qsub0, (int)Qneg1);
		if ((int)Qsub0 == 1 && (int)Qneg1 == 0) {
			printf("\t\t\t\t\tA <- A-M\n");
			A = arithmeticSubtraction(A,M);
			printBoothsTable(A,Q,Qneg1,M);
		}
		else if ((int)Qsub0 == 0 && (int)Qneg1 == 1) {
			printf("\t\t\t\t\tA <- A+M\n");
			A = arithmeticAddition(A,M);
			printBoothsTable(A,Q,Qneg1,M);
		}
		
		A_MSB = getMSB_8bit(A);
		A_LSB = getLSB_8bit(A);
		Qneg1 = getLSB_8bit(Q);
		
		
		// Arithmetic Shift Right
		printf("\t\t\t\t\tPerform arithmetic shift right\n");
		A = logicalOR((A >> 1),(A_MSB << 7));
		Q = logicalOR((Q >> 1),(A_LSB << 7));	
		Qsub0 = getLSB_8bit(Q);
		
		printBoothsTable(A,Q,Qneg1,M);
	}
	
	ACC_local = A;
	ACC_local = ACC_local << 8;
	return logicalOR(ACC_local,Q);
}

/*======================================================================================================================================================*/
void printBoothsTable (unsigned char A, unsigned char Q, unsigned char Qneg1, unsigned char M) {
	printBin(A,8);
	printf(" ");
	printBin(Q,8);
	printf("   %d",(int)Qneg1);
	printf("   ");
	printBin(M,8);
	printf("\n");
}

/*======================================================================================================================================================*/
unsigned char getLSB_8bit (unsigned char data) {
	return logicalAND(data,0x01);
}

/*======================================================================================================================================================*/
unsigned char getMSB_8bit (unsigned char data) {
	return logicalAND((data >> 7),0x01);
}

// Logical functions

/*======================================================================================================================================================*/
unsigned char logicalAND(unsigned char op1, unsigned char op2) {
	return op1 & op2;
}

/*======================================================================================================================================================*/
unsigned char logicalOR(unsigned char op1, unsigned char op2) {
	return op1 | op2;
}

/*======================================================================================================================================================*/
unsigned char logicalNOT(unsigned char op) {
	return ~(op);
}

/*======================================================================================================================================================*/
unsigned char logicalXOR(unsigned char op1, unsigned char op2) {
	return op1 ^ op2;
}

/*======================================================================================================================================================*/
unsigned char logicalShiftRight(unsigned char currentBits, unsigned char numberOfShifts) {
	return currentBits >> numberOfShifts;	
}

/*======================================================================================================================================================*/
unsigned char logicalShiftLeft(unsigned char currentBits, unsigned char numberOfShifts) {	
	return currentBits << numberOfShifts;
}

/*======================================================================================================================================================*/
int getBitLength(unsigned data) {
	int numberOfBits = 8;
	
	while (numberOfBits != 0) { 
		if (logicalAND(data,0x80) == 0x80)
			return numberOfBits;
		else {
			numberOfBits--;
			data = data << 0x01;
		}
	}
}

/*======================================================================================================================================================*/
void MainMemory(void) {
	unsigned char row, col, cs;
    if (IOM) {
        if (OE) {
            // Decoding address data
	 	    col = ADDR & 0x001F;
	 	    row = (ADDR >> 5) & 0x001F;
	 	    cs = ADDR >> 10;
	 	    
            if (RW) { // MEMORY WRITE								
                if (cs){   							
                    B1[row] = B1[row] | ((BUS & 0x01) << col); 			
                   	B2[row] = B2[row] | (((BUS & 0x02) >> 1) << col);	
                    B3[row] = B3[row] | (((BUS & 0x04) >> 2) << col);		
               		B4[row] = B4[row] | (((BUS & 0x08) >> 3) << col);		
                    B5[row] = B5[row] | (((BUS & 0x10) >> 4) << col);	
                   	B6[row] = B6[row] | (((BUS & 0x20) >> 5) << col);		
                    B7[row] = B7[row] | (((BUS & 0x40) >> 6) << col);		
                 	B8[row] = B8[row] | (((BUS & 0x80) >> 7) << col);	
                }
				else if (cs == 0) {    								
                    A1[row] = A1[row] | ((BUS & 0x01) << col);			
                    A2[row] = A2[row] | (((BUS & 0x02) >> 1) << col);		
                    A3[row] = A3[row] | (((BUS & 0x04) >> 2) << col);		
                    A4[row] = A4[row] | (((BUS & 0x08) >> 3) << col);		
                    A5[row] = A5[row] | (((BUS & 0x10) >> 4) << col);	
                    A6[row] = A6[row] | (((BUS & 0x20) >> 5) << col);		
                    A7[row] = A7[row] | (((BUS & 0x40) >> 6) << col);		
                    A8[row] = A8[row] | (((BUS & 0x80) >> 7) << col);	
                } 
            }
			else if (RW == 0) { // MEMORY READ
                BUS = BUS ^ BUS;     									
                if (cs == 1) {   							
                    BUS = BUS | ((B1[row]>>col) & 0x0001);				
                    BUS = BUS | (((B2[row]>>col) & 0x0001) << 1);	
                    BUS = BUS | (((B3[row]>>col) & 0x0001) << 2);		
                    BUS = BUS | (((B4[row]>>col) & 0x0001) << 3);	
                    BUS = BUS | (((B5[row]>>col) & 0x0001) << 4);		
                    BUS = BUS | (((B6[row]>>col) & 0x0001) << 5);	
                    BUS = BUS | (((B7[row]>>col) & 0x0001) << 6);		
                    BUS = BUS | (((B8[row]>>col) & 0x0001) << 7);		
                }
				else if (cs == 0) {    								
                    BUS = BUS | ((A1[row]>>col) & 0x0001);			
                    BUS = BUS | (((A2[row]>>col) & 0x0001) << 1);	
                    BUS = BUS | (((A3[row]>>col) & 0x0001) << 2);	
                    BUS = BUS | (((A4[row]>>col) & 0x0001) << 3);	
                    BUS = BUS | (((A5[row]>>col) & 0x0001) << 4);	
                    BUS = BUS | (((A6[row]>>col) & 0x0001) << 5);	
                    BUS = BUS | (((A7[row]>>col) & 0x0001) << 6);	
                    BUS = BUS | (((A8[row]>>col) & 0x0001) << 7);	
                }
            }   
        }
    }
}

/*======================================================================================================================================================*/
void IOMemory(void) {
	if (OE) { // check if output is enabled
		if (RW && !IOM) { // check if memory write and IO Memory access
			if (ADDR >= 0x000 && ADDR <= 0x00F) // check the address if valid
				iOData[ADDR] = BUS; // write data in BUS to IO Memory
		} 
		else {
			if(ADDR >= 0x010 && ADDR <= 0x01F) // check the address if valid
				BUS = iOData[ADDR]; // load data to BUS
		}
	}
}

/*======================================================================================================================================================*/
/* Memory initialization function */
void initMemory(void) {
	printf("Initializing Main Memory...\n");
	
	/* Setting the global control signals */ 
	IOM = 1, RW = 1, OE = 1;
	
	/* Format ADDR=<program memory address>; BUS=<instruction>; MainMemory() */
	/* Calling MainMemory() writes the instruction to memory */
	ADDR=0x000; BUS=0x38; MainMemory(); 
	ADDR=0x001; BUS=0x09; MainMemory();
	ADDR=0x002; BUS=0x28; MainMemory(); 
	ADDR=0x003; BUS=0x00; MainMemory();
	ADDR=0x004; BUS=0x38; MainMemory();
	ADDR=0x005; BUS=0x08; MainMemory();
	ADDR=0x006; BUS=0x28; MainMemory();	
	ADDR=0x007; BUS=0x00; MainMemory();
	ADDR=0x008; BUS=0x38; MainMemory();
	ADDR=0x009; BUS=0x07; MainMemory();
	ADDR=0x00A; BUS=0x28; MainMemory();
	ADDR=0x00B; BUS=0x00; MainMemory();
	ADDR=0x00C; BUS=0x38; MainMemory();
	ADDR=0x00D; BUS=0x06; MainMemory();
	ADDR=0x00E; BUS=0x28; MainMemory();
	ADDR=0x00F; BUS=0x00; MainMemory();
	ADDR=0x010; BUS=0x38; MainMemory();
	ADDR=0x011; BUS=0x05; MainMemory();
	ADDR=0x012; BUS=0x28; MainMemory();
	ADDR=0x013; BUS=0x00; MainMemory();
	ADDR=0x014; BUS=0x38; MainMemory();
	ADDR=0x015; BUS=0x04; MainMemory();
	ADDR=0x016; BUS=0x28; MainMemory();
	ADDR=0x017; BUS=0x00; MainMemory();
	ADDR=0x018; BUS=0x38; MainMemory();
	ADDR=0x019; BUS=0x03; MainMemory();
	ADDR=0x01A; BUS=0x28; MainMemory();
	ADDR=0x01B; BUS=0x00; MainMemory();
	ADDR=0x01C; BUS=0x38; MainMemory();
	ADDR=0x01D; BUS=0x02; MainMemory();
	ADDR=0x01E; BUS=0x28; MainMemory();
	ADDR=0x01F; BUS=0x00; MainMemory();
	ADDR=0x020; BUS=0x38; MainMemory();
	ADDR=0x021; BUS=0x01; MainMemory();
	ADDR=0x022; BUS=0x28; MainMemory();
	ADDR=0x023; BUS=0x00; MainMemory();
	ADDR=0x024; BUS=0x38; MainMemory();
	ADDR=0x025; BUS=0x00; MainMemory();
	ADDR=0x026; BUS=0x28; MainMemory();
	ADDR=0x027; BUS=0x00; MainMemory();
	ADDR=0x028; BUS=0xF8; MainMemory();
}

/*======================================================================================================================================================*/
/* Control unit function */
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
    
    // Internal control signals
    int Fetch = 0;
	int IO = 0;
	int Memory = 0;
	
	if (Fetch){
        IR = BUS;
    } 

	while(!exitCode){
    	printf("\n==============================[@ CU]==================================");
    	printf("\nPC\t\t  : 0x%03X", PC);
		/* Setting external control signals */
		CONTROL = inst_code;	// setting the control signals
		IOM = 1; 				// Main Memory access
		RW = 0; 				// read operation (fetch)
		OE = 1; 				// allow data movement to/from memory
		
		/* Fetching Instruction (2 cycle) */
		Fetch = 1; 	// set local control signal Fetch to 1 to signify fetch operation
		IO = 0;
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
		printf("\nIR\t\t  : 0x%04X", IR);

		/* Decoding instruction */
		inst_code = IR >> 11; 	// get the 5-bit instruction code
		operand = IR & 0x07FF; 	// get the 11-bit operand
		printf("\nOperand\t\t  : 0x%03X", operand);
		printf("\nInstruction Code  : 0x%02X", inst_code);
		printf("\nInstruction\t  : ");
	

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

			printf("\n\nWriting data to memory...");
			ADDR = MAR; 			// load MAR to Address Bus
			if (Memory)
				BUS = MBR; 			// MBR owns the bus since control signal Memory is 1
			MainMemory(); 			// write data in data bus to memory
		}


		/* RM instruction (read from memory given a memory address) */
		else if (inst_code == RM) {
			printf("RM");
			MAR = operand;

			/* Setting local control signals */
			Fetch = 0;
			Memory = 1; 			// accessing memory
			IO = 0;		

			/* Setting external control signals */
			CONTROL = inst_code; 	// setting the control signals
			IOM = 1; 				// Main Memory access
			RW = 0; 				// read operation
			OE = 1; 				// allow data movement to/from memory
			
			printf("\n\nReading data from memory...");
			ADDR = MAR; 			// load MAR to Address Bus
			MainMemory(); 			
			if (Memory)
				MBR = BUS; 			// MBR owns the bus since control signal Memory is 1
			
			/* Echo */
			printf("\nMBR\t\t  : 0x%02X", MBR);
		}


		/* BR instruction (branch) */
		else if (inst_code == BR) {
			printf("BR");
			PC = operand;
			CONTROL = inst_code;
			OE = 1;
			
			/* Echo */
			printf("\n\nBranch to 0x%03X on next cycle", PC);
			getch();
		}


		/* RIO instruction (read from I/O buffer given a memory address) */
		else if (inst_code == RIO){
			printf("RIO");
			IOAR = operand;

			/* Setting local control signals */
			Fetch = 0;
			Memory = 0; 			
			IO = 1;					// accessing I/O		

			/* Setting external control signals */
			CONTROL = inst_code; 	// setting the control signals
			IOM = 0; 				// I/O access
			RW = 0; 				// read operation
			OE = 1; 				// allow data movement to/from memory
			
			printf("\n\nReading from I/O buffer...");
			ADDR = IOAR; 			// load IOAR to Address Bus
			IOMemory(); 			
			if (IO)
				IOBR = BUS; 			// IOBR owns the bus since control signal Memory is 1

			/* Echo */
			printf("\nIOBR\t\t  : 0x%02X", IOBR);
		}


		/* WIO instruction (write to IO buffer given a memory address) */
		else if (inst_code == WIO) { 
			printf("WIO");
			IOAR = operand; 		// load the operand of WIO (memory address) to IOAR

			/* Setting local control signals */
			Fetch = 0;
			Memory = 0; 			
			IO = 1;					// accessing I/O		

			/* Setting external control signals */
			CONTROL = inst_code; 	// setting the control signals
			IOM = 0; 				// I/O access
			RW = 1; 				// write operation
			OE = 1; 				// allow data movement to/from memory
			
			printf("\n\nWriting to IO buffer...");
			ADDR = IOAR; 			// load IOAR to Address Bus
			if (IO)
				BUS = IOBR; 			// IOBR owns the bus since control signal Memory is 1
			IOMemory(); 			

			/* Echo */
			SevenSegment();
			printf("\nIOBR\t\t  : 0x%02X", IOBR);
		}


		/* WB instruction (write data to MBR) */
		else if (inst_code == WB) {
			printf("WB");
			
			/* Setting local control signals */
			Fetch = 0;
			Memory = 1; 			// accessing memory
			IO = 0;
		
			/* Setting external control signals */
			CONTROL = inst_code; 	// setting the control signals
			IOM = 1; 				// Main Memory access
			RW = 1; 				// write operation
			OE = 1; 				// allow data movement to/from memory

			printf("\n\nLoading data to MBR...");
			ADDR = PC-1; 			
			MainMemory(); 			// write data in data bus to memory
			if (Memory)
				MBR = BUS; 			// MBR owns the bus since control signal Memory is 1
			
			/* Echo */
			printf("\nMBR\t\t  : 0x%02X", MBR);	
		}


		/* WIB instruction (write data to IOBR) */
		else if (inst_code == WIB) {
			printf("WIB");

			/* Setting local control signals */
			Fetch = 0;
			Memory = 0; 			
			IO = 1;					// accessing I/O
		
			/* Setting external control signals */
			CONTROL = inst_code; 	// setting the control signals
			IOM = 0; 				// I/O access
			RW = 1; 				// write operation
			OE = 1; 				// allow data movement to/from memory

			printf("\n\nLoading data to IOBR...");
			ADDR = PC-1; 			
			if (IO)
				IOBR = BUS; 			// IOBR owns the bus since control signal I/O is 1
			IOMemory(); 			// write data in data bus to memory
			
			/* Echo */
			printf("\nIOBR\t\t  : 0x%02X", IOBR);
		}


		/* EOP instruction (end of program) */
		else if (inst_code == EOP) {
			printf("EOP");
			exitCode = 1;
			printf("\nEnd of program.");
			getch();	
			return exitCode;		
		}


		/* ADD/ SUB/ MUL/ AND/ OR/ NOT/ XOR/ SHL/ SHR/ WACC */
		else if (inst_code == ADD || inst_code == SUB || inst_code == MUL ||
				 inst_code == AND || inst_code == OR || inst_code == NOT ||
				 inst_code == XOR || inst_code == SHL || inst_code == SHR ||
				 inst_code == WACC) {
			switch (inst_code) {
				case ADD: printf("ADD"); break;
				case SUB: printf("SUB"); break;
				case MUL: printf("MUL"); break;
				case AND: printf("AND"); break;
				case OR: printf("OR"); break;
				case NOT: printf("NOT"); break;
				case XOR: printf("XOR"); break;
				case SHL: printf("SHL"); break;
				case SHR: printf("SHR"); break;
				case WACC: printf("WACC"); printf("\nWriting data on bus to ACC..."); break;
			}
			
			/* Setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing memory
			IO = 0;						
 
			/* Setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			
			if (Memory)
				BUS = MBR;	
			ALU();
			
			/* Echo */
			printf("\nMBR\t\t  : 0x%02X", MBR);
		}


		/* RACC */
		else if (inst_code == RACC) {
			printf("RAC");
			
			/* Setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing memory
			IO = 0;						
 
			/* Setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			
			if (Memory)
				MBR = BUS;	
				
			printf("\nReading ACC to bus...");
			ALU();
			
			/* Echo */
			printf("\nMBR\t\t  : 0x%02X", MBR);
		}


		/* SWAP */
		else if (inst_code == SWAP) {
			unsigned char temp;
			printf("SWAP");
			
			/* Setting local control signals */
			Fetch = 0;
			Memory = 1; 				
			IO = 1;						
 
			/* Setting external control signals */
			CONTROL = inst_code; 			// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			
			// Swapping MBR <-> IOBR
			printf("\nSwapping MBR and IOBR...");
			temp = MBR;
            MBR = IOBR;
            IOBR = temp;
			
			/* Echo */
			printf("\nMBR\t\t  : 0x%02X", MBR);
			printf("\nIOBR\t\t  : 0x%02X", IOBR);
		}


		/* BRE/ BRNE/ BRGT/ BRLT */
		else if (inst_code == BRE || inst_code == BRNE || inst_code == BRGT ||
				 inst_code == BRLT) {
			switch (inst_code) {
				case BRE: printf("BRE"); break;
				case BRNE: printf("BRNE"); break;
				case BRGT: printf("BRGT"); break;
				case BRLT: printf("BRLT"); break;
			}
			
			/* Setting local control signals */
			Fetch = 0;
			Memory = 1; 					// accessing memory
			IO = 0;						
 
			/* Setting external control signals */
			CONTROL = 0x1D; 				// setting the control signals
			IOM = 0; 						// Main Memory access
			RW = 0;							// write operation
			OE = 0; 						// allow data movement to/from memory
			
			ADDR = operand;
			if (Memory)
				BUS = MBR;
			
			printf("\nComparing ACC and BUS...");
			ALU();

			switch (inst_code) {
				case BRE: 
					if ((FLAGS & 0x01)) { // Z
						PC = ADDR;
						OE = 1;
						printf("\n\nBranch to 0x%03X on next cycle", PC);
					}
					break;
				case BRNE: 
					if (!(FLAGS & 0x01)) { // !Z
						PC = ADDR;
						OE = 1;
						printf("\n\nBranch to 0x%03X on next cycle", PC);
					}
					break;
				case BRGT: 
					if (!((FLAGS >> 2) & 0x01)) { // !SF
						PC = ADDR;
						OE = 1;
						printf("\n\nBranch to 0x%03X on next cycle", PC);
					}
					break;
				case BRLT: 
					if (((FLAGS >> 2) & 0x01)) { // SF
						PC = ADDR;
						OE = 1;
						printf("\n\nBranch to 0x%03X on next cycle", PC);
					}
					break;
			}
		}
		
		printf("\n\nBUS\t\t  : 0x%02X", BUS);
		printf("\nADDR\t\t  : 0x%03X", ADDR);
		printf("\nNext PC\t\t  : 0x%03X", PC);
		printf("\nMAR\t\t  : 0x%02X", MAR);
		printf("\nMBR\t\t  : 0x%02X", MBR);
		printf("\nIOAR\t\t  : 0x%02X", IOAR);
		printf("\nIOBR\t\t  : 0x%02X", IOBR);
		printf("\nCONTROL\t\t  : 0x%02X", CONTROL);
		getch();
	}
}

/*======================================================================================================================================================*/
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

/*======================================================================================================================================================*/
void SevenSegment()
{
    printf("\n\n************************[Seven Segment Display]***********************\n");
    if(iOData[ADDR]==0x01)
    {
        printf("\t\t\t\t    X\n");
        printf("\t\t\t\t    X\n");
        printf("\t\t\t\t    X\n");
        printf("\t\t\t\t    X\n");
        printf("\t\t\t\t    X\n");
        printf("\t\t\t\t    X\n");
        printf("\t\t\t\t    X\n");
    }    
    else if(iOData[ADDR]==0x02)
    {
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t X    \n");
        printf("\t\t\t\t X    \n");
        printf("\t\t\t\t XXXXX\n");
    }    
    else if(iOData[ADDR]==0x03)
    {
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t XXXXX\n");
    }    
    else if(iOData[ADDR]==0x04)
    {
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
    }
    else if(iOData[ADDR]==0x05)
    {
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t X    \n");
        printf("\t\t\t\t X    \n");
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t XXXXX\n");
    }    
    else if(iOData[ADDR]==0x06)
    {
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t X    \n");
        printf("\t\t\t\t X    \n");
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t XXXXX\n");
    }
    else if(iOData[ADDR]==0x07)
    {
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
    }  
    else if(iOData[ADDR]==0x08)
    {
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t XXXXX\n");
    }
    else if(iOData[ADDR]==0x09)
    {
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t     X\n");
        printf("\t\t\t\t XXXXX\n");
    }
    else if(iOData[ADDR]==0x00)
    {
        printf("\t\t\t\t XXXXX\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t X   X\n");
        printf("\t\t\t\t XXXXX\n");
    }
    printf("**********************************************************************\n");
}
