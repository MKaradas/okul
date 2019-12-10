float tmpC;
int tmpPin=A1,oku;

void setup() {
  analogReference(INTERNAL);
  Serial.begin(9600);
}

void loop() {
oku = analogRead(tmpPin);
tmpC = oku/9.31;
Serial.println(tmpC);  
delay(1000);

} 
