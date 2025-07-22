Shell Script Nedir
Bir veya daha fazla komutun sırayla çalıştırıldığıgenellikle .sh uzantılı dosyalar Otomasyon ve tekrar eden işleri kolaylaştırır.

Script Yapısı
Shebang: Script’in hangi yorumlayıcı ile çalışacağını belirti

 # işareti ile başlayan satırlar script tarafından okunmaz ama açıklama amaçlıdır

Değişkenler
Değişken tanımlama: isim="ruveyda"

Kullanım: $isim veya ${isim}

Örnek:

bash
Kopyala
Düzenle
kullanici="ruveyda"
echo "Merhaba, $kullanici!"
4. Koşullu İfadeler
if-else:

bash
Kopyala
Düzenle
if [ $sayi -gt 10 ]; then
  echo "Sayı 10'dan büyük"
else
  echo "Sayı 10 veya daha küçük"
fi
case:

bash
Kopyala
Düzenle
case $renk in
  "kırmızı") echo "Dur!";;
  "yeşil") echo "Geç!";;
  *) echo "Bilinmeyen renk";;
esac
5. Döngüler
for:

bash
Kopyala
Düzenle
for i in 1 2 3 4 5; do
  echo "Sayı: $i"
done
while:

bash
Kopyala
Düzenle
sayi=1
while [ $sayi -le 5 ]; do
  echo "Sayı: $sayi"
  sayi=$((sayi+1))
done
6. Fonksiyonlar
Tanımlama ve çağırma:

bash
Kopyala
Düzenle
merhaba() {
  echo "Merhaba $1"
}
merhaba "Dünya"
7. Script İzinleri ve Çalıştırma
İzin verme:

bash
Kopyala
Düzenle
chmod +x script.sh
Çalıştırma:

bash
Kopyala
Düzenle
./script.sh
8. Otomasyon – Cron
Cron, zamanlanmış görevler için kullanılır.

Crontab düzenlemek için:

bash
Kopyala
Düzenle
crontab -e
Örnek: Her gün saat 3’te yedekleme scriptini çalıştırmak için:

cron
Kopyala
Düzenle
0 3 * * * /home/kullanici/backup.sh
Örnek Script
bash
Kopyala
Düzenle
#!/bin/bash

 Basit yedekleme scripti
kaynak="/home/kullanici/dosyalar"
hedef="/home/kullanici/yedekler"

echo "Yedekleme başlıyor..."
tar -czf $hedef/backup_$(date +%Y%m%d).tar.gz $kaynak

if [ $? -eq 0 ]; then
  echo "Yedekleme başarılı!"
else
  echo "Yedekleme başarısız!"
fi
