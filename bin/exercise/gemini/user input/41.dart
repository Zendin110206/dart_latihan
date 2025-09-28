import 'dart:io';

void main() {
  // no 41
  int total = 0;
  int? inputInt;
  while (true) {
    stdout.write('Berapa banyak angka yang akan dihitung? ');
    String inputString = stdin.readLineSync()!;
    inputInt = int.tryParse(inputString);
    if (inputInt == null) {
      print("Input salah! Harap masukkan angka yang valid.");
    } else {
      break;
    }
  }

  for (var i = 0; i < inputInt; i++) {
    stdout.write('Masukkan angka ke-${i + 1}: ');
    String angkaString2 = stdin.readLineSync()!;
    int? angkaInt2 = int.tryParse(angkaString2);
    if (angkaInt2 == null) {
      print("Input salah! Harap masukkan angka yang valid.");
      i--;
    } else {
      total += angkaInt2;
    }
  }
  print('Total dari $inputInt angka tesebut adalah $total');
  print('Rata-ratanya adalah ${total / inputInt}');
}
