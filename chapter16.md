1. Ağ Arayüzleri
ip addr veya ifconfig ile ağ arayüzlerini listeleme ve kontrol

IP adresi atama ve değiştirme

bash
Kopyala
Düzenle
ip addr show
sudo ip addr add 192.168.1.100/24 dev eth0
2. Bağlantı Testleri
ping: Uzak bir cihaza erişimi test etmek için kullanılır

bash
Kopyala
Düzenle
ping google.com
traceroute: Ağ üzerindeki rotayı gösterir

bash
Kopyala
Düzenle
traceroute google.com
3. DNS ve Hostlar
nslookup veya dig ile DNS sorgusu

bash
Kopyala
Düzenle
nslookup google.com
dig google.com
/etc/hosts dosyası: IP ile hostname eşleştirmesi

4. Ağ Bağlantılarını Yönetme
nmcli: Network Manager komutu

bash
Kopyala
Düzenle
nmcli dev status
nmcli con up id "wifi-ismi"
nmcli con down id "wifi-ismi"
5. Port Kontrolü
netstat veya ss ile açık portları ve bağlantıları görüntüleme

bash
Kopyala
Düzenle
ss -tuln
Örnekler
bash
Kopyala
Düzenle
 Ağ arayüzünü kapatıp açmak
sudo ip link set eth0 down
sudo ip link set eth0 up
bash
Kopyala
Düzenle
 Basit ping testi
ping -c 4 8.8.8.8
