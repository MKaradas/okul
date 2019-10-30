konuNumarasi = 0
print("""
     Hoşgeldiniz...
     Konular
        1-)Functools-Manipüle Fonksiyonlar için Araçlar
        2-)Itertools-Yineleyici Fonksiyonlar
        3-)Operator-Dahili Operatörlere Fonksiyonel Arayüz
        4-)Contextlib-İçerik YÖneticisi Araçları
     
     
     """)
konuNumarasi = int(input("Lütfen konu numarasını giriniz:"))

if (konuNumarasi == 1):
    def switch(icerikNumarasi):
            case = {}
            while True:
                try:

                    case = {

                        1: '1-)Deköratorler',
                        2: '2-)(1.1)Kısmi Nesneler',
                        3: '3-)(1.2)Fonksiyon Özelliklerinin Elde Edilmesi',
                        4: '4-)(1.3)Diğer Çağrılabilirler',
                        5: '5-)(1.4)Methodlar ve Fonksiyonlar',
                        6: '6-)(1.5)Dekorasyonlar İçin Fonksiyon Özelliklerinin Elde Edilmesi',
                        7: '7-)Karşılaştırma',
                        8: '8-)(2.1)Zengin Karşılaştırma',
                        9: '9-)(2.2)Harmanlanma Sırası',
                        10: '10-)Önbelleğe Alma',
                        11: '11-)Veri Kümesini Aza',
                        12: '12-)Genel Fonksiyonlar',

                        'default': 'yanlış bir değer girdiniz'

                    }
                    print(case[icerikNumarasi])
                    break



                except KeyError:
                    print(case['default'])  # hatalı giriş olduğu anda default değeri basıyoruz .
                    break  # programın döngüden çıkmasını sağlıyoruz
                except ValueError:
                    print("Girdiğiniz değer bir tam sayı değil")
                    break


    def main():
        print("""
                     İçerikler
              1-) '1-)Deköratorler',
              2-) '(1.1)Kısmi Nesneler',
              3-) '(1.2)Fonksiyon Özelliklerinin Elde Edilmesi',
              4-) '(1.3)Diğer Çağrılabilirler',
              5-) '(1.4)Methodlar ve Fonksiyonlar',
              6-) '(1.5)Dekorasyonlar İçin Fonksiyon Özelliklerinin Elde Edilmesi',
              7-) '2-)Karşılaştırma',
              8-) '(2.1)Zengin Karşılaştırma'
              9-)  '(2.2)Harmanlanma Sırası'     
              10-) 'Önbelleğe Alma'
              11-) 'Veri Kümesini Aza'        
              12-) 'Genel Fonksiyonlar'      
                      
               """)
        while True:
            try:
                icerikNumarasi = int(input("Lütfen İçerik Numarası Giriniz: "))
                if (icerikNumarasi == -1):
                    break
                switch(icerikNumarasi)

            except ValueError:
                print("Lütfen İçerik Numaralarından Birini Giriniz...")
                continue


    main()

if (konuNumarasi == 2):
    def switch(icerikNumarasi):
        case = {}
        while True:
            try:

                case = {

                    1: '1-)Birleştirme ve Bölme Yineleyicileri',
                    2: '2-)Girişleri Dönüştürme',
                    3: '3-)Yeni Değerler Üretmek',
                    4: '4-)Filtrelemek(Süzme)',
                    5: '5-)Verileri Gruplama',
                    6: '6-)Girişleri Birleştirmek',
                    'default': 'yanlış bir değer girdiniz'

                }
                print(case[icerikNumarasi])  # parametreden gelen değeri basıyoruz
                break  # programın döngüden çıkmasını sağlıyoruz



            except KeyError:
                print(case['default'])  # hatalı giriş olduğu anda default değeri basıyoruz .
                break  # programın döngüden çıkmasını sağlıyoruz
            except ValueError:
                print("Girdiğiniz değer bir tam sayı değil")
                break


    def main():
        print("""
                       İçerikler
            '1-)Birleştirme ve Bölme Yineleyicileri',
            '2-)Girişleri Dönüştürme',
            '3-)Yeni Değerler Üretmek',
            '4-)Filtrelemek(Süzme)',
            '5-)Verileri Gruplama',
            '6-)Girişleri Birleştirmek',

           """)
        while True:
            try:

                icerikNumarasi = int(input("Lütfen İçerik Numarası Giriniz: "))
                switch(icerikNumarasi)
            except ValueError:
                print("Girdiğiniz değer bir tam sayı değil")
                continue

    main()


