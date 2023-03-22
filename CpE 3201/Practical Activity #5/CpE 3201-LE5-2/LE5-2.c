#include<xc.h>
#include <math.h>


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

int count_flag = 1;

void delay(int cnt) 
{ 
 while(cnt--); 
} 
int readADC(void) 
{ 
   int temp = 0;
    /* read result register */ 
    temp = ADRESH; // read ADRESH 
    temp = temp << 8; // move to correct position 
    temp = temp | ADRESL; // read ADRESL 
    return temp; 
} 
float round_to_one_decimal(float num) {
    float rounded_num = round(num * 1000.0);
    if(((int)(rounded_num)%100 <= 49))
	  rounded_num = floor(rounded_num);
       else
	 rounded_num = floor(rounded_num);
       
    return rounded_num/1000.0;
}

void interrupt ISR()
{
   GIE = 0;
   int d_value = 0; 
   if(ADIF == 1)
   {
   	   ADIF = 0;
       d_value = readADC(); // get ADC value 
       float resultOfConversion = (float) d_value * 0.004911; //4.882 mV step voltage
       float formattedResult = round_to_one_decimal(resultOfConversion);
       int whole = (int)formattedResult;
       float decimal = formattedResult - whole;

       unsigned int result;
       result = (whole<< 4) |  ((int)(decimal * 10) & 0x0F);
       PORTB = result;
   }
   delay(1000);
   GO = 1;
   GIE = 1;
}



void main(void) 
{ 
    TRISB = 0x00; // set all PORTB as output 
    PORTB = 0x00; // all LEDs are off 
    ADCON1 = 0x80; // result: right Justified, clock: FOSC/2 
    // all ports in PORTA are analog 
    // VREF+: VDD, VREF-: VSS 
    ADCON0 = 0x41; // clock: FOSC/2, analog channel: AN0, 
    // A/D conversion: STOP, A/D module: ON 
    ADIF = 0;
    ADIE = 1;
    GIE = 1;
   	PEIE = 1;
    GO = 1;
    for(;;) // foreground routine 
    {   
       //INTERRUPT HANDLES THE A/D PROCESS
   } 
}
