/*
Klyle Alexandre T. Luchavez
Group 2 CPE 3202
TTh 7:30AM-10:30AM
*/

#include <stdio.h>
#include <conio.h>

// Function declarations
void initMemory(void);
int CU(void);
void MUX(unsigned int *PC_pt,unsigned int *MAR_pt,unsigned int *IOAR_pt,unsigned char Fetch,unsigned char Memory,unsigned char IO);
void DEMUX(unsigned int *IR_pt,unsigned char *MBR_pt,unsigned char *IOBR_pt,unsigned char Fetch,unsigned char Memory,unsigned char IO);
void MainMemory(void);
void IOMemory(void);

int ALU(void);
unsigned char twosComp(unsigned data);
unsigned char setFlags(unsigned int ACC);
void printBin(int data, unsigned char data_width);

// Global variables
unsigned char IO_buffer[32];	// starting address is 0x000
unsigned int ADDR;
unsigned char BUS,CONTROL,IOM,RW,OE,FLAGS;

// Memory chip declaration 
long A1[32], A2[32], A3[32], A4[32], A5[32], A6[32], A7[32], A8[32]; // chip group A
long B1[32], B2[32], B3[32], B4[32], B5[32], B6[32], B7[32], B8[32]; // chip group B 


int ALU(void)
{
	static int ACC;
	unsigned char temp_OP2;
	
	printf("-------------------------\n");
	if(CONTROL >= 0x15 && CONTROL <= 0x1A)
	{
		printf("ACC\t\t: ");
		printBin(ACC, 0x08);
		printf("\n");
		printf("BUS\t\t: ");
		printBin(BUS, 0x08);
		printf("\n");
	}
	else
	{
		printf("ACC\t\t: 0x%02X\n", ACC);
		printf("BUS\t\t: 0x%02X\n", BUS);
	}
	printf("CONTROL\t\t: 0x%02X\n", CONTROL);
	
	if(CONTROL==0x1E || CONTROL==0x1D) // ADD or SUB
	{
		/* Sign and Operation Check Logic */
		if(CONTROL==0x1D) // check if operation is SUB
		{
			printf("Operation\t: SUB\n");
			temp_OP2 = twosComp(BUS); // 2’s complement operand2
		}
		else
		{
			printf("Operation\t: ADD\n");
			temp_OP2 = BUS;
		}
		/* 8-bit Adder */
		ACC = (unsigned int) ((unsigned char) ACC + temp_OP2);
	}
	else if(CONTROL==0x1B) // MUL
	{
		unsigned char A, Q, Q_n1, M, cycles, Q_bit0_Q_n1;
		
		A = 0x00;
		Q = ACC;
		Q_n1 = 0x00;
		M = BUS;
		
		printf("Operation\t: MUL\n");
		printf("   A        Q     Q_n1    M     n\n");
		
		for(cycles = 0x00; cycles <= 0x08; cycles++)
		{
			Q_bit0_Q_n1 = ( ( Q & 0x01 ) << 0x01 ) | Q_n1;
			printBin(A, 0x08);
			printf(" ");
			printBin(Q, 0x08);
			printf("  ");
			printBin(Q_n1, 0x01);
			printf("   ");
			printBin(M, 0x08);
			printf(" ");
			printf("%d", cycles);
			printf("\n");
			
			if(cycles == 0x08)
			{
				continue;
			}
			
			if(Q_bit0_Q_n1 == 0x01)
			{
				A = A + M;	
			}	
			else if(Q_bit0_Q_n1 == 0x02)
			{
				A = A - M;
			}
			
			Q_n1 = Q & 0x01;
			Q = (Q >> 1) | ( ( A & 0x01 ) << 0x07 );
			A = (A >> 1) | (A & 0x80);
		}	
		
		ACC = ( (unsigned int) A << 0x08) | (unsigned int) Q;
	}
	else if(CONTROL == 0x1A)	// AND
	{
		printf("Operation\t: AND\n");
		ACC = (unsigned int) ACC & (unsigned int) BUS;
	}
	else if(CONTROL == 0x19)	// OR
	{
		printf("Operation\t: OR\n");
		ACC = (unsigned int) ACC | (unsigned int) BUS;
	}
	else if(CONTROL == 0x18)	// NOT
	{	
		printf("Operation\t: NOT\n");
		ACC = (unsigned int) ~ACC;
	}
	else if(CONTROL == 0x17)	// XOR
	{
		printf("Operation\t: XOR\n");
		ACC = (unsigned int) ACC ^ (unsigned int) BUS;
	}
	else if(CONTROL == 0x15)	// LOGICAL SHIFT RIGHT
	{
		printf("Operation\t: SHR\n");
		ACC = ACC >> BUS;
	}
	else if(CONTROL == 0x16)	// LOGICAL SHIFT LEFT
	{
		printf("Operation\t: SHL\n");
		ACC = ( (unsigned int) ACC << (unsigned int) BUS) & 0x01FF;
	}
	else if(CONTROL >= 0x11 && CONTROL <= 0x14)	
	{
		if(CONTROL == 0x11)
		{
			printf("Operation\t: BRLT\n");
		}
		else if(CONTROL == 0x12)
		{
			printf("Operation\t: BRGT\n");
		}
		else if(CONTROL == 0x13)
		{
			printf("Operation\t: BRNE\n");
		}
		else if(CONTROL == 0x14)
		{
			printf("Operation\t: BRE\n");
		}
		
		ACC = ACC - (unsigned int) BUS;
	}
	else if(CONTROL == 0x09)	// BUS to ACC
	{
		printf("Operation\t: WACC\n");
		
		ACC = (unsigned int) BUS;
	}
	else if(CONTROL == 0x0B)	// ACC to BUS
	{
		printf("Operation\t: RACC\n");
		
		BUS = (unsigned char) ACC;
	}
	else
	{
		printf("Incorrect control signal input.");
	}
	
	if(CONTROL == 0x1B || CONTROL == 0x11 || CONTROL == 0x12) 
	{
		setFlags(ACC);
		ACC = (unsigned char) ACC;
	}
	else
	{
		ACC = (unsigned char) ACC;
		setFlags(ACC);
	}
	
	if(CONTROL >= 0x15 && CONTROL <= 0x1A)
	{
		printf("ACC\t\t: ");
		printBin(ACC, 0x08);
		printf("\n");
	}
	else
	{
		printf("ACC\t\t: 0x%02X\n", ACC);
		printf("BUS\t\t: 0x%02X\n", BUS);
	}
	
	return 0;
}

