// dumalaganDa_LE2-1

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
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0xFF;
		
	initLCD(); // initialize LCD

	while(1) {
		
		instCtrl(0xC6); // move cursor to 2nd line 7th column 
		dataCtrl('H'); // prints ‘H’ at current cursor position 
	
		// then shifts the cursor to the right* 
		dataCtrl('E'); // prints ‘E’ 
		dataCtrl('L'); // prints ‘L’ 
		dataCtrl('L'); // prints ‘L’ 
		dataCtrl('O'); // prints ‘O’ 
		dataCtrl('!'); // prints ‘!’ 	
	}
	
}

