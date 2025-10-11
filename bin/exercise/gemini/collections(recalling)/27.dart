import 'dart:io';

void main() {
  // no 27
  var bukuTelepon = {"Andi": "0811", "Budi": "0822", "Siti": "0833"};
  stdout.write('Masukkan nama untuk dicari: ');
  String namaDicari = stdin.readLineSync()!;
  if (bukuTelepon.containsKey(namaDicari)) {
    print("Nomor telepon $namaDicari adalah ${bukuTelepon[namaDicari]}");
  } else {
    print('Kontak dengan nama $namaDicari tidak ditemukan');
  }

  
}
