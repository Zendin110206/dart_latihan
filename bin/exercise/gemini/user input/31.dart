import 'dart:io';

void main() {
  // no 31
  stdout.write('Siapa nama Anda? ');
  String nama = stdin.readLineSync()!;
  print('Halo, $nama! Selamat datang di dunia interaktif dart');
}
