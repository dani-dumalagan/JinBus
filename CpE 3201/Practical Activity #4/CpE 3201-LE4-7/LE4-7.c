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

void delay(int cnt) {
	int i, j;
	for (i=cnt; i!=0; i--) {
		for (j=0; j<1000; j++);
	}
}

void main(void) {
	TRISB = 0xFF;

	/* following the steps in setting up PWM */
	PR2 = 0x7C; // set value for PR2
	CCPR1L = 0x57; // set value for (8 MSBs)
	CCP1CON = 0x2C; // set value for (2 LSBs), PWM mode
	TRISC = 0x00; // sets all of PORTC (RC2) to output
	RC2 = 0; // initialize RC2 to 0
	T2CON = 0x06; // 1:16 prescaler, Timer2 on
	
	int freq = 1;
	int duty = 1;

	for(;;) { // foreground routine
		delay(500); // debouncing
		if(RB1 == 1) { // adjust frequency via PR2
			if(freq == 3)
				freq = 1;
			else
				freq++; 
			switch(freq) {
				case 1: PR2 = 0x1869; break; // 10Hz
				case 2: PR2 = 0x270; break; // 100Hz
				case 3: PR2 = 0x3E; break; // 1000Hz
			}
		}
		if(RB2 == 1) { // adjust duty cycle via (CCPR1L:CCP1CON<5:4>)
			if(duty == 5)
				duty = 1;
			else
				duty++;
			
			if(freq == 1) { // 10Hz
				switch(duty) {
					case 1: CCPR1L = 0x71; CCP1CON = 0x0C; break; // 10%
					case 2: CCPR1L = 0x1A; CCP1CON = 0x2C; break; // 25%
					case 3: CCPR1L = 0x35; CCP1CON = 0x0C; break; // 50%
					case 4: CCPR1L = 0x4F; CCP1CON = 0x2C; break; // 75%
					case 5: CCPR1L = 0x31; CCP1CON = 0x2C; break; // 95%
				}
			}
			else if (freq == 2) { // 100Hz
				switch(duty) {
					case 1: CCPR1L = 0x3E; CCP1CON = 0x2C; break; // 10%
					case 2: CCPR1L = 0x9C; CCP1CON = 0x1C; break; // 25%
					case 3: CCPR1L = 0x38; CCP1CON = 0x2C; break; // 50%
					case 4: CCPR1L = 0xD4; CCP1CON = 0x3C; break; // 75%
					case 5: CCPR1L = 0x51; CCP1CON = 0x3C; break; // 95%
				}
			}
			else if (freq == 3) { // 1000Hz
				switch(duty) {
					case 1: CCPR1L = 0x6; CCP1CON = 0x1C; break; // 10%
					case 2: CCPR1L = 0xF; CCP1CON = 0x3C; break; // 25%
					case 3: CCPR1L = 0x1F; CCP1CON = 0x1C; break; // 50%
					case 4: CCPR1L = 0x2F; CCP1CON = 0x0C; break; // 75%
					case 5: CCPR1L = 0x3B; CCP1CON = 0x2C; break; // 95%
				}
			}
		}
	}
}
