//
#include<xc.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

unsigned char VAL;
bit count_flag = 0;
bit flag = 0;
bit myINTF = 0;
bit myTMR0IF = 0;

void delay(int num) {

	int flags = 0;
	
	while (flags < num) {
		if(count_flag) {
			count_flag = 0;
			flags++;
		}
	}
}

void interrupt ISR() { 
 GIE = 0; // disables all unmasked interrupts to prevent interrupt overlap 
 if (INTF) { // check the interrupt flag for RB0/INT 
	 INTF = 0; // clears the interrupt flag 
	 /* write the interrupt service routine here 
	 for RB0/INT external interrupt */ 
	 myINTF ^= 1;
 } 
 else if(T0IF) { // check the interrupt flag for Timer0 
	 T0IF = 0; // clears the interrupt flag 
	 
	 if(RB0 == 1) {
		VAL = PORTD & 0x0F; // mask PORTD
		if(VAL == 0x00){
				PORTC = 0x01;
		}
		if(VAL == 0x01){
				PORTC = 0x02;
		}
		if(VAL == 0x02){
			PORTC = 0x03;
		}
		if(VAL == 0x04){
			PORTC = 0x04;
		}
		if(VAL == 0x05){
			PORTC = 0x05;
		}
		if(VAL == 0x06){
			PORTC = 0x06;
		}
		if(VAL == 0x08){
			PORTC = 0x07;
		}
		if(VAL == 0x09){
			PORTC = 0x08;
		}
		if(VAL == 0x0A){
			PORTC = 0x09;
		}
		if(VAL == 0x0D){
			PORTC = 0x00;
		}
		if(VAL == 0x0C){
			PORTC = 0x0F;
		}
		if(VAL == 0x0E){
			PORTC = 0x0F;
		}
	}
 
	 count_flag = 1; // this is a global variable which will be 
	 // in the main routine (toggle) 
 } 
 GIE = 1; // enable interrupts again 
}


void main() {
	ADCON1 = 0x07;
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0xFF;

	OPTION_REG = 0xC4; // PS2:PS0 - prescaler 1:32 
 						// PSA - prescaler assignment to TMR0 
 						// T0CS - internal instruction cycle clock 
 						// T0SE - not used since clock is internal 
 	T0IE = 1; // enable Timer0 overflow interrupt 
 	T0IF = 0; // clears the interrupt flag 
 	GIE = 1; // enables all unmasked interrupt 
	
	PORTA = 0x00;
	PORTC = 0x00;	

	while(1) {
		
		PORTA = 0xFF;
		delay(12);
		PORTA = 0x00;
        delay(12);
	}
}