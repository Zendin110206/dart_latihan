void main() {
  // no 78
  // Membuat list belanjaan
  List<Item> belanjaan = [
    Item(nama: 'Buku', harga: 50000.0),
    Item(nama: 'Pensil', harga: 20000.0),
    Item(nama: 'Tas', harga: 80000.0),
  ];

  double totalHarga = belanjaan.fold(
    0.0,
    (jumlah, item) => jumlah + item.harga,
  );
  // Cetak hasil
  print("Total harga belanjaan: $totalHarga");
}

class Item {
  String nama;
  double harga;

  Item({required this.nama, required this.harga});
}
