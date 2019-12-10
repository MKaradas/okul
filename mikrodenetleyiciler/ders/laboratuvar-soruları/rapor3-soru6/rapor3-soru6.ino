int pin=A0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  int ldrDeger= analogRead(pin);
  Serial.println(ldrDeger);
  delay(250);
} 
