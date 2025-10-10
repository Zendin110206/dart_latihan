import 'dart:io';

void main() {
  // no 95
  final produkTersedia = {"Buku": 20, "Pensil": 50};
  print('Produk yang tesedia: $produkTersedia');
  stdout.write('Masukkan nama produk yang ingin dicek: ');
  String namaDicari = stdin.readLineSync()!;

  if (produkTersedia.containsKey(namaDicari)) {
    print('Produk \'$namaDicari\' tersedia');
  } else {
    print('Maaf, produk \'$namaDicari\' tidak tersedia');
  }
}
