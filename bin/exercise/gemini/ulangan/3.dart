import 'dart:io';

void main() {
  // no 3
  stdout.write('Masukkan total belanjaan Anda: ');
  String totalString = stdin.readLineSync()!;
  double totalDouble = double.parse(totalString);

  if (totalDouble > 100000) {
    print('Selamat! Anda mendapatkan diskon 10%.');
  } else {
    print('Maaf, Anda tidak mendapatkan diskon.');
  }
}
