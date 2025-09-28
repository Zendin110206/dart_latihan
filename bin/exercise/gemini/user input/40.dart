import 'dart:io';

void main() {
  // no 40
  int angkaRahasia = 76;
  print(
    'Selamat datang di permainan tebak angka! Saya punya angka rahasia (1-100).',
  );
  while (true) {
    stdout.write('Masukkan tebakan Anda: ');
    String tebakanString = stdin.readLineSync()!;
    int tebakanInt = int.tryParse(tebakanString)!;

    if (tebakanInt < angkaRahasia) {
      print('Terlalu rendah');
    } else if (tebakanInt > angkaRahasia) {
      print('Terlalu tinggi');
    } else {
      print('Tepat! Anda berhasil menebak.');
      break;
    }
  }
}
