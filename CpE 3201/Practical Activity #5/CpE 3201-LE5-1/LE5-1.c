// dumalaganDa_PA5-1

#include <stdio.h>
#include <xc.h>

#define _XTAL_FREQ 4M
#define delayLoop for(j=0;j<100;j++)

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF



void delay(int cnt) {
	while(cnt--);
}

int readADC(void) {
	int temp = 0;
	delay(1000); // delay to get the hold capacitor charged
	GO = 1; // start conversion
	while(GO_DONE==1); // wait for conversion to finish
	/* read result register */
	temp = ADRESH; // read ADRESH
	temp = temp << 8; // move to correct position
	temp = temp | ADRESL; // read ADRESL
	return temp;
}

void main(void) {
	TRISB = 0x00; // set all PORTB as output
	PORTB = 0x00; // all LEDs OFF
	ADCON1 = 0x80; // result register: right Justified, clock: FOSC/8
	// all ports in PORTA are analog
	// VREF+=VDD, VREF-=VSS
	ADCON0 = 0x41; // clock: FOSC/8 analog channel: AN0
	// A/D conversion: STOP, A/D module: ON
	ADIE = 1; // A/D conversion complete interrupt enable (PIE1 reg)
	ADIF = 0; // reset interrupt flag (PIR1 reg)
	PEIE = 1; // enable all peripheral interrupt (INTCON reg)
	GIE = 1; // enable all unmasked interrupts (INTCON reg)
	GO = 1; // start A/D conversion (ADCON0 reg)
	
	for(;;) {// foreground routine
	
	}
}

void interrupt ISR(void) {
	int d_value = 0;
	GIE = 0; // disable all unmasked interrupts (INTCON reg)
	if(ADIF==1) { // checks CCP1 interrupt flag
		ADIF = 0; // clears interrupt flag (INTCON reg)
		/* read result register */
		d_value = readADC();
		/* setting the LEDs */
		if(d_value>=0 && d_value<=169)
			PORTB = 0x00; // all LEDs OFF
		else if(d_value>=170 && d_value<=340)
			PORTB = 0x01; // 
		else if(d_value>=341 && d_value<=511)
			PORTB = 0x03; // 
		else if(d_value>=512 && d_value<=682)
			PORTB = 0x07; // 
		else if(d_value>=683 && d_value<=853)
			PORTB = 0x0F; // 
		else if(d_value>=854 && d_value<=1024)
			PORTB = 0x1F; // 
	}
	GO = 1; // restart A/D conversion (ADCON0 reg)
	GIE = 1; // enable all unmasked interrupts (INTCON reg)
}