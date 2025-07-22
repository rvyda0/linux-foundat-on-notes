# Chapter 12 – Shell Scripting and Automation

## 🎯 Amaç  
Linux kabuk (shell) script’leri yazarak otomasyon sağlamak, temel yapıları ve yaygın kullanılan komutları öğrenmek.

## 🧩 Temel Konseptler  

- **Shell Script**: Komutların yazıldığı dosya, otomatik olarak komutları çalıştırır.  
- **Yorum Satırı**: `#` ile başlayan satırlar, script içinde açıklama için kullanılır.  
- **Değişkenler**: `VAR=value` şeklinde tanımlanır, `$VAR` ile çağrılır.  
- **Kontrol Yapıları**:  
  - `if`, `then`, `else`, `fi`  
  - `for`, `while` döngüleri  
  - `case` yapısı  
- **Fonksiyonlar**: Kendi fonksiyonlarını tanımlayabilir ve çağırabilirsin.  
- **Script Çalıştırma**:  
  ```bash
  chmod +x script.sh
  ./script.sh
#!/bin/bash
# Basit bir script örneği

echo "Merhaba, kullanıcı!"
read isim
echo "Hoşgeldin, $isim!"

if [ "$isim" == "Admin" ]; then
  echo "Yönetici yetkileri aktif."
else
  echo "Normal kullanıcı modu."
fi
 Komut             | Açıklama                               |
| ----------------- | -------------------------------------- |
| `chmod +x`        | Script dosyasına çalıştırma izni verir |
| `bash script`     | Script’i bash ile çalıştırır           |
| `echo`            | Ekrana yazdırma                        |
| `read`            | Kullanıcıdan veri alma                 |
| `test` veya `[ ]` | Koşul ifadeleri için                   |