unsigned char twosComp(unsigned data)
{
	return ~data + 0x01;
}


unsigned char setFlags(unsigned int ACC)
{
	int ZF,CF,SF,OF;
	FLAGS = 0x00;
	if(ACC == 0x0000)
	{
		FLAGS = FLAGS | 0x01;
	}
	
	if(CONTROL == 0x11 || CONTROL == 0x12)
	{
		if(ACC > 0x00FF)
		{
			FLAGS = FLAGS | 0x04;
		}
	}
	
	if (ACC > 0x00FF)
	{
		FLAGS = FLAGS | 0x02;
	}
	
	if(ACC > 0x00FF)
	{
		FLAGS = FLAGS | 0x80;
	}

	ZF = FLAGS & 0x01;
	CF = (FLAGS >> 0x01) & 0x01;
	SF = (FLAGS >> 0x02) & 0x01;
	OF = (FLAGS >> 0x07) & 0x01;
	
	printf("ZF = %d, CF = %d, SF = %d, OF = %d\n", ZF, CF, SF, OF);
}


void printBin(int data, unsigned char data_width)
{
	int shifts;
	
	for (shifts = data_width - 1; shifts >= 0; shifts--)
	{
		printf("%d", ( ( data & ( 1 << shifts ) ) >> shifts ) );	
	}
}

