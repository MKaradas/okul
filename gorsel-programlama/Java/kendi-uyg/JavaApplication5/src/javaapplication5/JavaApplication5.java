package javaapplication5;
public class JavaApplication5 {
    public static void main(String[] args) {
        
        Dikdortgen d1 = new Dikdortgen(60,90);
        System.out.println("Method dan önce boy : "+d1.getBoy()+" en : "+d1.getEn());
        yeniDikdortgenDegerleri(d1);
        System.out.println("Method dan önce boy : "+d1.getBoy()+" en : "+d1.getEn());
        
        
    }

    private static void yeniDikdortgenDegerleri(Dikdortgen d1) {
        d1.setEn(70);
        d1.setBoy(80);
    }
    
}
