import 'dart:io';

void main() {
  while (true) {
    // no 45
    stdout.write('Apakah Anda yakin? (y/n): ');
    String input = stdin.readLineSync()!;
    String inputBersih = input.trim().toLowerCase();
    if (inputBersih != 'y' && inputBersih != 'n') {
      print('Pilihan tidak valid. Harap masukkan \'y\' atau \'n\'.');
    } else if (inputBersih == 'y') {
      print('Anda memilih: y. Proses dilanjutkan.');
      break;
    } else {
      print('Anda memilih: n. Proses dibatalkan.');
      break;
    }
  }
}
