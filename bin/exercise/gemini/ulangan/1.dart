import 'dart:io';
import 'dart:math';

void main() {
  // no 1
  stdout.write('Masukkan berat badan Anda (kg): ');
  String beratString = stdin.readLineSync()!;
  double? beratDouble = double.tryParse(beratString);
  print(beratDouble);

  stdout.write('Masukkan tinggi badan Anda (m): ');
  String tinggiString = stdin.readLineSync()!;
  double? tinggiDouble = double.tryParse(tinggiString);
  print(tinggiDouble);

  if (beratDouble == null || tinggiDouble == null) {
    print('Masukkan data dalam bentuk angka');
  } else {
    print(
      'Indeks Massa Tubuh (IMT) Anda adalah: ${beratDouble / pow(tinggiDouble, 2)}',
    );
  }
}

  // untuk selanjutnya, tidak akan lagi pengecek gagal kalau tidak disuruh eksplisit
  // parse dan tryparse juga udah tau kok perbedaannya, no 3 akan menggunakan parse kok, ini karena saya sudah kebiasaan tryparse

