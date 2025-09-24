// class_tutorial.dart
// Belajar class & object dari nol bareng tutor

// Program utama
void main() {
  print('===== 1. Class Dasar =====');
  var cookie1 = Cookie(); // bikin objek dari class Cookie
  cookie1.baking(); // panggil method
  print(cookie1.shape); // akses property
  print('${cookie1.size} cm');

  print('===== 2. Ubah properti melalui variabel =====');
  cookie1.shape = 'Kotak';
  print('Cookie1 shape diubah menjadi: ${cookie1.shape}');

  print('===== 3. Contoh salah (objek tidak disimpan) =====');
  // Ini bikin objek baru setiap kali, jadi tidak permanen
  Cookie().shape = 'Oval';
  print(Cookie().shape); // tetap 'Circle', karena objek baru lagi

  print('===== 4. Constructor Positional =====');
  var cake = Cake('Brownies', 20);
  print('Cake: ${cake.name}, ukuran: ${cake.size}cm');

  print('===== 5. Constructor Named Parameter =====');
  var book = Book(title: 'Belajar Dart', pages: 150);
  print('Buku: ${book.title}, halaman: ${book.pages}');

  print('===== 6. Shadowing & this (versi aman) =====');
  var person = Person('Zaenal', 22);
  // di constructor, parameternya dinamai beda supaya gak bentrok
  print('Nama: ${person.name}, Umur: ${person.age}');

  print('===== 7. Shadowing & this (versi rawan bingung) =====');
  var student = Student('Rudi', 20);
  // output awal tetap 'Unknown' karena belum diubah di baris print()
  // perubahan terjadi setelahnya
  print('Nama murid: ${student.name}, umur: ${student.age}');
}

// =======================
// 1. Class dasar
class Cookie {
  // property (variabel dalam class)
  String shape = 'Circle';
  double size = 15.2;

  // method (fungsi dalam class)
  void baking() {
    print('Baking has started...');
  }

  bool isCooling() {
    return false;
  }
}

// =======================
// 2. Constructor Positional
class Cake {
  String name;
  double size;

  // constructor: langsung isi property saat objek dibuat
  Cake(this.name, this.size);
}

// =======================
// 3. Constructor Named Parameter
class Book {
  String title;
  int pages;

  // named constructor: bisa urutan bebas, wajib tulis nama
  Book({required this.title, required this.pages});
}

// =======================
// 4. Hindari shadowing (nama beda = aman)
class Person {
  late String name;
  late int age;

  // parameternya dinamai beda supaya gak nabrak
  Person(String inputName, int inputAge) {
    name = inputName;
    age = inputAge;
  }
}

// =======================
// 5. Contoh rawan shadowing
class Student {
  String name = 'Unknown';
  int age = 0;

  // nama parameter sama dengan nama property
  Student(String name, this.age) {
    // ini masih cetakan lama, belum berubah
    print(name); // ← ini 'Rudi' → variabel lokal (parameter)
    print(this.name); // ← ini masih 'Unknown' → properti objek

    // assign ke property yang asli
    this.name = name;
  }
}
