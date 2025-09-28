import 'dart:io';

void main() {
  // no 44

  stdout.write("Masukkan pembilang: ");
  String pembilangString = stdin.readLineSync()!;
  double? pembilangDouble = double.tryParse(pembilangString);

  if (pembilangDouble == null) {
    print('Error: Input harus berupa angka.');
  } else {
    stdout.write("Masukkan penyebut: ");
    String penyebutString = stdin.readLineSync()!;
    double? penyebutDouble = double.tryParse(penyebutString);

    if (penyebutDouble == null) {
      print('Error: Input harus berupa angka.');
    } else if (penyebutDouble == 0) {
      print('Error: Tidak bisa melakukan pembagian dengan nol.');
    } else {
      print('Hasil: ${pembilangDouble / penyebutDouble}');
    }
  }
}
