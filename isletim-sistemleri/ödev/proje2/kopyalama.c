#include <stdio.h>
#include<stdlib.h> 
int main(){
   FILE *file1 , *file2;//dosyalara eri�im i�in dosya pointerleri kulland�k.
   char filename[100],c;
   printf("okutmak istediginiz dosya adini girinz:\n");
   scanf("%s",filename);//okutulacak dosya ismi al�nd�
   file1=fopen(filename,"r");//r dosya okuma kipi..
   printf("okunacak dosya alindi\n");
   if(file1==NULL){//dosya bulunmuyorsa
   printf("dosya acilmiyor %s \n",filename);
   exit(0);
   }
   printf("yazmak istediginiz dosya adini girinz:\n");
   scanf("%s",filename);//kopyalama i�leminin ger�ekle�ece�i dosya ismi 
   printf("yazilacak dosya ismi alindi\n");
   file2=fopen(filename,"w");///w dosya a�ma kipi
   if(file2==NULL){//dosya a��lm�yorsa
   printf("dosya a�ilmiyor %s \n",filename);
   exit(0);
   }
   c=fgetc(file1);//file1 deki karakterleri c al�r.
   while(c!=EOF){
   fputc(c,file2);//c file2 ye aktar�l�r
   c=fgetc(file1);
   }
   printf("i�erik ba�arili bir �ekilde kopyalandi. \n %s",filename);
   fclose(file1);//file1 kapatma
   fclose(file2);//file2 kapatma
	



}
