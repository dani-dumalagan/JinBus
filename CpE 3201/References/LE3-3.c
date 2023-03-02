#include <xc.h>

unsigned char counter = 0x00; 
char keypadCharacters[15] = {1,2,3,' ',4,5,6,' ',7,8,9,' ','*','0','#'};
bit myTMR0IF = 0;	// prescaler at 1:32

void delay(int count)
{
	int overflows = 0;
	
	while(overflows < count)
	{
		if(myTMR0IF)
		{
			overflows++;
			myTMR0IF = 0;
		}
	}
}

void interrupt ISR(void)
{
	GIE = 0;	// disable interrupts
	
	if(INTF)
	{
		INTF = 0;
		unsigned char keypadInput = PORTD & 0x0F;
		if(keypadInput != 3 && keypadInput != 7 && keypadInput != 11 && keypadInput != 12 && keypadInput != 13 && keypadInput != 14)
		{		
			counter = keypadCharacters[keypadInput];
		}
	}
	else if(TMR0IF)
	{
		TMR0IF = 0;
		myTMR0IF = 1;
	}
	
	GIE = 1;	// enable interrupts
}

void main(void)
{
	TRISB = 0xFF;
	TRISC = 0x00;
	TRISD = 0xFF;

	INTF = 0;
	INTE = 1;

	OPTION_REG = 0xC4;
	TMR0IF = 0;
	TMR0IE = 1;
	
	GIE = 1;

	PORTC = counter;

	while(1)
	{
		if(counter == 0x09)
		{
			counter = 0x00;
		}
		else
		{
			counter ++;
		}

		delay(98);
		PORTC = counter;
	}
}
