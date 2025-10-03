void main() {
  // no 73
  List<Produk> produk = [];
  final produk1 = Produk(nama: 'Laptop', harga: 12000000);
  final produk2 = Produk(nama: 'Mouse', harga: 250000);
  final produk3 = Produk(nama: 'Keyboard', harga: 750000);

  produk.add(produk1);
  produk.add(produk2);
  produk.add(produk3);

  print('Daftar Produk: ');
  for (var daftarProduk in produk) {
    print(daftarProduk);
  }
}

class Produk {
  String nama;
  double harga;

  Produk({required this.nama, required this.harga});

  @override
  String toString() {
    return '- Nama: $nama, Harga: $harga';
  } // INI KAN SYNTAX BARU, KENAPA ENGGAK KAMU AJARIN? INGATANMU LUPA ATAU BAGAIMANA? APA ADA CARA LAIN/ EKSPETASI KAMU LAIN?
} // tolong dijawab pertanyaan di atas dengan tegas
