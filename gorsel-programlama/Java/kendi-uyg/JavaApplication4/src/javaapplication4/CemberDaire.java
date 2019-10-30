package javaapplication4;
public class CemberDaire {
    
    
    private double yaricap;
    private static int olusturulmusNesneSayisi;
    private final double PI = 3.14;
    public CemberDaire() {
        System.out.println("Çember daire oluşturuluyor...");
        olusturulmusNesneSayisi++;
    }
    public static int getOlusturulmusNesneSayisi(){
        return olusturulmusNesneSayisi;
    }
    public void setYaricap(double yaricap) {
        if(yaricap >= 1) {
            this.yaricap = yaricap;
        }
        else {
            this.yaricap = 1;
        }
        
    }
    public double getYaricap() {
        return this.yaricap;
    }
}