void MainMemory(void)
{
	unsigned int row, col, cs;
	
	if(OE)
	{
		/* decoding address data */
		col = ADDR & 0x001F;
		row = (ADDR >> 5) & 0x001F;
		cs = ADDR >> 10;	
	}
	
	if(IOM==1)
	{
		if(RW==0 && OE==1) // memory read
		{
			if(cs)
			{
				BUS = ((B1[row] >> col) & 0x01)? (BUS | 0x01): (BUS & ~0x01);
				BUS = ((B2[row] >> col) & 0x01)? (BUS | 0x02): (BUS & ~0x02);
				BUS = ((B3[row] >> col) & 0x01)? (BUS | 0x04): (BUS & ~0x04);
				BUS = ((B4[row] >> col) & 0x01)? (BUS | 0x08): (BUS & ~0x08);
				BUS = ((B5[row] >> col) & 0x01)? (BUS | 0x10): (BUS & ~0x10);
				BUS = ((B6[row] >> col) & 0x01)? (BUS | 0x20): (BUS & ~0x20);
				BUS = ((B7[row] >> col) & 0x01)? (BUS | 0x40): (BUS & ~0x40);
				BUS = ((B8[row] >> col) & 0x01)? (BUS | 0x80): (BUS & ~0x80);
			}
			else
			{
				BUS = ((A1[row] >> col) & 0x01)? (BUS | 0x01): (BUS & ~0x01);
				BUS = ((A2[row] >> col) & 0x01)? (BUS | 0x02): (BUS & ~0x02);
				BUS = ((A3[row] >> col) & 0x01)? (BUS | 0x04): (BUS & ~0x04);
				BUS = ((A4[row] >> col) & 0x01)? (BUS | 0x08): (BUS & ~0x08);
				BUS = ((A5[row] >> col) & 0x01)? (BUS | 0x10): (BUS & ~0x10);
				BUS = ((A6[row] >> col) & 0x01)? (BUS | 0x20): (BUS & ~0x20);
				BUS = ((A7[row] >> col) & 0x01)? (BUS | 0x40): (BUS & ~0x40);
				BUS = ((A8[row] >> col) & 0x01)? (BUS | 0x80): (BUS & ~0x80);
			}
			
		}	
		else if(RW==1 && OE==1) // memory write
		{
			if(cs)
			{					
				B1[row] = (BUS & 0x01)? (B1[row] | (0x01 << col)): (B1[row] & ~(0x01 << col));
				B2[row] = (BUS & 0x02)? (B2[row] | (0x01 << col)): (B2[row] & ~(0x01 << col));
				B3[row] = (BUS & 0x04)? (B3[row] | (0x01 << col)): (B3[row] & ~(0x01 << col));
				B4[row] = (BUS & 0x08)? (B4[row] | (0x01 << col)): (B4[row] & ~(0x01 << col));
				B5[row] = (BUS & 0x10)? (B5[row] | (0x01 << col)): (B5[row] & ~(0x01 << col));
				B6[row] = (BUS & 0x20)? (B6[row] | (0x01 << col)): (B6[row] & ~(0x01 << col));
				B7[row] = (BUS & 0x40)? (B7[row] | (0x01 << col)): (B7[row] & ~(0x01 << col));
				B8[row] = (BUS & 0x80)? (B8[row] | (0x01 << col)): (B8[row] & ~(0x01 << col));
			}
			else
			{
				A1[row] = (BUS & 0x01)? (A1[row] | (0x01 << col)): (A1[row] & ~(0x01 << col));
				A2[row] = (BUS & 0x02)? (A2[row] | (0x01 << col)): (A2[row] & ~(0x01 << col));
				A3[row] = (BUS & 0x04)? (A3[row] | (0x01 << col)): (A3[row] & ~(0x01 << col));
				A4[row] = (BUS & 0x08)? (A4[row] | (0x01 << col)): (A4[row] & ~(0x01 << col));
				A5[row] = (BUS & 0x10)? (A5[row] | (0x01 << col)): (A5[row] & ~(0x01 << col));
				A6[row] = (BUS & 0x20)? (A6[row] | (0x01 << col)): (A6[row] & ~(0x01 << col));
				A7[row] = (BUS & 0x40)? (A7[row] | (0x01 << col)): (A7[row] & ~(0x01 << col));
				A8[row] = (BUS & 0x80)? (A8[row] | (0x01 << col)): (A8[row] & ~(0x01 << col));
			}
		}
	} 
	
	return;
}

