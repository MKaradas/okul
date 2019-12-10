int pin=13;
void setup() {
  pinMode(pin,OUTPUT);
  
}

void loop() {
  digitalWrite(pin,HIGH);
  delay(8000);
  digitalWrite(pin,LOW);
  delay(8000);
}
