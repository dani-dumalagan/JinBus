//This code will allow you to program the LCD1602
//https://www.makerlab-electronics.com/

//#include <Wire.h> 
//#include <LiquidCrystal_I2C.h>

#include "LiquidCrystal.h"

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
void setup() {
 lcd.begin(16, 4);
 lcd.setCursor(0, 0);  
 lcd.print("ABCDEFGHIJKLMNOP");
 
 //for 3-4 lines
 //lcd.setCursor(-4, 3);  
 //lcd.print("ABCDEFGHIJKLMNOP"); 
}
void loop() {  
}
