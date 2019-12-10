

int ledPin=3;
int pot = A0;



int value;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(ledPin,OUTPUT);
  
}

void loop() {
  // put your main code here, to run repeatedly:

  value = analogRead(pot);
  value = map(value,0,1023,0,255);
  Serial.println(value);
  analogWrite(ledPin,value);
  delay(10);
  
}
