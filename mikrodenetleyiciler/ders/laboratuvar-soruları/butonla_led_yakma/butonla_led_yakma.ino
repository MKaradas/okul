
#define buton 8
#define kirmiziLed 10

int buton_durumu = 0;
void setup() {
  pinMode(8,INPUT);
  pinMode(10,OUTPUT);

 
}

void loop() {
  
  buton_durumu = digitalRead(buton);
  if(buton_durumu == 1)
  {
    digitalWrite(kirmiziLed,HIGH);
  }
  else
  {
    digitalWrite(kirmiziLed,LOW);
  }
}
