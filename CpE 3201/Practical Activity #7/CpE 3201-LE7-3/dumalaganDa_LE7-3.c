// dumalaganDa_LE7-3

#include <stdio.h>
#include <xc.h>
#include <string.h>

#pragma config FOSC = XT 
#pragma config WDTE = OFF 
#pragma config PWRTE = ON 
#pragma config BOREN = ON 
#pragma config LVP = OFF 
#pragma config CPD = OFF 
#pragma config WRT = OFF 
#pragma config CP = OFF

void delay_ms(unsigned int ms_Count) {
    unsigned int i,j;
    for(i=0;i<ms_Count;i++) {
        for(j=0;j<1000;j++);
    }
}

void instCtrl(unsigned char INST) {
	PORTB = INST;
	RD0 = 0; // RS = 0 to accept data
	RD1 = 0; // RW = 0
	RD2 = 1; // toggle on E
	delay_ms(1); // hold on for a while to let data in
	RD2 = 0; // toggle off E
}

void initLCD() {
	delay_ms(1); 
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
	delay_ms(1); // hold on for a while to let data in
	RD2 = 0; // toggle off E
}

void init_I2C_Master(void) {
	TRISC3 = 1; // set RC3 (SCL) to input
	TRISC4 = 1; // set RC4 (SDA) to input
	SSPCON = 0x28; // SSP enabled, I2C master mode
	SSPCON2 = 0x00; // start condition idle, stop condition idle
	// receive idle
	SSPSTAT = 0x00; // slew rate enabled
	SSPADD = 0x09; // clock frequency at 100 KHz (FOSC = 4MHz)
}

void I2C_Wait(void) {
	/* wait until all I2C operation are finished*/
	while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
}

void I2C_Start(void) {
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable start condition */
	SEN = 1; // SSPCON2
}

void I2C_Stop(void) {
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable stop condition */
	PEN = 1; // SSPCON2
}

void I2C_RepeatedStart(void) {
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* enable repeated start */
	RSEN = 1; // SSPCON2
}

void I2C_Send(unsigned char data) {
	/* wait until all I2C operation are finished*/
	I2C_Wait();
	/* write data to buffer and transmit */
	SSPBUF = data;
}

unsigned char I2C_Receive(unsigned char ack) {
	unsigned char temp;
	I2C_Wait(); // wait until all I2C operation are finished
	RCEN = 1; // enable receive (SSPCON2 reg)
	I2C_Wait(); // wait until all I2C operation are finished
	temp = SSPBUF; // read SSP buffer
	I2C_Wait(); // wait until all I2C operation are finished
	ACKDT = (ack)?0:1; // set acknowledge (ACK) or not acknowledge (NACK)
	ACKEN = 1; // enable acknowledge sequence
	return temp;
}

/* Master Device*/
void main(void) {
	TRISB = 0x00; // set all bits in PORTB to output
	TRISD = 0x00; // set all bits in PORTD to input
	
	initLCD();
	
	init_I2C_Master(); // initialize I2C as master
	for(;;) {	
		int i;
		unsigned int MSBH = 0;
		unsigned int LSBH = 0;
		unsigned int MSBT = 0;
		unsigned int LSBT = 0;
		float humidityFl = 0.0;
		float temperatureFl = 0.0;
		char msgHumidity[] = "Humidity: ";
		char msgTemperature[] = "Temperature: ";
		char humidityStr[4];
		char temperatureStr[4];
	
		instCtrl(0x03);
		instCtrl(0x06);
		instCtrl(0x0C);
		instCtrl(0x80); 		
		I2C_Start(); 			// initiate start condition 
		I2C_Send(0x80); 		// send the slave address + write 
		I2C_Send(0xE5); 		// send command for SHT21,read humidity, hold master
		I2C_RepeatedStart();	//inititate repeated start condition
		I2C_Send(0x81); 		// send the slave address + read 
		MSBH = I2C_Receive(1);  //read data (MSB of humidity data) and acknowledge
		LSBH = I2C_Receive(0);  //read data (LSB of humidiity data) and not acknowledge, end of read operation
		I2C_Stop(); 			//initiate stop condition
		delay_ms(50); 			//delay before next operation
		
		LSBH = LSBH & 0xFC;	
		MSBH = MSBH << 8; 	
		MSBH = MSBH | LSBH; 	
		humidityFl = -6.0 + (125.0*(MSBH/65536.0)); 
		sprintf(humidityStr, "%f", humidityFl); 		
		for(i=0; i<strlen(msgHumidity); i++)	
			dataCtrl(msgHumidity[i]);
		dataCtrl(humidityStr[0]); 
		dataCtrl(humidityStr[1]);
		dataCtrl('%'); 		
		instCtrl(0xC0); 	
		I2C_Start(); 			// initiate start condition 
		I2C_Send(0x80); 		// send the slave address + write 
		I2C_Send(0xFE); 		
		I2C_Send(0xE3); 	
		I2C_RepeatedStart(); 	//inititate repeated start condition
		I2C_Send(0x81); 		// send the slave address + read 
		MSBT = I2C_Receive(1);  
		LSBT = I2C_Receive(0); 
		I2C_Stop();			  	//initiate stop condition
		delay_ms(50); 			
		LSBT = LSBT & 0xFC; 
		MSBT = MSBT << 8; 
		MSBT = MSBT | LSBT; 
		temperatureFl = -46.85 + (175.72*(MSBT/65536.0)); 
		sprintf(temperatureStr, "%f", temperatureFl);
		for(i=0; i<strlen(msgTemperature); i++)	
			dataCtrl(msgTemperature[i]); 	
		dataCtrl(temperatureStr[0]);
		dataCtrl(temperatureStr[1]);
		dataCtrl(temperatureStr[2]);
		dataCtrl(temperatureStr[3]);
		dataCtrl(0xDF); 	
		dataCtrl('C'); 		
		I2C_Start(); 		
		I2C_Send(0x80); 
		I2C_Send(0xFE); 	
		I2C_Stop(); 	
		delay_ms(50);		
	}
}
