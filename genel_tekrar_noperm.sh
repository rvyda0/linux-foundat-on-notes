#!/bin/bash

# GENEL TEKRAR – Şifresiz, güvenli terminal eğitimi

clear
echo "📚 GENEL TEKRAR – ŞİFRE GEREKTİRMEYEN EĞİTİM"
read -p "Devam etmek için Enter'a basın..."

# 1. ls komutu
clear
echo "1. ls -l → Dosyaları detaylı listeler:"
ls -l
read -p "Devam etmek için Enter'a basın..."

# 2. cd komutu
echo ""
echo "2. cd /tmp → /tmp dizinine geçilir:"
cd /tmp
pwd
read -p "Devam etmek için Enter'a basın..."

# 3. touch ve mkdir
echo ""
echo "3. touch ve mkdir → Dosya ve klasör oluşturur:"
touch deneme.txt
mkdir ornek_klasor
ls -l
read -p "Devam etmek için Enter'a basın..."

# 4. cp ve mv
echo ""
echo "4. cp ve mv → Dosya kopyalama ve taşıma:"
cp deneme.txt ornek_klasor/
mv ornek_klasor/deneme.txt ornek_klasor/degisti.txt
ls ornek_klasor/
read -p "Devam etmek için Enter'a basın..."

# 5. rm
echo ""
echo "5. rm → Dosya silme işlemi:"
rm ornek_klasor/degisti.txt
ls ornek_klasor/
read -p "Devam etmek için Enter'a basın..."

# 6. Kullanıcı oluşturma (yalnızca gösterim)
echo ""
echo "6. Yeni kullanıcı oluşturma (örnek komut gösterilir)"
echo "Gerçek işlem yapılmaz çünkü şifre yok."
echo "Komut: sudo adduser kullaniciadi"
read -p "Devam etmek için Enter'a basın..."

# 7. Grup işlemi (örnek)
echo ""
echo "7. Grup oluşturma ve kullanıcıyı ekleme (örnek)"
echo "sudo groupadd grupadi"
echo "sudo gpasswd -a kullanici grupadi"
read -p "Devam etmek için Enter'a basın..."

# 8. man komutu
echo ""
echo "8. man ls → ls komutu için yardım sayfası (q ile çıkış)"
read -p "Devam etmek için Enter'a basın..."
man ls

# 9. which ile kontrol
echo ""
echo "9. Komut yüklü mü? (örnek: which nano)"
read -p "Komut adını girin: " komut
which "$komut" &>/dev/null && echo "✅ $komut yüklü." || echo "❌ $komut bulunamadı."

# Son
echo ""
echo "✅ GENEL TEKRAR tamamlandı. Şifresiz eğitim versiyonu başarıyla çalıştı."
