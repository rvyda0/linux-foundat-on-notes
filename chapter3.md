# Chapter 3: Önyükleme İşlemi ve Linux Sistem Bileşenleri

Önyükleme İşlemi (Boot Process): 
Bir bilgisayar açıldığında ilk olarak BIOS (Basic Input/Output System) devreye girer. BIOS, donanımı test eder ve sistemin önyükleme yapacağı aygıtı bulur. Modern sistemlerde BIOS yerini UEFI (Unified Extensible Firmware Interface) almıştır.

Önyükleme Kayıtları:
- MBR (Master Boot Record): Eski tip BIOS sistemlerde önyüklemeyi başlatan ve disk bölümlerini yöneten kayıt alanıdır. 
- EFI Bölümü:UEFI tabanlı sisemlerde bulunan özel bir disk bölümü olup, boot loader ve ilgili dosyaları barındırır.

Önyükleyici (Boot Loader):
BIOS/UEFI’den sonra devreye giren, işletim sistemini yükleyen programdır. Yaygın boot loader’lar GRUB ve LILO’dur. Önyükleyici iki aşamada çalışır: ilk aşama küçük bir alanı, ikinci aşama ise daha kapsamlı dosya sistemlerini kullanarak çekirdeği yükler.

udev Sistemi:
Linux sistemde donanım aygıtlarını yönetmek için kullanılan kullanıcı alanı aygıt yöneticisidir. Önyükleme sırasında sistemdeki donanımları algılar ve uygun sürücüleri yükler.

Metin Modu Girişi: 
Sistem açılırken grafik arayüz yerine metin tabanlı bir terminal ekranına geçiş yapılabilir. Bu, özellikle sistem yönetimi ve hata ayıklama için kullanılır.

Linux Çekirdeği (Kernel):
Linux işletim sisteminin kalbidir. Donanım ve yazılım arasındaki iletişimi sağlar, temel servisleri yönetir.

/sbin/init ve Hizmetler: 
İşletim sistemi açıldığında ilk çalışan süreç init’dir. Modern Linux sistemlerinde bu görev `systemd` tarafından üstlenilir. init veya systemd, diğer tüm sistem servislerini başlatır ve yönetir.

systemd:
Linux sistemlerinde init sisteminin modern versiyonudur. Hizmetlerin başlatılması, durdurulması, sistem kaynaklarının yönetimi gibi görevleri üstlenir.

Linux Dosya Sistemleri: 
Linux, ext4, XFS, Btrfs gibi çeşitli dosya sistemlerini destekler. Dosya sistemi, verilerin diskte nasıl organize edildiğini belirler.



### Linux Dağıtımı Seçmek ve Dikkat Edilmesi Gerekenler

Linux dünyasında çok sayıda dağıtım (distribution) bulunur ve her biri farklı amaçlara, kullanıcı deneyimlerine ve destek seviyelerine sahiptir. Doğru dağıtımı seçmek, kullanıcının ihtiyaçlarına, teknik bilgi seviyesine ve kullanım amacına bağlıdır.

Dikkat Edilmesi Gerekenler:
- Kullanım Amacı:*# Chapter 3: Önyükleme İşlemi ve Linux Sistem Bileşenleri

Önyükleme İşlemi (Boot Process): 
Bir bilgisayar açıldığında ilk olarak BIOS (Basic Input/Output System) devreye girer. BIOS, donanımı test eder ve sistemin önyükleme yapacağı aygıtı bulur. Modern sistemlerde BIOS yerini UEFI (Unified Extensible Firmware Interface) almıştır.

Önyükleme Kayıtları: 
- MBR (Master Boot Record): Eski tip BIOS sistemlerde önyüklemeyi başlatan ve disk bölümlerini yöneten kayıt alanıdır. 
- EFI Bölümü: UEFI tabanlı sistemlerde bulunan özel bir disk bölümü olup, boot loader ve ilgili dosyaları barındırır.

Önyükleyici (Boot Loader):
BIOS/UEFI’den sonra devreye giren, işletim sistemini yükleyen programdır. Yaygın boot loader’lar GRUB ve LILO’dur. Önyükleyici iki aşamada çalışır: ilk aşama küçük bir alanı, ikinci aşama ise daha kapsamlı dosya sistemlerini kullanarak çekirdeği yükler.

udev Sistemi:
Linux sistemde donanım aygıtlarını yönetmek için kullanılan kullanıcı alanı aygıt yöneticisidir. Önyükleme sırasında sistemdeki donanımları algılar ve uygun sürücüleri yükler.

Metin Modu Girişi:
Sistem açılırken grafik arayüz yerine metin tabanlı bir terminal ekranına geçiş yapılabilir. Bu, özellikle sistem yönetimi ve hata ayıklama için kullanılır.

Linux Çekirdeği (Kernel): 
Linux işletim sisteminin kalbidir. Donanım ve yazılım arasındaki iletişimi sağlar, temel servisleri yönetir.

/sbin/init ve Hzmetler:
İşletim sistemi açıldığında ilk çalışan süreç init’dir. Modern Linux sistemlerinde bu görev `systemd` tarafından üstlenilir. init veya systemd, diğer tüm sistem servislerini başlatır ve yönetir.

systemd:
Linux sistemlerinde init sisteminin modern versiyonudur. Hizmetlerin başlatılması, durdurulması, sistem kaynaklarının yönetimi gibi görevleri üstlenir.

Linux Dosya Sistemleri:
Linux, ext4, XFS, Btrfs gibi çeşitli dosya sistemlerini destekler. Dosya sistemi, verilerin diskte nasıl organize edildiğini belirler.



### Linux Dağıtımı Seçmek ve Dikkat Edilmesi Gerekenler

Linux dünyasında çok sayıda dağıtım (distribution) bulunur ve her biri farklı amaçlara, kullanıcı deneyimlerine ve destek seviyelerine sahiptir. Doğru dağıtımı seçmek, kullanıcının ihtiyaçlarına, teknik bilgi seviyesine ve kullanım amacına bağlıdır.

Dikkat Edilmsi Gerekenler:
- Kullanım Amacı: Masaüstü mü, sunucu mu, gömülü sistem mi? 
- Destek ve Topluluk: Aktif topluluk, dokümantasyon ve güncelleme sıklığı önemli. 
- Paket Yönetimi: Debian tabanlı (APT), Red Hat tabanlı (RPM) veya başka sistemler.
- Donanım Uyumluluğu: Özellikle eski veya özel donanımlar için destek. 
- Kullanım Kolaylığ Yeni başlayanlar için kullanıcı dostu arayüz ve araçlar.

Örneğin, yeni başlayanlar için Ubuntu veya Linux Mint tercih edilirken, daha deneyimli kullanıcılar Fedora, Arch Linux veya Debian gibi dağıtımları seçebilir.
- Masaüstü mü, sunucu mu, gömülü sistem mi? 
- Destek ve Topluluk: Aktif topluluk, dokümantasyon ve güncelleme sıklığı önemli. 
- Paket Yönetimi: Debian tabanlı (APT), Red Hat tabanlı (RPM) veya başka sistemler. 
- Donanım Uyumluluğu: Özellikle eski veya özel donanımlar için destek. 
- Kullanım Kolaylığı: Yeni başlayanlar için kullanıcı dostu arayüz ve araçlar.

Örneğin, yeni başlayanlar için Ubuntu veya Linux Mint tercih edilirken, daha deneyimli kullanıcılar Fedora, Arch Linux veya Debian gibi dağıtımları seçebilir.