void IOMemory(void)
{
	if(IOM==0)
	{
		if(RW==0 && OE==1) // memory read
		{
			BUS = IO_buffer[ADDR];
		}	
		else if(RW==1 && OE==1) // memory write
		{
			IO_buffer[ADDR] = BUS;
		}
	} 
}

void MUX(unsigned int *PC_pt,unsigned int *MAR_pt,unsigned int *IOAR_pt,unsigned char Fetch,unsigned char Memory,unsigned char IO)
{
	if(Fetch)
	{
		ADDR = *PC_pt;
		*PC_pt += 1;
	}
	else if(Memory)
	{
		ADDR = *MAR_pt;
	}
	else if(IO)
	{
		ADDR = *IOAR_pt;
	}
	
	return;
}

void DEMUX(unsigned int *IR_pt,unsigned char *MBR_pt,unsigned char *IOBR_pt,unsigned char Fetch,unsigned char Memory,unsigned char IO)
{	
	if(Fetch)
	{
		*IR_pt = *IR_pt | BUS;
	}
	else if(Memory)
	{
		if(RW == 0)
		{
			*MBR_pt = BUS;
		}
		else
		{
			BUS = *MBR_pt;
		}
	}
	else if(IO)
	{
		if(RW == 0)
		{
			*IOBR_pt = BUS;
		}
		else
		{
			BUS = *IOBR_pt;
		}
	}
	
	return;
}

