import 'dart:io';

void main() {
  // no 43
  while (true) {
    stdout.write('Masukkan nama mahasiswa (atau \'selesai\'): ');
    String namaMhs = stdin.readLineSync()!;
    if (namaMhs.trim().toLowerCase() == 'selesai') {
      print('Program selesai.');
      break;
    }
    while (true) {
      stdout.write('Masukkan nilai untuk $namaMhs (0-100): ');
      String nilaiMhsString = stdin.readLineSync()!;
      int? nilaiMhsInt = int.tryParse(nilaiMhsString);

      if (nilaiMhsInt == null) {
        print('Input harus berupa angka.');
      } else if (nilaiMhsInt < 0 || nilaiMhsInt > 100) {
        print('Nilai tidak valid. Harap masukkan antara 0-100.');
      } else {
        print('Data tersimpan: $namaMhs, Nilai: $nilaiMhsInt');
        break;
      }
    }
  }
}
