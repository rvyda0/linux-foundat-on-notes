# Chapter 14 – System Maintenance and Troubleshooting

## 🎯 Amaç  
Linux sistemlerde bakım işlemleri, hata tespiti ve çözüm yöntemlerini öğrenmek.

## 🧩 Temel Konular

- Sistem loglarını inceleme (`/var/log/` dizini, `journalctl`)  
- Disk alanı ve kullanım kontrolü (`df`, `du`)  
- Bellek durumu izleme (`free`, `vmstat`)  
- Sistem servislerini yönetme (`systemctl`, `service`)  
- Problem giderme araçları (`strace`, `lsof`, `dmesg`)  
- Yedekleme ve geri yükleme yöntemleri  

## 🔄 Örnek Komutlar

```bash
# Disk kullanımını kontrol et
df -h

# Aktif servisleri listele
systemctl list-units --type=service

# Sistem günlüklerini izle
journalctl -xe

# Bir komutun sistem çağrılarını izle
strace ls
