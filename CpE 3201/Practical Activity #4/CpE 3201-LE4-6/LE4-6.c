#include <stdio.h>
#include <xc.h>
#include <math.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

int period_global = 0;
char digit[10] = {'0','1','2','3','4','5','6','7','8','9'};

void delay(int cnt) {
	int i, j;
	for (i=cnt; i!=0; i--) {
		for (j=0; j<1000; j++);
	}
}

void instCtrl(unsigned char INST) {
	PORTB = INST;
	RD0 = 0; // RS = 0 to accept data
	RD1 = 0; // RW = 0
	RD2 = 1; // toggle on E
	delay(1); // hold on for a while to let data in
	RD2 = 0; // toggle off E
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
	RD0 = 1; // RS = 1 for dataCtrl * diri ra nalahi
	RD1 = 0; // RW = 0
	RD2 = 1; // toggle on E
	delay(1); // hold on for a while to let data in
	RD2 = 0; // toggle off E
}

void interrupt ISR() {
	int period = 0;

	GIE = 0; // disable all unmasked interrupts (INTCON reg)
	
	// Capture Module
	if(CCP1IF==1) { // checks CCP1 interrupt flag
		CCP1IF = 0; // clears interrupt flag
		TMR1 = 0; // resets TMR1
		period = CCPR1/1000; // transfers captured TMR1 value
		// normalize the value (make the number smaller)
		period = period*8; // multiply by the normalized TMR1 timeout
		period_global = period;	
	}
	
	GIE = 1; // enable all unmasked interrupts (INTCON reg)
}

void main() {
	TRISB = 0x00;
	TRISD = 0x00;
	
	// Capture Module
	TRISC = 0x04; // set RC2 to input
	T1CON = 0x30; // 1:8 prescaler, Timer1 off
	CCP1CON = 0x05; // capture mode: every rising edge
	CCP1IE = 1; // enable TMR1/CCP1 match interrupt (PIE1 reg)
	CCP1IF = 0; // reset interrupt flag (PIR1 reg)
	PEIE = 1; // enable all peripheral interrupt (INTCON reg)
	GIE = 1; // enable all unmasked interrupts (INTCON reg)
	TMR1ON = 1; // Turns on Timer1 (T1CON reg)
	
	initLCD();
	
	instCtrl(0x80);
	dataCtrl('P');
	dataCtrl('e');
	dataCtrl('r');
	dataCtrl('i');
	dataCtrl('o');
	dataCtrl('d');
	dataCtrl(':');
	
	
	for(;;) { // foreground routine
		instCtrl(0xC0);
		dataCtrl(digit[period_global/10000]);
		dataCtrl(digit[(period_global%10000)/1000]);
		dataCtrl(digit[(period_global%1000)/100]);
		dataCtrl(digit[(period_global%100)/10]);
		dataCtrl(digit[(period_global%10)]);
	}
	
}