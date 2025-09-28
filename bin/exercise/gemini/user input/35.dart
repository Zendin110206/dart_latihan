import 'dart:io';

void main() {
  // no 35
  print('--- Kalkulator Penjumlahan ---');
  stdout.write('Masukkan angka pertama: ');
  String angka1String = stdin.readLineSync()!;
  stdout.write('Masukkan angka kedua: ');
  String angka2String = stdin.readLineSync()!;

  double angka1Double = double.parse(angka1String);
  double angka2Double = double.parse(angka2String);

  print(
    'Hasil dari $angka1Double + $angka2Double adalah ${angka2Double + angka1Double}',
  );
}
