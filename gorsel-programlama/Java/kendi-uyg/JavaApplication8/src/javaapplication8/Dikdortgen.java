package javaapplication8;
public class Dikdortgen {
    
    private double en;
    private double boy;
    public Dikdortgen(double boy) {
        this.boy = boy;
    }
    public Dikdortgen() {
        
    }
    public void setEn(double en) {
        this.en = en;
    }
    public double getEn(){
        return en;
    }
    public void setBoy(double boy) {
        this.boy = boy;
    }
    public double getBoy(){
        return boy;
    }
    public double alanHesapla(){
        return en*boy;
    }
    
}
