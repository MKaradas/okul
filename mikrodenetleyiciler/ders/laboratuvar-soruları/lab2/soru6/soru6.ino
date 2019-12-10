void setup() {
  
Serial.begin(9600); //9600 bandında tanımlıyoruz

}

void loop() {
   
  int sensorDeger = analogRead(A0);
  float voltaj = sensorDeger * (5.0/1023.0);
  Serial.println(voltaj);
  delay(50);
}
