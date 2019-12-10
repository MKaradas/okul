int pin = 3;


void setup() {

  Serial.begin(9600);
  pinMode(3,OUTPUT);

}

void loop() {
  for(int i=0;i<255;i+=25)
  {
    analogWrite(pin,i);
    int sensorDegeri = analogRead(A0);
    float voltaj = sensorDegeri *(5.0/1023.0);
    Serial.println(voltaj);
    delay(5000);
  }
  for(int i=255;i>=0;i-=25)
  {
    analogWrite(pin,i);
    int sensorDegeri2= analogRead(A0);
    float voltaj = sensorDegeri2 * (5.0/1023.0);
    Serial.println(voltaj);
    delay(5000);
  }
  
}
