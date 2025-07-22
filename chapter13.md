Chapter 13 – Networking and Security
Amaç  
Linux sistemlerde ağ yapılandırması, temel ağ komutları ve güvenlik kavramlarını öğrenmek.
Temel Konular
Ağ Yapılandırması:
  - IP adresleri, subnet mask, gateway ayarları  
  - `ifconfig`, `ip` komutları ile ağ arayüzü yönetimi  
  DNS ve Hostname:
  - `/etc/hosts`, `/etc/resolv.conf` dosyaları  
  - `hostname` komutu  
  Temel Ağ Komutları:
  - `ping`, `traceroute`, `netstat`, `ss`  
  - `curl`, `wget`  
Firewall ve Güvenlik:
  - `iptables`, `firewalld` ile temel firewall ayarları  
  - `ufw` basit firewall yönetimi  
  SSH: 
  - Güvenli uzak bağlantı için SSH kullanımı  
  - `ssh`, `scp`, `sftp` komutları  
Örnekler

```bash
# Ağ arayüzlerini listele
ip addr show

# Ping ile ağ bağlantısını test et
ping google.com

# SSH ile uzak sunucuya bağlan
ssh kullanıcı@sunucu_ip

# Basit firewall durumu kontrolü (ufw)
sudo ufw status

