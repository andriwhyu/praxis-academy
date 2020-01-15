# Memulai Flutter Bagi Pemula
## Instalasi Flutter Menggunakan Manjaro Linux
Langkah-langkah instalasi flutter :

1. Download flutter dari official website berikut https://flutter.dev/docs/get-started/install . Pilihlah menu sesuai dengan jenis OS kalian. Pada kesempatan kali ini saya menggunakan OS Linux sehingga kita pilih menu linux.
2. Download file flutter yang disediakan.
3. Setelah itu arahkan terminal kalian ke directory tempat kalian ingin menyimpan hasil instalasi flutter, disarankan untuk menyimpannya pada folder home. Perintah agar mengarahkan terminal ke direktori home yaitu *cd ~* . 
4. Lalu jalankan command berikut di terminal kalian.

    > tar xf ~/`Download (Direktori file yang telah di download)`/flutter_linux_v1.12.13+hotfix.5-stable.tar.xz
5. Setelah langkah 4 telah berhasil dijalankan, kita lanjutkan instalasi dengan cara menambahkan path direktori hasil instalasi ke .bashrc.
    > nano ~/.bashrc

    Pada file *.bashrc* tersebut tambahkan code berikut
    > export PATH="$PATH:`home/username (direktori home anda)`/flutter/bin"

6. Setelah itu jalankan perintah *source ~/.bashrc*.
7. Selamat flutter anda telah terinstall. Pastikan instalasi telah berhasil sepenuhnya dengan menuliskan perintah *flutter*. Jika terminal menunjukkan response terhadap perintah tersebut maka flutter anda telah terinstall dengan baik.