if (konuNumarasi == 3):
    def switch(icerikNumarasi):
        case = {}
        while True:
             try:

                 case = {

                     1: 'Mantıksal İşlemler',
                     2: 'Karşılaştırma Operatörleri',
                     3: 'Aritmetik Operatörler',
                     4: 'Dizi Operatörleri',
                     5: 'Yerinde Operatörleri',
                     6: 'Özellik ve Öğe \"Getters',
                     7: 'Özel Sınıflar',
                      'default': 'yanlış bir değer girdiniz'
                    }
                 print(case[icerikNumarasi])  # parametreden gelen değeri basıyoruz
                 break  # programın döngüden çıkmasını sağlıyoruz



             except  KeyError:
                     print(case['default'])  # hatalı giriş olduğu anda default değeri basıyoruz .
                     break  # programın döngüden çıkmasını sağlıyoruz
             except ValueError:
                           print("Girdiğiniz değer bir tam sayı değil")
                           break


    def main():
        print("""
                          İçerikler
             '1-)Mantıksal İşlemler',
             '2-)Karşılaştırma Operatörleri',
             '3-)Aritmetik Operatörler',
             '4-)Dizi Operatörleri',
             '5-)Yerinde Operatörleri',
             '6-)Özellik ve Öğe \"Getters',
             '7-)Özel Sınıflar',
        
             """)
        while True:
             try:
                icerikNumarasi = int(input("Lütfen İçerik Numarası Giriniz: "))
                switch(icerikNumarasi)
             except ValueError:
                  print("Girdiğiniz değer bir tam sayı değil")
                  continue


    main()

if (konuNumarasi == 4):
    def switch(icerikNumarasi):
        case = {}
        while True:
            try:

                case = {


                    1: '1-)İçerik Yöneticisi API\'sı',
                    2: '2-)Fonksiyon Dekoratörleri Olarak İçerik Yöneticileri',
                    3: '3-)Üreticiden İçerik Yöneticisine',
                    4: '4-)Açık Kolları Kapatma',
                    5: '5-)Yoksayılan Özel Durumlar',
                    6: '6-)Çıkış Akışlarını Yeniden Yönlendirme',
                    7: '7-)Dinamik İçerik Yöneticisi Yığınları',
                    8: '7.1-)İstifleme İçerik Yöneticileri',
                    9: '7.2-)İsteğe Bağlı İçerik Geri Aramaları',
                    10: '7.3-)Kısmi Yığınlar',
                    'default': 'yanlış bir değer girdiniz'


                }
                print(case[icerikNumarasi])  # parametreden gelen değeri basıyoruz
                break  # programın döngüden çıkmasını sağlıyoruz



            except KeyError:
                print(case['default'])  # hatalı giriş olduğu anda default değeri basıyoruz .
                break  # programın döngüden çıkmasını sağlıyoruz
            except ValueError:
                print("Girdiğiniz değer bir tam sayı değil")
                break


    def main():
        print("""
                          İçerikler
               '1-)İçerik Yöneticisi API\'sı',
               '2-)Fonksiyon Dekoratörleri Olarak İçerik Yöneticileri',
               '3-)Üreticiden İçerik Yöneticisine',
               '4-)Açık Kolları Kapatma',
               '5-)Yoksayılan Özel Durumlar',
               '6-)Çıkış Akışlarını Yeniden Yönlendirme',
               '7-)Dinamik İçerik Yöneticisi Yığınları',
               '8-)(7.1)İstifleme İçerik Yöneticileri',
               '9-)(7.2)İsteğe Bağlı İçerik Geri Aramaları',
               '10-)(7.3)Kısmi Yığınlar',

              """)
        while True:
            try:
                icerikNumarasi = int(input("Lütfen İçerik Numarası Giriniz: "))
                switch(icerikNumarasi)
            except ValueError:
                print("Girdiğiniz değer bir tam sayı değil")
                continue


    main()
