/*--------------------------------------*/
/*  AUTHOR: Danica Marie A. Dumalagan   */
/*--------------------------------------*/

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
unsigned char currentCount = 0x00;
bit myINTF = 0;
bit myTMR0IF = 0;

void delay(int x) {
	int locFlagCount = 0;
	while (locFlagCount < x) {
		if(myTMR0IF) {
			myTMR0IF = 0;
			locFlagCount++;
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
	else if (T0IF) { // check the interrupt flag for Timer0 
		T0IF = 0; // clears the interrupt flag 
		myTMR0IF = 1; // this is a global variable which will be in the main routine (toggle) 
	} 
	GIE = 1; // enable interrupts again 
}

void main() {
	// Configure ports
	TRISA = 0x00;
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0xFF;
	ADCON1 = 0x07;

	OPTION_REG = 0xC4; // PS2:PS0 - prescaler 1:32 
 						// PSA - prescaler assignment to TMR0 
 						// T0CS - internal instruction cycle clock 
 						// T0SE - not used since clock is internal 
 	T0IE = 1; // enable Timer0 overflow interrupt 
 	T0IF = 0; // clears the interrupt flag 
 	GIE = 1; // enables all unmasked interrupt 

}

void instCtrl(unsigned char INST) {
	PORTB = INST;
	RC0 = 0; // RS = 0 to accept data
	RC2 = 0; // RW = 0
	RC1 = 1; // toggle on E
	delay(1); // hold on for a while to let data in
	RC1 = 0; // toggle off E
}

void initLCD() {
	delay(1); 
	instCtrl(0x38); // set function: 8-bit; dual line
	instCtrl(0x08); // display off
	instCtrl(0x01); // display clear
	instCtrl(0x06); // entry mode: increment; shift off
	instCtrl(0x0E); // display on; cursor on; blink off 
}

void dataCtrl(unsigned char DATA) {
	PORTB = DATA;
	RC0 = 1; // RS = 1 for dataCtrl * diri ra nalahi
	RC2 = 0; // RW = 0
	RC1 = 1; // toggle on E
	delay(1); // hold on for a while to let data in
	RC1 = 0; // toggle off E
}

