/*
  Blink
  Is the classic Hello World program written to know if your Arduino board run.
  
  Connect a LED in the board. 
  A lead has 2 pins to connect to the board. The first one, has to connect in Pin 13 and the another one in GND.
  Connect both in Digital output part in the board.
*/
 
// Pin 13 has an LED connected on most Arduino boards.
// give it a name:
int led = 13;

// the setup routine runs once when you press reset:
void setup() {                
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);               // wait for a second
  digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
  delay(1000);              // wait for a second
}