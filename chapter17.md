Sistem Güncellemeleri
Paket yöneticisi kullanarak sistem güncelleme (ör. apt, yum, dnf)

bash
Kopyala
Düzenle
sudo apt update && sudo apt upgrade

 Disk Alanı Kontrolü
Disk kullanımını kontrol etmek için:

bash
Kopyala
Düzenle
df -h
du -sh /path/to/directory

log Dosyaları
Sistem günlükleri /var/log altında

journalctl ile sistem günlüklerini görüntüleme

bash
Kopyala
Düzenle
journalctl -xe

 Hizmet Yönetimi
systemctl ile servisleri başlatma, durdurma, durum kontrolü

bash
Kopyala
Düzenle
sudo systemctl status nginx
sudo systemctl restart nginx

Sorun Giderme
top veya htop ile kaynak tüketimi izleme

dmesg ile çekirdek mesajlarını kontrol etme

Ağ sorunları için ping, traceroute, netstat kullanımı

 Örnek Komutlar
bash
Kopyala
Düzenle
Disk alanını kontrol et
df -h

Sistem güncellemelerini yap
sudo apt update && sudo apt upgrade -y

Servisi yeniden başlat
sudo systemctl restart apache2

Logları izle
tail -f /var/log/syslog


