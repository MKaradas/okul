int led1=8,led2=7,button=6;
boolean okuma,sonbutondurumu=HIGH,leddurumu=HIGH,debounced;
long int arttirma=0;
void setup() {
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  digitalWrite(button, HIGH);
  Serial.begin(9600);
}
 
void loop() {
  okuma = digitalRead(button);
  if (okuma == LOW)
  {
    arttirma++;
    if(arttirma>20)
    {debounced = HIGH;}
  }
  if (okuma == LOW && okuma != sonbutondurumu && debounced == HIGH)
  {
   digitalWrite(led1, leddurumu);
   leddurumu = !leddurumu;
   arttirma=0; 
  }
  sonbutondurumu = okuma;
  Serial.println(arttirma);
}
