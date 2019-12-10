float sicaklikDegeri,gerilimDegeri1 ,gerilimDegeri;
int sicaklikGiris=A1;

void setup() {
  Serial.begin(9600);
}

void loop() {
  gerilimDegeri = analogRead(sicaklikGiris);
  gerilimDegeri1 = gerilimDegeri*(5000/1023);
  sicaklikDegeri= gerilimDegeri1/10.0;


Serial.println("Gerilim ");
Serial.println(gerilimDegeri1);
Serial.println("Sıcaklık ");
Serial.println(sicaklikDegeri);  
delay(1000);

} 
