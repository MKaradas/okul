int pin=3;

void setup() {
  Serial.begin(9600);
  pinMode(pin,OUTPUT);
}

void loop() {
  int sensorValue = analogRead(A0);

  float voltage = sensorValue*(1.5/1023.0);
  
    digitalWrite(pin,HIGH);
    Serial.println(voltage);
    delay(1000);
}
