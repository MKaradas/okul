package com.muhammedkaradas;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Scanner;
public class Main {

    public static void main(String[] args) throws InterruptedException {






        Scanner scanFile=null; // dosyayı okumak için Scanner objesi
        PrintWriter writer=null; // dosyaya yazmak için PrintWriter objesi
        String okunacak;//okunacak dosya adı
        Scanner al=new Scanner (System.in);//sistemden veri almak için
        System.out.println("Okunacak dosya adını giriniz:");
        okunacak=al.nextLine();
        Thread.sleep(1000);
        System.out.println("okunacak dosya alındı");
        String answer=al.nextLine();
        if(answer.equals("hayır")){
            System.exit(1);
        }
        else{

        }
        File file=new File(okunacak); // okunacak dosya File tipinde bir
// obje referansında tutuluyor

        try {
            scanFile=new Scanner(file); // olası bir exceptionu handle etmek için
// try-catch bloğu kullanıyoruz
        } catch (FileNotFoundException e) {
            System.out.println("File could not found - Dosya bulunamadı. ERROR: "+e);
// exception fırlatıldığında e ile yakalayıp gerekli mesajla birlikte basıyoruz.
        }
        String yazılacak;
        System.out.println("yazılacak dosya adını giriniz");
        yazılacak=al.nextLine();
        Thread.sleep(1000);
        try {
            writer=new PrintWriter(yazılacak);
        } catch (FileNotFoundException e) {
            System.out.println("File could not created - Dosya oluşturulamadı(yazmak için). ERROR: "+e);
        }

        while(scanFile.hasNext()) // dosyayı scanFile referansı ile taramaya başlıyoruz
        { // hasNext'i olduğu sürece yani dosya sonuna kadar
            writer.println(scanFile.nextLine()); // her okunan line(satır)'ı
        } // aynen diğer dosyaya yazıyoruz

        scanFile.close(); // scanFile objesini kapatalım
        writer.close(); // writer objesini kapatalım.

        System.out.println("The copy operation is completed. - Kopyalama işlemi tamamlandı.");









    }
}
