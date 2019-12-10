
int ledR = 3;//pin numaralarımızı tanımladık.
int ledG = 5;
int ledB = 6;
void setup() {

  pinMode(ledR,OUTPUT);//pinlerimizden çıkış alacağımızı belirttik.
  pinMode(ledG,OUTPUT);
  pinMode(ledB,OUTPUT);
}
void loop() {

  renkKoduAl(0,255,0);//örneğin burada 0-255-0 değerlerini girerek yeşil renk elde etmeye çalışıyoruz.
  delay(2000);
  renkKoduAl(255,0,0);//kırmızı
  delay(2000);
  renkKoduAl(255,255,0);//sarı
  delay(2000);
  renkKoduAl(128,0,128);//mor
  delay(2000);
  
}
void renkKoduAl(int R,int G,int B)
{
  analogWrite(ledR,R);
  analogWrite(ledG,G);
  analogWrite(ledB,B);
}
