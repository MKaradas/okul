int pinDizi[12] = {2,3,4,5,6,7,8,9,10,11,12,13};

void setup() {
  for(int i=0;i<12;i++)
    pinMode(pinDizi[i],OUTPUT);
}

void loop() {
  for(int j=11;j>0;j--)
  {
    digitalWrite(pinDizi[j],HIGH);
    delay(40);
    digitalWrite(pinDizi[j],LOW);   
  }
  for(int i=0;i<12;i++)
  {
    digitalWrite(pinDizi[i],HIGH);
    delay(40);
    digitalWrite(pinDizi[i],LOW);
    
  }
  
}
