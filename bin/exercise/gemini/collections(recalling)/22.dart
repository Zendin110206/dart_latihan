void main() {
  // no 22
  Map<String, dynamic> daftarProduk = {
    "Nama": 'Buku Tulis',
    "Harga": 5000,
    "Tersedia": true,
  };

  print('Detail Produk: ');
  for (var element in daftarProduk.keys) {
    print('$element: ${daftarProduk[element]}');
  } // salah satu cara
}
