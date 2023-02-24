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

void interrupt ISR() {
 GIE = 0; // disables all unmasked interrupts to prevent interrupt overlap
 if (INTF) { // check the interrupt flag 
 	INTF = 0; // clears the interrupt flag
	
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
 }
 GIE = 1; // enable interrupts again
}

void main() {
	ADCON1 = 0x07;
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0xFF;

	INTEDG = 1; // interrupt at rising edge
	INTE = 1; // enable RB0/INT external interrupt
	INTF = 0; // clears the interrupt flag
	GIE = 1; // enables all unmasked
	
	PORTC = 0x00;
	while(1) {
	
	}
}
