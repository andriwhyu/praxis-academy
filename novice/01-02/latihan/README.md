# Pengenalan Dasar Dart
## Variabel pada Dart
Dalam bahasa pemrograman dart setiap variabel didefinisikan sebagai Object. Beberapa tipe data primitif atau yang sering kita temukan pada bahasa pemrograman secara umum, begitu juga dengan dart yaitu **int, String, bool, double**. Berikut adalah contoh program penggunaan tipe data dasar pada dart.

    void main() {
        int a = 1;
        int b = 2;

        print("hasil = ${a+b}");
        // hasil = 3
    }

Di dart untuk melakukan inisialisasi variabel kita dapat menggunakan **var** atau **dynamic**. 

Inisialisasi menggunakan **var** dapat menjadikan variabel dapat menetapkan tipe datanya sendiri ketika nilai diisikan ke variabel tersebut. Setelah diisikan nilai tertentu pada variabel yang diawali dengan **var** maka variabel tersebut hanya bisa diisi dengan nilai yang memiliki tipe data yang sama dengan tipe data yang telah diisikan sebelumnya. Berikut adalah contoh penerapannya.

    void main() {
        var thisString = "My string";
        var thisInt = 0;

        print("thisString, type=${thisString.runtimeType}");
        print("thisInt, type=${thisInt.runtimeType}");
        
        // Hasilnya :
        // thisString, type=String
        // thisInt, type=int

        /* Jika comment di bawah ini di-uncomment maka akan terjadi error karena variabel diisi dengan tipe data yang berbeda */

        // thisString = 0;
        // thisInt = "My string";
    }

Inisialisasi menggunakan **dynamic** menandakan bahwa variabel dapat diisi dengan nilai apa saja yang diinginkan. Bahkan jika variabel sudah diisi dengan tipe data tertentu, variabel tersebut dapat diisi dengan tipe data yang berbeda. Perhatikan contoh di bawah ini.

    void main() {
        dynamic thisInt = 0;
        print("thisInt = $thisInt");
        thisInt = "My string";
        print("thisInt = $thisInt");

        // Hasilnya :
        // thisInt = 0
        // thisInt = My string
    }