// dumalaganDa_LE2-2

#include <xc.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

void delay(int cnt) {
	int i, j;
	for (i=cnt; i!=0; i--) {
		for (j=0; j<1000; j++);
	}
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

// LCD addresses (+80)

void main() {
	
	unsigned char VAL;
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0xFF;
	ADCON0 = 0x06;
		
	initLCD(); // initialize LCD
	PORTA = 0x00;

	while(1) {
		instCtrl(0xC6); // move cursor to 2nd line 7th column 
		if(RD4 == 1) { // DA = data available, detects a key press
			VAL = PORTD & 0x0F; // mask PORTD
			if(VAL == 0x00){
				PORTA = 0x01;
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('1');
			}
			if(VAL == 0x01){
				PORTA = 0x02;
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('1');
				dataCtrl('0');
			}
			if(VAL == 0x02){
				PORTA = 0x03;
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('1');
				dataCtrl('1');
			}
			if(VAL == 0x04){
				PORTA = 0x04;
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('1');
				dataCtrl('0');
				dataCtrl('0');
			}
			if(VAL == 0x05){
				PORTA = 0x05;
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('1');
				dataCtrl('0');
				dataCtrl('1');
			}
			if(VAL == 0x06){
				PORTA = 0x06;
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('1');
				dataCtrl('1');
				dataCtrl('0');
			}
			if(VAL == 0x08){
				PORTA = 0x07;
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('1');
				dataCtrl('1');
				dataCtrl('1');
			}
			if(VAL == 0x09){
				PORTA = 0x08;
				dataCtrl('0');
				dataCtrl('1');
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('0');
			}
			if(VAL == 0x0A){
				PORTA = 0x09;
				dataCtrl('0');
				dataCtrl('1');
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('1');
			}
			if(VAL == 0x0D){
				PORTA = 0x00;
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('0');
				dataCtrl('0');
			}
			if(VAL == 0x0C || VAL == 0x0E){
				PORTA = 0x0F;
				dataCtrl('1');
				dataCtrl('1');
				dataCtrl('1');
				dataCtrl('1');
				dataCtrl('1');
			}
		}
	}
	
}

