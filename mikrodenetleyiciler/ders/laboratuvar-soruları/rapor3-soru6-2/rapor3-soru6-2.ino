int r=3,g=5,b=6,pin=A0;


void setup() {
  pinMode(r,OUTPUT);
  pinMode(g,OUTPUT);
  pinMode(b,OUTPUT);
  Serial.begin(9600);
  
}

void loop() {
  int ldrDeger= analogRead(pin);
  Serial.println(ldrDeger);
  if(ldrDeger<=700)
  {
    analogWrite(r,0);
    analogWrite(g,0);
    analogWrite(b,0);
  }
  else
  {
    analogWrite(r,255);
    analogWrite(g,255);
    analogWrite(b,255);
  }
}
