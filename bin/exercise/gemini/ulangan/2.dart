import 'dart:io';

void main() {
  // no 2
  stdout.write('Masukkan sebuah kata: ');
  String kata = stdin.readLineSync()!;

  stdout.write('Berapa kali ingin diulang? ');
  String banyakDiulangString = stdin.readLineSync()!;
  int? banyakDiulangInt = int.tryParse(banyakDiulangString);

  for (var i = 0; i < banyakDiulangInt!; i++) {
    print(kata);
  }
}
