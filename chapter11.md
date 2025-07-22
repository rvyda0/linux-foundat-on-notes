# Chapter 11 – Regular Expressions and Text Processing

## 🎯 Amaç  
Linux’ta **metin işleme** ve **düzenli ifadeler (regular expressions)** ile dosyaları analiz etmeyi öğrenmek.

---

## 🧩 Temel Komutlar ve Kavramlar

| Komut        | Açıklama |
|--------------|----------|
| `grep`       | Belirli bir metni dosya içinde arar. Düzenli ifadelerle kullanılabilir. |
| `egrep`      | `grep -E` ile aynıdır, genişletilmiş regular expression destekler. |
| `sed`        | Akış (stream) düzenleyici, satırları değiştirir veya filtreler. |
| `awk`        | Metin içinde sütunlara göre işlem yapar (genelde CSV, log gibi verilerde). |
| `cut`        | Belirli sütunları kesip alır. |
| `sort`, `uniq` | Sıralama ve yinelenen satırları filtreleme. |

---

## 🧠 Regular Expressions Örnekleri

| Desen      | Açıklama |
|------------|----------|
| `.`        | Herhangi bir karakter |
| `*`        | Önceki karakterin sıfır veya daha fazlası |
| `^`        | Satır başı |
| `$`        | Satır sonu |
| `[abc]`    | a, b veya c karakteri |
| `[a-z]`    | a'dan z'ye herhangi bir karakter |
| `[^a-z]`   | a-z dışındaki karakterler |

---

## 🔧 Örnek Kullanımlar

```bash
grep "error" log.txt
grep "^start" data.txt
grep -E "user[0-9]+" users.txt
sed 's/old/new/g' file.txt
awk '{print $1}' file.txt
cut -d ':' -f 1 /etc/passwd
