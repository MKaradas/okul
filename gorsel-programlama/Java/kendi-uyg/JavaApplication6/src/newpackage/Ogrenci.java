package newpackage;
public class Ogrenci {
    private String isim;
    private String soyisim;
    private int yasi;
    private int ogrenciNo;
    
    public Ogrenci() {
        isim = "HEnüz girilmedi";
        soyisim = "HEnüz girilmedi";
        yasi = 0;
        ogrenciNo = 0;
    }
    public Ogrenci(String isim,String soyisim,int yasi,int ogrenciNo) {
        this.isim = isim;
        this.soyisim = soyisim;
        this.yasi = yasi;
        this.ogrenciNo = ogrenciNo;
    }
    public void setIsim(String isim) {
        this.isim = isim;
    }
    public void setSoyisim(String soyisim) {
        this.soyisim = soyisim;
    }
    public void setYasi(int yasi) {
         if(yasi < 0) {
            this.yasi = 0;
        }
        else {
            this.yasi = yasi;
        }
    }
    public void setOgrenciNo(int ogrenciNo) {
         if(ogrenciNo < 0) {
            this.ogrenciNo = 0;
        }
        else {
            this.ogrenciNo = ogrenciNo;
        }
    }
    public String getIsim() {
        return isim;
    }
    public String getSoyisim() {
        return soyisim;
    }
    public int getYasi() {
        return yasi;
    }
    public int getOgrenciNo() {
        return ogrenciNo;
    }
    public String getKimlikBilgileri() {
        return  "Kimlik isim: "+ isim + " Soyisim" + soyisim + "yas: "+yasi+ "Ogrenci Nu"+ogrenciNo;
    }
    
    @Override
    public String ToString() {
         return  "Kimlik  ToString isim: "+ isim + " Soyisim" + soyisim + "yas: "+yasi+ "Ogrenci Nu"+ogrenciNo;
    }
    
}
