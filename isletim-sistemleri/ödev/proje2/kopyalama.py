import sys#dosya işlemleri için sys mödülünü ekledik.
a=input("okutmak istediğiniz dosya adı:\n")#okunacak dosya ismi
try:
	okunacak=open(a,"r")#okuma işlemi için r kipi
	bilgiler=okunacak.read()#okunack dosyadan bilgiler alındı.
	okunacak.close()#bilgileri aldıktan sonra kapattık.
except IOError:#dosya yok ise
	print("okunacak dosya bulunamadı")
	sys.exit(3)#çıkış
print("okunacak dosya alındı.")
b=input("yazmak istediğiniz dosya adı:\n")#yazılacak dosya ismi
yaz=open(b,"w")#yazma işlemi için w kipi
print("yazılacak dosya alındı.")
yaz.write(bilgiler)#yazılacak dosya içine bilgileri koyarak kopyalama işlemi gerçekleştirdik
yaz.close()# işlemden sonra kapttık
print("dosya kopyalama işlemi başarılı")