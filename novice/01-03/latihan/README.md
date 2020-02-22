# Penggunaan Class di Dart
## Overview
Dart merupakan salah satu bahasa pemrograman yang dapat menerapkan prinsip OOP (Object Oriented Programming). OOP merupakan konsep pemrograman yang memandang dan mengklasifikasikan fungsionalitas code menjadi object-object. Ketika menggunakan OOP, kita akan berkenalan dengan Class. Class adalah blueprint atau desain dari object yang memungkinkan objek tersebut dapat menjalankan fungsionalitas- fungsionalitas tertentu. 

    Class Pegawai {
        int idPegawai;
        int gaji;

        void setGaji(int g) {
            gaji = g;
        }
    }

Pada contoh code di atas menunjukkan bahwa terdapat class Pegawai (yang kemudian dapat digunakan menjadi object) yang memiliki idPegawai dan dapat digunakan untuk mengisi gaji dari setiap pegawai.

## Konstruktor
Ketika menggunakan Class, kita akan berkenalan dengan Konstruktor. Konstruktor merupakan salah satu fungsionalitas dari class yang difungsikan untuk menginisialisasi nilai atribut-atribut (variabel dalam class) saat class pertama kali diaktifkan/dipanggil. Berikut adalah contoh penerapannya.

    class Point {
        num x, y;

        Point(num x, num y) { // Ini adalah konstruktor
          // Inisialisasi variabel
          this.x = x;
          this.y = y;
        }
    }

    void main() {
        var p = Point(5, 1);
        print(p.x);

        // outputnya adalah 5
    }

## Inheritance atau Pewarisan
Pewarisan merupakan salah satu konsep dari class yang memungkinkan suatu class dapat memiliki fungsionalitas class lain tanpa harus menuliskkan fungsionalitas class lain tersebut. Konsep utama dari pewarisan adalah class yang membutuhkan fungsionalitas dari class lain akan menjadi _child_ sementara class yang dibutuhkan fungsionalitasnya akan menjadi _parent_. _Child_ dapat mengakses dan memiliki seluruh fungsionalitas parent dan juga mampu mengembangkan fungsi tersendiri yang tidak dimiliki oleh _parent_. Akan tetapi, _parent_ tidak dapat memiliki fungsionalitas _child_. Berikut adalah contoh penerepannya.

    void main() {
        var pegawai = Pegawai();
        print(pegawai.describeOrang());
        print(pegawai);
    }

    class Orang {
        Orang({this.nama,this.usia, this.tinggi});

        final String nama;
        final int usia;
        final double tinggi;

        String describeOrang() => "Nama pegawai $nama. Usia $usia tahun dengan tinggi $tinggi cm";

        @override
        String toString() => "Data Pegawai: Nama:${nama}, Usia: $usia";
    }

    class Pegawai extends Orang {
      Pegawai({this.pegawaiId, this.gaji}) : super(nama: "Andri", age:  18, height: 175);
    
      final String pegawaiId;
      final int gaji;

      @override
      String toString() => "Data Orang ${super.toString()}";
    }