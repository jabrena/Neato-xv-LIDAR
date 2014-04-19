/*
This Script has been developed to test how an Arduino board manage Servos.

A normal servo has 3 wires:

RED: Energy. Connect to 5v. in Power Section
BLACK: GND. Connect to GND in Power Section
YELLOW: Data. Connect to pin 9 in Digital Section.

*/

#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo 
                // a maximum of eight servo objects can be created 
 
int pos = 0;    // variable to store the servo position 
int servo1Pin = 9; //Pin to connect servo
 
void setup() { 
  myservo.attach(servo1Pin);  // attaches the servo on pin 9 to the servo object 
} 

void loop() { 
  for(pos = 0; pos < 180; pos += 1){  // goes from 0 degrees to 180 degrees                                   // in steps of 1 degree 
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(15);                       // waits 15ms for the servo to reach the position 
  } 
  for(pos = 180; pos>=1; pos-=1){     // goes from 180 degrees to 0 degrees                             
    myservo.write(pos);              // tell servo to go to position in variable 'pos' 
    delay(15);                       // waits 15ms for the servo to reach the position 
  } 
}