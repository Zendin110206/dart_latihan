import 'dart:io';

void main() {
  while (true) {
    stdout.write('Masukkan angka antara 1 dan 10: ');
    String angkaString = stdin.readLineSync()!;
    int angkaInt = int.tryParse(angkaString)!;
    if (angkaInt >= 1 && angkaInt <= 10) {
      print('Terima kasih! Angka $angkaInt valid.');
      break;
    } else {
      print('Input tidak valid. Coba lagi.');
    }
  }

  // do {
  //   stdout.write('Masukkan angka antara 1 dan 10: ');
  //   String angkaString = stdin.readLineSync()!;
  //   int angkaInt = int.tryParse(angkaString)!;
  // } while (angkaInt > 10 || angkaInt < 1);

  // bingung kalau pake do while, bagaimana caranya?

  //   // Solusi Soal 38 menggunakan do-while
  // int? angka; // Deklarasikan di luar loop, beri nilai awal null

  // do {
  //   stdout.write('Masukkan angka antara 1 dan 10: ');
  //   String input = stdin.readLineSync()!;
  //   angka = int.tryParse(input); // Coba parse

  //   // Cek apakah parsing gagal ATAU angka di luar rentang
  //   if (angka == null || angka < 1 || angka > 10) {
  //     print('Input tidak valid. Coba lagi.');
  //   }
  // } while (angka == null || angka < 1 || angka > 10); // Ulangi loop jika kondisi ini benar

  // // Setelah loop selesai, kita bisa pastikan 'angka' sudah valid
  // print('Terima kasih! Angka $angka valid.');
}
