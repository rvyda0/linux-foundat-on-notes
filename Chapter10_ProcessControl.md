# Chapter 10 – Process Control

## 🎯 Amaç
Linux'ta çalışan işlemleri nasıl kontrol edeceğimizi, arka plan ve ön plan yönetimini, sinyal gönderme (kill komutu gibi) ve job yönetimini öğrenmek.

## 🧩 Temel Komutlar

| Komut           | Açıklama                                |
|-----------------|----------------------------------------|
| `ps`            | Çalışan işlemleri listeler              |
| `top` / `htop`  | Gerçek zamanlı işlem izleme             |
| `&`             | Komutu arka planda çalıştırır           |
| `jobs`          | Arka plandaki işlemleri listeler        |
| `fg %jobnum`    | Arka plandaki işi ön plana alır          |
| `bg %jobnum`    | Durdurulmuş işi arka planda çalıştırır  |
| `kill PID`      | İşleme sinyal gönderir (örneğin durdurma)|
| `kill -9 PID`   | SIGKILL sinyali (zorla sonlandırma)      |
| `nice` / `renice` | İşlem önceliğini ayarlamak             |

## 🔄 Örnek Senaryolar

- Bir komutu arka planda çalıştır:

```bash
sleep 100 &
