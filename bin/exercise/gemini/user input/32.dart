import 'dart:io';

void main() {
  // no 32
  stdout.write('Berapa umur Anda sekarang? ');
  String umurString = stdin.readLineSync()!;
  int umurInt = int.parse(umurString);
  print('Tahun depan, umur Anda akan menjadi ${umurInt + 1} tahun.');
}
