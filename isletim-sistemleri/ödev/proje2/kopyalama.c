#include <stdio.h>
#include<stdlib.h> 
int main(){
   FILE *file1 , *file2;//dosyalara eriþim için dosya pointerleri kullandýk.
   char filename[100],c;
   printf("okutmak istediginiz dosya adini girinz:\n");
   scanf("%s",filename);//okutulacak dosya ismi alýndý
   file1=fopen(filename,"r");//r dosya okuma kipi..
   printf("okunacak dosya alindi\n");
   if(file1==NULL){//dosya bulunmuyorsa
   printf("dosya acilmiyor %s \n",filename);
   exit(0);
   }
   printf("yazmak istediginiz dosya adini girinz:\n");
   scanf("%s",filename);//kopyalama iþleminin gerçekleþeceði dosya ismi 
   printf("yazilacak dosya ismi alindi\n");
   file2=fopen(filename,"w");///w dosya açma kipi
   if(file2==NULL){//dosya açýlmýyorsa
   printf("dosya açilmiyor %s \n",filename);
   exit(0);
   }
   c=fgetc(file1);//file1 deki karakterleri c alýr.
   while(c!=EOF){
   fputc(c,file2);//c file2 ye aktarýlýr
   c=fgetc(file1);
   }
   printf("içerik baþarili bir þekilde kopyalandi. \n %s",filename);
   fclose(file1);//file1 kapatma
   fclose(file2);//file2 kapatma
	



}
