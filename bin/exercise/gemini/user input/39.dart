import 'dart:io';

void main() {
  // no 39
  while (true) {
    print('''--- Menu Kalkulator ---
1. Penjumlahan
2. Perkalian
3. Keluar''');
    stdout.write('Pilih opsi(1-3): ');
    String pilihMenu = stdin.readLineSync()!;
    if (pilihMenu == '3') {
      print('Terima kasih!');
      break;
    }

    stdout.write('Masukkan angka pertama: ');
    String angka1String = stdin.readLineSync()!;
    double angka1Double = double.tryParse(angka1String)!;
    stdout.write('Masukkan angka kedua: ');
    String angka2String = stdin.readLineSync()!;
    double angka2Double = double.tryParse(angka2String)!;

    if (pilihMenu == '1') {
      print('Hasil: ${jumlah(angka1Double, angka2Double)}\n');
    } else if (pilihMenu == '2') {
      print('Hasil: ${kali(angka1Double, angka2Double)}\n');
    }
  }
}

double jumlah(double angka1, double angka2) => angka1 + angka2;
double kali(double angka1, double angka2) => angka1 * angka2;
