/*
  Turns on and off a light emitting diode(LED) connected to digital
  pin 13, when pressing a pushbutton attached to pin 2.
*/
const int buttonPin = 2;//the number of the pushbutton
const int ledPin = 13;//the number of the LED pin
int buttonState = 0;//variable for reading the pushbutton status
void setup()
{
  pinMode(ledPin, OUTPUT);//initialize the LED pin as an output
  pinMode(buttonPin, INPUT);//initialize the pushbutton pin as an input
}
void loop() {
  //read the state of the pushbutton value
  buttonState = digitalRead(buttonPin);
  //check if the pushbutton is pressed
  //if it is, the buttonState is HIGH
  if(buttonState = HIGH)
    digitalWrite(ledPin, HIGH);//turn LED on
  else
    digitalWrite(ledPin, LOW);//turn LED off    
}