int CU(void)
{
	unsigned int PC,IR,MAR,IOAR,inst_code,operand; 
	unsigned char MBR,IOBR,Fetch,Memory,IO;
	PC = 0x0000;
	
	while(1)
	{
		/* fetch instruction */
      	printf("*************************\n");
		printf("PC\t\t: 0x%03X\n", PC);
		
		/* setting external control signals */
		CONTROL = inst_code;	// setting the control signals
		IOM = 1; 				// Main Memory access
		RW = 0; 				// read operation (fetch)
		OE = 1; 				// allow data movement to/from memory
		
		/* Fetching Instruction (2 cycle) */ 
		Fetch = 1; 				// set local control signal Fetch to 1 to signify fetch operation
		IO = 0; 
		Memory = 0; 
		
		/* fetching the upper byte */ 
		IR = 0x0000;
		MUX(&PC,&MAR,&IOAR,Fetch,Memory,IO);
		MainMemory(); 
		DEMUX(&IR,&MBR,&IOBR,Fetch,Memory,IO);
		IR = IR << 8;
		
		/* fetching the lower byte */
		MUX(&PC,&MAR,&IOAR,Fetch,Memory,IO);
		MainMemory(); 
		DEMUX(&IR,&MBR,&IOBR,Fetch,Memory,IO);
		printf("IR\t\t: 0x%04X\n", IR);
		
		/* Instruction Decode */ 
		inst_code = IR >> 11;
		operand = IR & 0x07FF;
		printf("Instruction Code: 0x%02X\n", inst_code);
		printf("Operand\t\t: 0x%03X\n", operand);
		printf("Instruction\t: ");
		
		// executing instruction
		if(inst_code == 0x01)			// WM instruction - write to memory 
		{
			printf("WM\n");
			printf("Writing data to memory...\n");
			MAR = operand;	
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 
			IO = 0;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 1; 
			RW = 1; 
			OE = 1; 
			
			MUX(&PC,&MAR,&IOAR,Fetch,Memory,IO); 
			DEMUX(&IR,&MBR,&IOBR,Fetch,Memory,IO);
			MainMemory(); 
		}
		else if(inst_code == 0x02)		// RM instruction - read from memory
		{
			printf("RM\n");
			printf("Reading data from memory...\n");
			MAR = operand;
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 
			IO = 0;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 1; 
			RW = 0; 
			OE = 1; 
			
			MUX(&PC,&MAR,&IOAR,Fetch,Memory,IO); 
			MainMemory(); 
			DEMUX(&IR,&MBR,&IOBR,Fetch,Memory,IO);
		}
		else if(inst_code == 0x03)		// BR instruction - branch
		{
			printf("BR\n");
			PC = operand;
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 
			IO = 0;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 0; 
			RW = 0; 
			OE = 0; 
			printf("Branching to 0x%03X on next cycle.\n", PC);
		}
		else if(inst_code == 0x04)		// RIO instruction - read from IO buffer
		{
			printf("RIO\n");
			printf("Reading data from IO...\n");
			IOAR = operand;
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 
			IO = 1;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 0; 
			RW = 0; 
			OE = 1; 
			
			MUX(&PC,&MAR,&IOAR,Fetch,Memory,IO); 
			IOMemory(); 
			DEMUX(&IR,&MBR,&IOBR,Fetch,Memory,IO);
		}
		else if(inst_code == 0x05)		// WIO instruction - write to IO buffer
		{
			printf("WIO\n");
			printf("Writing data to IO...\n");
			IOAR = operand;
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 
			IO = 1;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 0; 
			RW = 1; 
			OE = 1; 
			
			MUX(&PC,&MAR,&IOAR,Fetch,Memory,IO); 
			DEMUX(&IR,&MBR,&IOBR,Fetch,Memory,IO);
			IOMemory(); 
		}
		else if(inst_code == 0x06)		// WB instruction - write data to MBR
		{
			printf("WB\n");
			printf("Loading data to MBR...\n");
			MBR = operand & 0x0FF;
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 
			IO = 0;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 0; 
			RW = 0; 
			OE = 0;
		}
		else if(inst_code == 0x07)		// WIB instruction - write data to IOBR
		{
			printf("WIB\n");
			printf("Loading data to IOBR...\n");
			IOBR = operand & 0x0FF;
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 
			IO = 0;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 0; 
			RW = 0; 
			OE = 0;
		}
		else if(inst_code == 0x0E)		// SWAP instruction - swap data of MBR and IOBR
		{
			unsigned int temp;
			printf("SWAP\n");
			printf("Swapping data of MBR and IOBR...\n");
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 
			IO = 0;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 0; 
			RW = 0; 
			OE = 0;
			
			temp = MBR;
			MBR = IOBR;
			IOBR = temp;
		}
		else if((inst_code >= 0x11 && inst_code <= 0x1B) || inst_code == 0x1D || inst_code == 0x1E || inst_code == 0x09 || inst_code == 0x0B)		
		{
			printf("ALU Operation\n");
			printf("Loading data from MBR to BUS...\n");
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 1; 
			IO = 0;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 0; 
			RW = 1; 
			OE = 0;
			DEMUX(&IR,&MBR,&IOBR,Fetch,Memory,IO);
			ALU();
			
			if(CONTROL == 0x14)
			{
				if(FLAGS & 0x01)
				{
					ADDR = operand;
					PC = ADDR;
				}
			}
			if(CONTROL == 0x13)
			{
				if(!(FLAGS & 0x01))
				{
					ADDR = operand;
					PC = ADDR;
				}
			}
			if(CONTROL == 0x12)
			{
				if(!(FLAGS & 0x04))
				{
					ADDR = operand;
					PC = ADDR;
				}
			}
			if(CONTROL == 0x11)
			{
				if(FLAGS & 0x04)
				{
					ADDR = operand;
					PC = ADDR;
				}
			}
			
			if(CONTROL == 0x0B)
			{
				MBR = BUS;
			}
		}
		else if(inst_code == 0x1F)		// EOP instruction - end of program
		{
			printf("EOP\n");
			printf("End of program.\n");
			
			/* setting local control signals */
			Fetch = 0;
			Memory = 0; 
			IO = 0;
			
			/* setting external control signals */
			CONTROL = inst_code;
			IOM = 0; 
			RW = 0; 
			OE = 0;
			printf("ADDR = 0x%04X MAR = 0x%04X IOAR = 0x%04X MBR = 0x%02X\n", ADDR,MAR,IOAR, MBR);
			printf("IOBR = 0x%02X Fetch = %d Memory = %d\n", IOBR,Fetch,Memory);
			printf("IO = %d IOM = %d RW = %d OE = %d\n",IO,IOM,RW,OE);
			printf("*************************\n");
			getch();
			return 1;
		}
		else
		{
			return 0;
		}	
		
		printf("ADDR = 0x%04X MAR = 0x%04X IOAR = 0x%04X MBR = 0x%02X\n", ADDR,MAR,IOAR, MBR);
		printf("IOBR = 0x%02X Fetch = %d Memory = %d\n", IOBR,Fetch,Memory);
		printf("IO = %d IOM = %d RW = %d OE = %d\n",IO,IOM,RW,OE);
		printf("*************************\n");
		getch();
	}
}

