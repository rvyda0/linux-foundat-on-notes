#!/bin/bash

# Genel Tekrar – Temel Linux Komutları Öğretici Script

clear
echo "📚 GENEL TEKRAR – LINUX KOMUTLARI EĞİTİMİ"
echo "Hoş geldiniz!"
echo ""
read -p "Devam etmek için Enter'a basın..."

# 1. ls komutu
clear
echo "1. ls komutu → Dosya ve klasörleri listeler."
echo "Komut: ls -l"
read -p "Enter'a basınca komut çalıştırılacak..."
ls -l

read -p "Devam etmek için Enter'a basın..."

# 2. cd komutu
echo ""
echo "2. cd komutu → Dizin değiştirmenizi sağlar."
echo "Örnek: cd /tmp"
read -p "Şimdi /tmp dizinine geçmek için Enter'a basın..."
cd /tmp
pwd

read -p "Devam etmek için Enter'a basın..."

# 3. touch ve mkdir
echo ""
echo "3. touch ve mkdir komutları"
echo "touch → Dosya oluşturur"
echo "mkdir → Klasör oluşturur"
touch deneme.txt
mkdir ornek_klasor
ls -l

read -p "Devam etmek için Enter'a basın..."

# 4. cp ve mv
echo ""
echo "4. cp ve mv komutları"
echo "cp → Kopyalar | mv → Taşır veya yeniden adlandırır"
cp deneme.txt ornek_klasor/
mv ornek_klasor/deneme.txt ornek_klasor/degisti.txt
ls ornek_klasor/

read -p "Devam etmek için Enter'a basın..."

# 5. rm komutu
echo ""
echo "5. rm komutu → Dosya siler"
rm ornek_klasor/degisti.txt
ls ornek_klasor/

read -p "Devam etmek için Enter'a basın..."

# 6. Kullanıcı oluşturma
echo ""
echo "6. Yeni kullanıcı oluşturma"
read -p "Kullanıcı adı girin: " kullanici
sudo adduser "$kullanici"

read -p "Devam etmek için Enter'a basın..."

# 7. Grup oluşturma
echo ""
echo "7. Yeni grup oluşturma ve kullanıcıyı ekleme"
read -p "Grup adı girin: " grup
sudo groupadd "$grup"
sudo gpasswd -a "$kullanici" "$grup"

read -p "Devam etmek için Enter'a basın..."

# 8. man komutu
echo ""
echo "8. man komutu → Yardım sayfası açar (çıkmak için q)"
read -p "ls komutu için yardım sayfasını görmek için Enter'a basın..."
man ls

# 9. which ile program kontrolü
echo ""
echo "9. Programın sistemde olup olmadığını kontrol etme"
read -p "Kontrol etmek istediğiniz komut adını girin: " program
which "$program" &>/dev/null && echo "✅ $program yüklü." || echo "❌ $program bulunamadı."

# Eğitim Sonu
clear
echo "✅ GENEL TEKRAR tamamlandı. Linux komutlarını denemeye devam edin!"
