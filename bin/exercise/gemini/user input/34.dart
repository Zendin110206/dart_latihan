import 'dart:io';

void main() {
  // no 34
  stdout.write('Masukkan panjang sisi persegi: ');
  String angkaString = stdin.readLineSync()!;
  double angkaDouble = double.parse(angkaString);

  double hasil = hitungLuasPersegi(angkaDouble);
  print('Luas persegi dengan sisi $angkaDouble adalah $hasil');
}

double hitungLuasPersegi(double angka) {
  return angka * angka;
}
