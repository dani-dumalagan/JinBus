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

int pulseCount = 0;

void delay_102ms() { // 1ms = 125
	T1CON = 0x31; // 1:8 prescaler, internal clock
	TMR1H = 0xCE; // 52785
	TMR1L = 0x31;
	GIE = 1;          //Enable Global Interrupt
    PEIE = 1;         //Enable the Peripheral Interrupt
    TMR1ON = 1;
	while (!TMR1IF); // wait until timer expires
	TMR1IF = 0; // clear flaG
}

void interrupt ISR(void) {
	GIE = 0; // disables all unmasked interrupts to prevent interrupt overlap
	if (INTF) { // check the interrupt flag for RB0/INT
		INTF = 0; // clears the interrupt flag
		
		/* write the interrupt service routine here
		for RB0/INT external interrupt */
	}
	else if (T0IF) { // check the interrupt flag for Timer0
		T0IF = 0; // clears the interrupt flag
		
		/* write the interrupt service routine here
		for Timer0 overflow interrupt */
	}
	GIE = 1; // enable interrupts again
}

void main(void) {
	TRISD = 0xFF;
//	TMR1CS = 0x00;            //Timer1 clock source is instruction clock (FOSC/4)
	
	for(;;) {
		if (PORTD0 == 0) {
			while (PORTD0 == 0) { // counting falling edges
				pulseCount++;
				delay_ms(101);
			}
			
		}
	}
}
