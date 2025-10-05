import 'dart:io';

void main() {
  // no 83
  var siswa = <String>{"Andi", "Budi", "Siti"};

  stdout.write('Masukkan nama siswa untuk dicek: ');
  String dicari = stdin.readLineSync()!;
  if (siswa.contains(dicari) == true) {
    print('$dicari hadir hari ini');
  } else {
    print('$dicari tidak hadir hari ini');
  }

  // cara 2: (sederhana dan singkat aja, karena cuman pengen nyoba aja, sebaiknya ada flag, cuman karena ini cuman nyoba saja tidak apa-apa)
  for (var nama in siswa) {
    if (nama == dicari) {
      print('$dicari hadir hari ini');
      break;
    } 
  }
}
