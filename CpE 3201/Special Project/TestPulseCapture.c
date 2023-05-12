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
int timeCount = 0; 
int flag = 0;

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
		pulseCount++;
		PORTD ^= PORTD;  
		delay_102ms();
		delay_102ms();
		delay_102ms();
		delay_102ms();
		delay_102ms();
		delay_102ms();
		delay_102ms();
		delay_102ms();
		delay_102ms();
		
		flag = 1;
		
// reset timer
		// 

		/* write the interrupt service routine here
		for RB0/INT external interrupt */
	}
	else if(T0IF) { // check the interrupt flag for Timer0
		T0IF = 0; // clears the interrupt flag
		
		if (flag) {
		// set timer0 to 1 second
		// increment timeCount every 1 second
		}
		/* write the interrupt service routine here
		for Timer0 overflow interrupt */
	}
	GIE = 1; // enable interrupts again
}

void main(void) {
	int press = 0;
	int capture = 0;
	int bill = 0;
	ADCON1 = 0x07;
	TRISA = 0xFF;
	TRISD = 0x00;
	// 1000 0100
	OPTION_REG = 0x84; // PS2:PS0 - prescaler 1:32 
 						// PSA - prescaler assignment to TMR0 
 						// T0CS - internal instruction cycle clock 
 						// T0SE - not used since clock is internal 
						// falling edge triggered
 	T0IE = 1; // enable Timer0 overflow interrupt 
 	T0IF = 0; // clears the interrupt flag 
 	GIE = 1; // enables all unmasked interrupt 
	PORTD = 0x00;
	PORTB = 0xFF;
	
	for (;;) {
		PORTD = 0xFF;
		if (timeCount > 3) {
			flag = 0;
			bill += 10*pulseCount; // compute total bill inserted ()
			pulseCount = 0;	// reset pulseCount to 0
			timeCount = 0;	// reset timeCount to 0
		}

		// CHECK PROCEED CAPTURE BUTTON
		if(RB5 == 1)press = 1;
		if(RB5 == 0 && press = 1){
			press = 0;
			if(bill != 0){
				bill = 0;
				// disable BILL ACCEPTOR
				//send amount
			}
			
		}
		
	}
}