# Tahapan Awal Penggunaan Dart di Visual Studio Code

### Instalasi Dart di Arch Linux (Manjaro)
Berikut adalah cara instalasi dart  :

    sudo Pacman -S dart

Tunggu instalasi hingga selesai. Agar dapat memastikan dart Anda telah terinstall dengan sempurna, buatlah satu file dart kemudian jalankan. Berikut adalah langkah-langkahnya.

    sudo nano helloWorld.dart

Setelah masuk ke dalam helloWorld.dart, isilah file tersebut dengan kode berikut.

    void main() {
        print("Hello World");
    }

Kemudian simpan hasil perubahan yang telah Anda buat sebelumnya. Lalu arahkan terminal Anda ke direktori tempat penyimpanan helloWorld.dart dan tuliskanlah perintah berikut.

    dart helloWorld.dart

Jika telah berhasil menampilkan Hello World maka selamat Dart Anda telah terinstall dengan sempurna.

### Latihan Program Dasar Dart di Language Samples Official Dart Website

#### Hello World
Pada bagian ini, kita menjalankan program dasar dari dart untuk memastikan bahwa dart telah terinstall dengan sempurna di device kita. Berikut adalah kode yang dapat teman-teman ikuti untuk mencoba program pada sesi ini.
##### helloWord.dart

    void main() {
        print("hello world");
    }

#### Variables
Bagian ini akan mengajarkan kita mengenai penulisan variabel yang ada di dart. Berikut adalah contoh implementasi kode.
##### variables.dart

    void main() 
    {
        var name = 'Voyager I';
        var year = 1997;
        var antennaDiameter = 3.7;
        var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
        var image = {
            'tags' : ['saturn'],
            'url' : '//path/to/saturn.jpg'
        };
    }

#### Control Flow Statements
Pada sesi Control Flow Statements kita akan mengenal percabangan dan perulangan yang ada di dart. Berikut adalah implementasinya.
##### controlFlowStatements.dart

    void main() 
    {
        var name = 'Voyager I';
        var year = 1997;
        var antennaDiameter = 3.7;
        var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
        var image = {
            'tags' : ['saturn'],
            'url' : '//path/to/saturn.jpg'
        };

        if(year >= 2001) {
          print('21th century')
        } else if (year >= 1901) 
          print('20th century')
        }

        for (var object in flybyObjects) {
            print(object);
        }

        for(int month=1; month<=12; month++) {
            print(month);
        }
        
        while (year < 2016) {
            year+=1;
        }
    }

#### Functions
Pada bagian ini, kita akan belajar mengenai pembuatan fungsi di dart. Berikut adalah contoh penerapan kodenya.
##### functions.dart

    int fibonacci(int n) {
      if(n==0 || n==1) return n;
      return fibonacci(n-1) + fibonacci(n-2);
    }

    void main() 
    {
        var name = 'Voyager I';
        var year = 1997;
        var antennaDiameter = 3.7;
        var flybyObjects = ['Jupiter', 'Saturn', 'Uranus',  'Neptune'];
        var image = {
            'tags' : ['saturn'],
            'url' : '//path/to/saturn.jpg'
        };

        if(year >= 2001) {
            print('21th century');
        } else if (year >= 1901) {
            print('20th century');
        }

        for (var object in flybyObjects) {
            print(object);
        }

        for(int month=1; month<=12; month++) {
            print(month);
        }

        while (year < 2016) {
            year+=1;
        }

        var result =fibonacci(11);
        print(result);

        flybyObjects.where((name)=> name.contains('turn')).forEach(print);
    }

#### Import
Import dapat kita manfaatkan untuk menjalankan program secara bersamaan sekaligus meskipun berada pada file yang berbeda.
##### import.dart
    import 'dart:math';

    int fibonacci(int n) {
      if(n==0 || n==1) return n;
      return fibonacci(n-1) + fibonacci(n-2);
    }

    void main() 
    {
      var name = 'Voyager I';
      var year = 1997;
      var antennaDiameter = 3.7;
      var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'] ;
      var image = {
        'tags' : ['saturn'],
        'url' : '//path/to/saturn.jpg'
      };

      if(year >= 2001) {
        print('21th century');
      } else if (year >= 1901) {
        print('20th century');
      }

      for (var object in flybyObjects) {
        print(object);
      }

      for(int month=1; month<=12; month++) {
        print(month);
      }

      while (year < 2016) {
        year+=1;
      }

      var result =fibonacci(11);
      print(result);

      flybyObjects.where((name)=> name.contains('turn')).forEach(print);
    }

Sekian penjelasan singkat mengenai perkenalan dart pada kesempatan kali ini, semoga bermanfaat.