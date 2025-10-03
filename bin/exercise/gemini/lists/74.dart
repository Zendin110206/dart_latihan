import 'dart:io';

void main() {
  // no 74
  List<String> nama = ["Andi", "Budi", "Siti", "Dewi", "Eka"];
  stdout.write('Masukkan nama yang ingin dicari: ');
  String namaDicari = stdin.readLineSync()!;
  bool flag = false;
  for (var i = 0; i < nama.length; i++) {
    if (namaDicari.trim() == nama[i]) {
      flag = true;
      break;
    }
  }

  if (flag) {
    print('$namaDicari ditemukan dalam daftar');
  }
  else{
    print('$namaDicari tidak ditemukan dalam daftar');
  }
}
