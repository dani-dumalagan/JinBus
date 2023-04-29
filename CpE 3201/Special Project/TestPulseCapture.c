//

#include <stdio.h>
#include <xc.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

void interrupt ISR(void) {
int period = 0;
GIE = 0;
if 
}

void main(void) {
	TRISC = 0x04; // set RC2 to input
	T1CON = 0x30; // 1:8 prescaler; Timer1 off
	CCP1CON = 0x05; // capture mode: every rising edge
	CCP1IE = 1; // enable TMR1/CCP1 match interrupt (PIE1 reg)
	CCP1IF = 0; // reset interrupt flag (PIR1 reg)
	PEIE = 1; // enable all peripheral interrupt (INTCON reg)
	GIE = 1; // enable all unmasked interrupts (INTCON reg)
	TMR1ON = 1; // Turns on Timer1 (T1CON reg)
	
	while(1) {
		
	}	
}