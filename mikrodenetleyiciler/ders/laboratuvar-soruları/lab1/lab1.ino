 int led1=3,led2=5,led3=6;
void setup() {

  
pinMode(led1,OUTPUT);
pinMode(led2,OUTPUT);
pinMode(led3,OUTPUT);
}

void loop() {
 renkKoduAl(0,255,0); //yeşil
 delay(2000);
 renkKoduAl(255,0,0); //kırmızı
 delay(2000);
 renkKoduAl(0,0,255);//mavi 
 delay(2000);
 renkKoduAl(255,255,0); //sarı
 delay(2000);
}

void renkKoduAl(int r,int g,int b)
{
  analogWrite(led1,r);
  analogWrite(led2,g);
  analogWrite(led3,b);
}
