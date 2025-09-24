// ===============================================
// SETS DI DART — versi super awam
// ===============================================
//
// Inti konsep:
// - Set = kumpulan nilai UNIK (nggak ada dobel).
// - Tidak punya index (nggak bisa set[0]).
// - Cocok buat buang duplikat & cek "apakah X ada?".
//
// Catatan penting:
// - Set kosong harus pakai <T>{}. Kalau "{}" doang = Map kosong (bukan Set).
//   Contoh benar: final s = <int>{};
//   Contoh salah: final s = {}; // <-- ini Map
//
// Di bawah ada contoh-contoh pendek yang aman dipahami.
// Lihat komentar di setiap langkah + output yang diharapkan.
//

void main() {
  print('====== 1) Bikin Set & tambah elemen ======');

  // Cara bikin Set langsung (literal)
  final angka = {10, 20, 30};
  print(angka); // {10, 20, 30}

  // Menambah elemen yang SUDAH ADA —> akan diabaikan (tetap unik)
  angka.add(20);
  print(angka); // tetap {10, 20, 30}

  // Menambah elemen baru
  angka.add(40);
  print(angka); // {10, 20, 30, 40}

  print('\n====== 2) Cek ada / hapus / ukuran / loop ======');

  // Cek apakah sebuah nilai ada
  print(angka.contains(30)); // true
  print(angka.contains(99)); // false

  // Hapus nilai tertentu
  angka.remove(10);
  print(angka); // {20, 30, 40}

  // Ukuran Set
  print(angka.length); // 3

  // Loop (ingat: Set tidak punya index)
  for (final x in angka) {
    print('item: $x');
  }

  print('\n====== 3) Set kosong yang benar ======');

  // Set kosong HARUS pakai <T>{}
  final kosong = <String>{};
  print(kosong); // {}
  print(kosong.isEmpty); // true

  // Akses index? Tidak bisa langsung.
  // print(angka[0]); // ❌ ERROR: Set gak punya index

  // Kalau perlu akses "seperti index", ubah dulu ke List:
  final angkaList = angka.toList();
  print(angkaList[0]); // sekarang bisa, karena sudah jadi List

  print('\n====== 4) Dedup List (hapus duplikat) dengan Set ======');

  // a) Angka
  final listAngka = [1, 2, 2, 3, 3, 3];
  final angkaUnik = listAngka.toSet().toList();
  print(angkaUnik); // [1, 2, 3]

  // b) String (case-sensitive: "Halo" dan "halo" dianggap beda)
  final listKata = ['Halo', 'halo', 'Halo'];
  final kataUnikCaseSensitive = listKata.toSet().toList();
  print(kataUnikCaseSensitive); // ['Halo', 'halo']

  // c) String (case-insensitive: "HALO"/"Halo"/"halo" dianggap SAMA)
  final listKata2 = ['Halo', 'halo', 'HALO', 'Hai'];
  final jejak = <String>{}; // nyimpen kunci lowercase
  final hasil = <String>[]; // hasil dedup (urut sesuai kemunculan pertama)
  for (final w in listKata2) {
    final kunci = w.toLowerCase();
    if (jejak.add(kunci)) {
      // add() return true kalau item belum ada di Set jejak
      hasil.add(w);
    }
  }
  print(hasil); // ['Halo', 'Hai']

  print(
    '\n====== 5) Operasi HIMPUNAN: union / intersection / difference ======',
  );

  final a = {1, 2, 3};
  final b = {3, 4, 5};

  final gabungan = a.union(b);
  final irisan = a.intersection(b);
  final selisih = a.difference(b);

  print('a: $a'); // {1, 2, 3}
  print('b: $b'); // {3, 4, 5}
  print('union: $gabungan'); // {1, 2, 3, 4, 5}
  print('intersection: $irisan'); // {3}
  print('difference (a-b): $selisih'); // {1, 2}

  print('\n====== 6) Dedup objek sederhana (tanpa override equality) ======');

  // Kita punya list Student. Kita mau dedup berdasarkan name (case-insensitive),
  // tapi BELUM mau belajar override == & hashCode. Kita pakai trik "jejak" saja.
  final students = [
    Student('Zaenal'),
    Student('ZAENAL'),
    Student('Abidin'),
    Student('abidin'),
    Student('Abdurrahman'),
  ];

  final seenNames = <String>{};
  final uniqueStudents = <Student>[];

  for (final s in students) {
    final key = s.name.toLowerCase();
    if (seenNames.add(key)) {
      uniqueStudents.add(s);
    }
  }

  print(students);
  // [Student(name: Zaenal), Student(name: ZAENAL), Student(name: Abidin), Student(name: abidin), Student(name: Abdurrahman)]
  print(uniqueStudents);
  // [Student(name: Zaenal), Student(name: Abidin), Student(name: Abdurrahman)]

  print('\n====== 7) Konversi Set <-> List ringkas ======');

  // List -> Set (buang duplikat), Set -> List (kalau butuh index/sort)
  final listCampur = [5, 5, 1, 2, 2, 4, 3, 3];
  final setUnik = listCampur.toSet(); // {5, 1, 2, 4, 3}
  final listTanpaDuplikat = setUnik.toList(); // [5, 1, 2, 4, 3]
  listTanpaDuplikat.sort(); // kalau perlu diurutkan
  print(listTanpaDuplikat); // [1, 2, 3, 4, 5]

  print('\n====== Selesai. Inti yang perlu diingat ======');
  print('- Set = unik, tidak ada index.');
  print('- Dedup list paling gampang: list.toSet().toList()');
  print('- Jangan pakai "{}" untuk Set kosong. Pakai "<T>{}".');
}

class Student {
  final String name;
  Student(this.name);

  @override
  String toString() => 'Student(name: $name)';
}
