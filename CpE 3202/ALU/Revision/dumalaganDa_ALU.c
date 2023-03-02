// DUMALAGAN_ALU

#include <stdio.h>

// AccumulOP1tor
unsigned char ACC = 0x0000;

// Flags
unsigned char C = 0, Z = 0, OF = 0, SF = 0;

// Function declarations

// Required functions
int ALU (unsigned char operand1, unsigned char operand2, unsigned char control_signals);
unsigned char twosComp (unsigned char data);
unsigned char setFlags (unsigned int ACC);
void printBin (int data, unsigned char data_width);
void printBoothsTable (unsigned char A, unsigned char Q, unsigned char Qneg1, unsigned char M);

// Arithmetic functions
unsigned char arithmeticAddition(unsigned char a, unsigned char b);
unsigned char arithmeticSubtraction(unsigned char minuend, unsigned char subtrahend);
unsigned char arithmeticMultiplication(unsigned char multiplicand, unsigned char multiplier);

unsigned char getLSB_8bit (unsigned char data);
unsigned char getMSB_8bit (unsigned char data);

// Logical functions
unsigned char logicalAND(unsigned char a, unsigned char b);
unsigned char logicalOR(unsigned char a, unsigned char b);
unsigned char logicalNOT(unsigned char a);
unsigned char logicalXOR(unsigned char a, unsigned char b);
unsigned char logicalShiftRight(unsigned char currentBits, unsigned char b);
unsigned char logicalShiftLeft(unsigned char currentBits, unsigned char b);

void printACC(int numberOfBits);

int main() {
    
	ALU(0x04,0x02,0x01); // Addition
	ALU(0x04,0x02,0x02); // Subtraction
	ALU(0x06,0x02,0x03); // Multiplication
	ALU(0x04,0x02,0x04); // AND
	ALU(0x04,0x02,0x05); // OR
	ALU(0x04,0x02,0x06); // NOT
	ALU(0x04,0x02,0x07); // XOR
	ALU(0x04,0x02,0x08); // Shift Right
	ALU(0x02,0x60,0x09); // Shift Left
    return 0;
}

// 
int ALU (unsigned char operand1, unsigned char operand2, unsigned char control_signals) {
    
    printf("\n----------------------------------------------------------------------\n");
    printf("Fetching operands...\n");
    printf("OP1 = ");
    printBin(operand1,8);
    printf("\nOP2 = ");
    printBin(operand2,8);
    printf("\n");
    
    // Select operation based on control_signals
    switch (control_signals)
    {
        // Addition
        case 0x01:
    		printf("Operation = ADD\n");
    		printf("Adding OP1 & OP2...\n");
            ACC = arithmeticAddition(operand1,operand2);
            printACC(16);
            break;
        
        // Subtraction (addition via 2's complement)
        case 0x02:
    		printf("Operation = SUB\n");
    		printf("Subtracting OP1 & OP2...\n");
            ACC = arithmeticSubtraction(operand1,operand2);
            printACC(16);
            break;
        
        // Multiplication (use Booth’s algorithm)    
        case 0x03:
    		printf("Operation = MUL\n");
            ACC = arithmeticMultiplication(operand1,operand2);
            printACC(16);
            break;
        
        // AND    
        case 0x04:
    		printf("Operation = AND\n");
            ACC = logicalAND(operand1,operand2);
            printACC(8);
            break;
        
        // OR    
        case 0x05:
    		printf("Operation = OR\n");
            ACC = logicalOR(operand1,operand2);
            printACC(8);
            break;
        
        // NOT (second operand will be 0x00)   
        case 0x06:
    		printf("Operation = NOT\n");
            ACC = logicalNOT(operand1);
            printACC(8);
            break;
        
        // XOR   
        case 0x07:
    		printf("Operation = XOR\n");
            ACC = logicalXOR(operand1,operand2);
            printACC(8);
            break;
        
        // Shift right (logical)    
        case 0x08:
    		printf("Operation = SHIFT R\n");
            ACC = logicalShiftRight(operand1,operand2);
            printACC(8);
            break;
        
        // Shift left (logical)
        case 0x09:
    		printf("Operation = SHIFT L\n");
            ACC = logicalShiftLeft(operand1,operand2);
            printACC(8);
            break;
        
        default: printf("Out of range!\n");  
    }
    setFlags(ACC);
	printf("ZF = %d, CF = %d, SF = %d, OF = %d\n", Z, C, SF, OF);
}

void printACC(int numberOfBits) {
	printf("\nACC = ");
    printBin(ACC,numberOfBits);
	printf("\n");   
}


// Function to 2’s complement a number
unsigned char twosComp (unsigned char data) {
	return ~(data) + 0x01;
}

// Function to set the zero, overflow, sign and carry flags
unsigned char setFlags (unsigned int ACC) {	
	if (ACC >= 0x1FF)
		C = 1;
	else
		C = 0;
		
	if (ACC == 0x0000)
		Z = 1;
	else 
		Z = 0;
	
	if (ACC >= 0xFF) 
		OF = 1;
	else 
		OF = 0;
	
	if ((ACC & 0x80) == 0x80) 
		SF = 1;
	else 
		SF = 0;
}

// Print binary characters of data
void printBin (int data, unsigned char data_width) {
	int i;
	int bit;
	
	for(i = (int)data_width-1; i>=0; i--) {
		bit = data >> i;
		if (logicalAND(bit,0x01))
			printf("1");
		else 
			printf("0");
	}
}

// Arithmetic functions
unsigned char arithmeticAddition(unsigned char a, unsigned char b) {
	return a + b;
}

unsigned char arithmeticSubtraction(unsigned char minuend, unsigned char subtrahend) {
	subtrahend = twosComp(subtrahend);
	return arithmeticAddition(minuend,subtrahend);
}

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

void printBoothsTable (unsigned char A, unsigned char Q, unsigned char Qneg1, unsigned char M) {
	printBin(A,8);
	printf(" ");
	printBin(Q,8);
	printf("   %d",(int)Qneg1);
	printf("   ");
	printBin(M,8);
	printf("\n");
}

unsigned char getLSB_8bit (unsigned char data) {
	return logicalAND(data,0x01);
}

unsigned char getMSB_8bit (unsigned char data) {
	return logicalAND((data >> 7),0x01);
}

// Logical functions
unsigned char logicalAND(unsigned char a, unsigned char b) {
	return a & b;
}

unsigned char logicalOR(unsigned char a, unsigned char b) {
	return a | b;
}

unsigned char logicalNOT(unsigned char a) {
	return ~(a);
}

unsigned char logicalXOR(unsigned char a, unsigned char b) {
	return a ^ b;
}

unsigned char logicalShiftRight(unsigned char currentBits, unsigned char b) {
	return currentBits >> b;	
}

unsigned char logicalShiftLeft(unsigned char currentBits, unsigned char b) {
	int bitLength = getBitLength(b);
	
	return currentBits << b;
}

int getBitLength(unsigned a) {
	int numberOfBits = 8;
	
	while (numberOfBits != 0) { 
		if (logicalAND(a,0x80) == 0x80)
			return numberOfBits;
		else {
			numberOfBits--;
			a = a << 0x01;
		}
	}
}
