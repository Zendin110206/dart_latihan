import 'dart:io';

void main() {
  // no 7
  stdout.write('Masukkan sebuah angka bulat: ');
  String totalString = stdin.readLineSync()!;
  int totalDouble = int.parse(totalString);

  if (totalDouble % 2 == 0) {
    print('Angka $totalDouble adalah bilangan genap.');
  } else {
    print('Angka $totalDouble adalah bilangan ganjil.');
  }
}
