package newpackage;
public class Personel {
    
    private String isim;
    private String soyisim;
    private int yas;
    
    public Personel() {
        isim = "Henüz girilmedi";
        soyisim = "Henüz girilmedi";
        yas = 0;
    }
    public Personel(String isim, String soyisim, int yas) {
        this.isim = isim;
        this.soyisim = soyisim;
        this.yas = yas;
    }
    public void setIsim(String isim) {
        this.isim = isim;
    }
    public void setSoyisim(String soyisim) {
        this.soyisim = soyisim;
    }
    public void setYas(int yas) {
        if(yas < 0) {
            this.yas = 0;
        }
        else {
            this.yas = yas;
        }
        
    }
    public String getIsim() {
        return isim;
    }
    public String getSoyisim() {
        return soyisim;
    }
    public int getYas() {
        return yas;
    }
    public String getKimlikBilgileri() {
        return "Kimlik bilgileri: isim: "+ isim + " Soyisim" + soyisim + "yas: "+yas;
    }
    
    public String ToString() {
        return  "Kimlik  ToString isim: "+ isim + " Soyisim" + soyisim + "yas: "+yas;
    }
}
