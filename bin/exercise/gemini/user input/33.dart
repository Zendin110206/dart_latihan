import 'dart:io';

void main() {
  // no 33

  stdout.write('Masukkan sebuah angka: ');
  String angkaString = stdin.readLineSync()!;
  double angkaDouble = double.parse(angkaString);

  if (angkaDouble < 0) {
    print('Angka $angkaDouble adalah angka negatif.');
  } else if (angkaDouble > 0) {
    print('Angka $angkaDouble adalah angka positif.');
  } else {
    print('Angka $angkaDouble adalah angka nol');
  }
}
