int ledPin = 13;
void setup() {
  pinMode(ledPin, OUTPUT); //cikis elbisesi giydirdik yani

}

void loop() {
  digitalWrite(ledPin, HIGH);//led e 5 volt gonderiyoruz yaniyor
  delay(150);//1s (1000ms) cinsinden gecikme sağlıyor.
  digitalWrite(ledPin, LOW);//0 volt gonderiyoruz led e sonuyor. 
  delay(150);
}