void initMemory(void)
{
	/* setting the global control signals */
	IOM=1, RW=1, OE=1;
	/* Format ADDR=<program memory address>; BUS=<instruction>; MainMemory() */
	/* Calling MainMemory() writes the instruction to memory */
	printf("Initializing Main Memory...\n\n");
	ADDR=0x000; BUS=0x30; MainMemory();	
	ADDR=0x001; BUS=0x15; MainMemory();	
	ADDR=0x002; BUS=0x0C; MainMemory();		
	ADDR=0x003; BUS=0x00; MainMemory();	
	ADDR=0x004; BUS=0x30; MainMemory();		
	ADDR=0x005; BUS=0x05; MainMemory();	
	ADDR=0x006; BUS=0x48; MainMemory();		
	ADDR=0x007; BUS=0x00; MainMemory();	
	ADDR=0x008; BUS=0x30; MainMemory();		
	ADDR=0x009; BUS=0x08; MainMemory();	
	ADDR=0x00A; BUS=0xF0; MainMemory();		
	ADDR=0x00B; BUS=0x00; MainMemory();	
	ADDR=0x00C; BUS=0x14; MainMemory();		
	ADDR=0x00D; BUS=0x00; MainMemory();	
	ADDR=0x00E; BUS=0xD8; MainMemory();		
	ADDR=0x00F; BUS=0x00; MainMemory();	
	ADDR=0x010; BUS=0x58; MainMemory();		
	ADDR=0x011; BUS=0x00; MainMemory();	
	ADDR=0x012; BUS=0x0C; MainMemory();		
	ADDR=0x013; BUS=0x01; MainMemory();	
	ADDR=0x014; BUS=0x38; MainMemory();		
	ADDR=0x015; BUS=0x0B; MainMemory();	
	ADDR=0x016; BUS=0x28; MainMemory();		
	ADDR=0x017; BUS=0x00; MainMemory();	
	ADDR=0x018; BUS=0x30; MainMemory();		
	ADDR=0x019; BUS=0x10; MainMemory();	
	ADDR=0x01A; BUS=0xE8; MainMemory();		
	ADDR=0x01B; BUS=0x00; MainMemory();	
	ADDR=0x01C; BUS=0x58; MainMemory();		
	ADDR=0x01D; BUS=0x00; MainMemory();	
	ADDR=0x01E; BUS=0x28; MainMemory();		
	ADDR=0x01F; BUS=0x01; MainMemory();	
	ADDR=0x020; BUS=0xB0; MainMemory();		
	ADDR=0x021; BUS=0x00; MainMemory();	
	ADDR=0x022; BUS=0xB0; MainMemory();		
	ADDR=0x023; BUS=0x00; MainMemory();	
	ADDR=0x024; BUS=0xA8; MainMemory();		
	ADDR=0x025; BUS=0x00; MainMemory();	
	ADDR=0x026; BUS=0x14; MainMemory();		
	ADDR=0x027; BUS=0x01; MainMemory();	
	ADDR=0x028; BUS=0xC8; MainMemory();		
	ADDR=0x029; BUS=0x00; MainMemory();	
	ADDR=0x02A; BUS=0xC0; MainMemory();		
	ADDR=0x02B; BUS=0x00; MainMemory();	
	ADDR=0x02C; BUS=0x20; MainMemory();	
	ADDR=0x02D; BUS=0x01; MainMemory();	
	ADDR=0x02E; BUS=0x70; MainMemory();		
	ADDR=0x02F; BUS=0x00; MainMemory();	
	ADDR=0x030; BUS=0xB8; MainMemory();		
	ADDR=0x031; BUS=0x00; MainMemory();	
	ADDR=0x032; BUS=0x30; MainMemory();		
	ADDR=0x033; BUS=0xFF; MainMemory();	
	ADDR=0x034; BUS=0xD0; MainMemory();		
	ADDR=0x035; BUS=0x00; MainMemory();	
	ADDR=0x036; BUS=0x14; MainMemory();		
	ADDR=0x037; BUS=0x01; MainMemory();	
	ADDR=0x038; BUS=0xA0; MainMemory();		
	ADDR=0x039; BUS=0x3C; MainMemory();	
	ADDR=0x03A; BUS=0x30; MainMemory();		
	ADDR=0x03B; BUS=0xF0; MainMemory();	
	ADDR=0x03C; BUS=0x90; MainMemory();		
	ADDR=0x03D; BUS=0x40; MainMemory();	
	ADDR=0x03E; BUS=0x88; MainMemory();		
	ADDR=0x03F; BUS=0x44; MainMemory();	
	ADDR=0x040; BUS=0x30; MainMemory();		
	ADDR=0x041; BUS=0x00; MainMemory();	
	ADDR=0x042; BUS=0x48; MainMemory();		
	ADDR=0x043; BUS=0x00; MainMemory();	
	ADDR=0x044; BUS=0x30; MainMemory();		
	ADDR=0x045; BUS=0x03; MainMemory();	
	ADDR=0x046; BUS=0x48; MainMemory();		
	ADDR=0x047; BUS=0x00; MainMemory();	
	ADDR=0x048; BUS=0x30; MainMemory();		
	ADDR=0x049; BUS=0x00; MainMemory();	
	ADDR=0x04A; BUS=0xA0; MainMemory();		
	ADDR=0x04B; BUS=0x52; MainMemory();	
	ADDR=0x04C; BUS=0x30; MainMemory();		
	ADDR=0x04D; BUS=0x01; MainMemory();	
	ADDR=0x04E; BUS=0xE8; MainMemory();		
	ADDR=0x04F; BUS=0x00; MainMemory();	
	ADDR=0x050; BUS=0x18; MainMemory();		
	ADDR=0x051; BUS=0x48; MainMemory();	
	ADDR=0x052; BUS=0xF8; MainMemory();		
	ADDR=0x053; BUS=0x00; MainMemory();	
}

void main(void)
{
	initMemory();
	
	if(CU() == 1)
	{
		printf("\nProgram run successfully!\n");
	}
	else
	{
		printf("\nError encountered. Program terminated!\n");
	}
}
