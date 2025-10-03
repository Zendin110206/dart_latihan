import 'dart:io';

void main() {
  // no 72
  List<String> daftarBelanja = [];
  while (true) {
    stdout.write('Masukkan item belanja (atau \'selesai\'): ');
    String? daftarBaru = stdin.readLineSync()!;
    if (daftarBaru.trim().toLowerCase() == 'selesai') {
      break;
    } else {
      daftarBelanja.add(daftarBaru);
    }
  }

  print('Daftar belanja anda');
  for (var daftar in daftarBelanja) {
    print('- $daftar');
  }
}
