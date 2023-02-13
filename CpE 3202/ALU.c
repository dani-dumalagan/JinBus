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

unsigned char arithmeticShiftRight(unsigned char currentBits, unsigned char MSB);


int main() {
    
	ALU(0x04,0x02,0x01); // Addition
	ALU(0x04,0x02,0x02); // Subtraction
	ALU(0x04,0x02,0x03); // Multiplication
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
    
    printf("\n*************************\n");
    printf("Fetching operands...\n");
    printf("OP1 = %u\n", operand1);
    printf("OP2 = %u\n", operand2);
    // Select operation based on control_signals
    switch (control_signals)
    {
        // Addition
        case 0x01:
    		printf("Operation = ADD\n");
            ACC = arithmeticAddition(operand1,operand2);
            break;
        
        // Subtraction (addition via 2's complement)
        case 0x02:
    		printf("Operation = SUB\n");
            ACC = arithmeticSubtraction(operand1,operand2);
            break;
        
        // Multiplication (use Booth’s algorithm)    
        case 0x03:
    		printf("Operation = MUL\n");
            ACC = arithmeticMultiplication(operand1,operand2);
            break;
        
        // AND    
        case 0x04:
    		printf("Operation = AND\n");
            ACC = logicalAND(operand1,operand2);
            break;
        
        // OR    
        case 0x05:
    		printf("Operation = OR\n");
            ACC = logicalOR(operand1,operand2);
            break;
        
        // NOT (second operand will be 0x00)   
        case 0x06:
    		printf("Operation = NOT\n");
            ACC = logicalNOT(operand1);
            break;
        
        // XOR   
        case 0x07:
    		printf("Operation = XOR\n");
            ACC = logicalXOR(operand1,operand2);
            break;
        
        // Shift right (logical)    
        case 0x08:
    		printf("Operation = SHIFT R\n");
            ACC = logicalShiftRight(operand1,operand2);
            break;
        
        // Shift left (logical)
        case 0x09:
    		printf("Operation = SHIFT L\n");
            ACC = logicalShiftLeft(operand1,operand2);
            break;
        
        default: printf("Out of range!\n");  
    }
    // Print ACC value
    printf("ACC = %u", ACC);
    
    
}

// Function to 2’s complement a number
unsigned char twosComp (unsigned char data) {
	return ~(data) + 0x01;
}

// Function to set the zero, overflow, sign and carry flags
unsigned char setFlags (unsigned int ACC) {
	
}

// Print binary characters of data
void printBin (int data, unsigned char data_width) {
	
}

// Arithmetic functions
unsigned char arithmeticAddition(unsigned char a, unsigned char b) {
	printf("Adding OP1 and OP2...\n");
	return a + b;
}

unsigned char arithmeticSubtraction(unsigned char minuend, unsigned char subtrahend) {
	subtrahend = twosComp(subtrahend);
	printf("2's complement of OP2\n");
	return arithmeticAddition(minuend,subtrahend);
}

unsigned char arithmeticMultiplication(unsigned char multiplicand, unsigned char multiplier) {
	// using Booth's Algorithm
	unsigned char A = 0x00;
	unsigned char Q = multiplicand; 
	unsigned char Qneg1 = 0x00;
	unsigned char M = multiplier;
	
	unsigned char A_LSB, A_MSB;
	unsigned char ACC_local = 0x0000;
	
	int i;
	
	for (i=0; i<8; i++) {
		printf("\nCycle #%d\n", i+1);
		if (getLSB_8bit(Q) == 0x01 && Qneg1 == 0x00) {
			printf("A <- A - M\n");
			A = arithmeticSubtraction(A,M);
		}
		else if (getLSB_8bit(Q) == 0x00 && Qneg1 == 0x01) {
			printf("A <- A + M\n");
			A = arithmeticAddition(A,M);
		}
		
		// Arithmetic Shift Right
		printf("Perform Arithmetic Right Shift\n");
		Qneg1 = getLSB_8bit(Q);
		A_LSB = getLSB_8bit(A);
		A_MSB = getMSB_8bit(A);
		
		A = arithmeticShiftRight(A,A_MSB);
		Q = logicalShiftRight(Q,A_LSB);		
	}
	
	ACC_local = A;
	ACC_local = ACC_local << 0x08;
	return logicalOR(ACC_local,Q);
}

unsigned char getLSB_8bit (unsigned char data) {
	if (logicalAND(data,0x01))
		return 0x01;
	else
		return 0x00;
}

unsigned char getMSB_8bit (unsigned char data) {
	return data >> 0x07;
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
	int bitLength = getBitLength(b);
	
	currentBits = currentBits >> bitLength;
	b = b << arithmeticSubtraction(0x08,bitLength);
	return logicalOR(currentBits,b);		
}

unsigned char logicalShiftLeft(unsigned char currentBits, unsigned char b) {
	int bitLength = getBitLength(b);
	
	currentBits = currentBits << bitLength;
	return logicalOR(currentBits,b);
}

unsigned char arithmeticShiftRight(unsigned char currentBits, unsigned char MSB) {
	currentBits = currentBits >> 0x01;
	MSB = MSB << 0x07;
	return logicalOR(currentBits,MSB);		
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





