import 'dart:io';

void main() {
  // no 36
  stdout.write("Berapa banyak angka yang akan dihitung? ");
  String angkaString = stdin.readLineSync()!;
  int angkaInt = int.tryParse(angkaString)!;
  int total = 0;

  for (var i = 0; i < angkaInt; i++) {
    stdout.write('Masukkan angka ke-${i + 1}: ');
    String angkaString2 = stdin.readLineSync()!;
    int angkaInt2 = int.tryParse(angkaString2)!;
    total += angkaInt2;
  }

  print('Total dari $angkaInt angka tesebut adalah $total');
  print('Rata-ratanya adalah ${total / angkaInt}');
}
