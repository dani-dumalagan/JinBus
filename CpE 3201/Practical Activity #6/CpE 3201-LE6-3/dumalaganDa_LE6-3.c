// dumalaganDa_LE6-2

#include <stdio.h>
#include <string.h>
#include <xc.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

void printString(char keyPress);

void delay(unsigned int ms_Count) {
    unsigned int i,j;
    for(i=0;i<ms_Count;i++) {
        for(j=0;j<1000;j++);
    }
}

void main(void) {
	SPBRG = 0x19; // 9.6K baud rate @ FOSC=4MHz, asynchronous high speed
	// (see formula in Table 10-1)
	SYNC = 0; // asynchronous mode (TXSTA reg)
	SPEN = 1; // enable serial port (RCSTA reg)
	TX9 = 0; // 8-bit transmission (TXSTA reg)
	BRGH = 1; // asynchronous high-speed (TXSTA reg)
	TXEN = 1; // transmit enable (TXSTA reg)
	
	PORTB = 0xFF; // set PORTB as inputs
	unsigned char VAL;
	int x;	

	for(;;) { // foreground routine
		delay(15);
		if(RB4 == 1) {
			VAL = PORTB & 0x0F; // mask PORTD
			if(VAL == 0x00)
				x = 0x01;
			if(VAL == 0x01)
				x = 0x02;
			if(VAL == 0x02)
				x = 0x03;
			if(VAL == 0x04)
				x = 0x04;
			if(VAL == 0x05)
				x = 0x05;
			if(VAL == 0x06)
				x = 0x06;
			if(VAL == 0x08)
				x = 0x07;
			if(VAL == 0x09)
				x = 0x08;
			if(VAL == 0x0A)
				x = 0x09;
			if(VAL == 0x0D)
				x = 0x00;
			if(VAL == 0x0C)
				x = -6;
			if(VAL == 0x0E)
				x = -13;
			x += 48;
			printString(x);
		}
	}
}

void printString(char keyPress) {
	int i;
	char msg[] = "You pressed ";
	for(i=0; i<strlen(msg); i++) {
		while(!TRMT); // wait until transmit shift register is empty
		TXREG = msg[i]; // write data to be sent to TXREG
	}
	while(!TRMT); // wait until transmit shift register is empty
	TXREG = keyPress;
	while(!TRMT); // wait until transmit shift register is empty
	TXREG = '.';
	while(!TRMT); // wait until transmit shift register is empty
	TXREG = 13;
}