void main() {
  // no 22
  final belanja = Belanja(harga: 25000, produk: 'Kopi');
  final belanja2 = Belanja(harga: 15000, produk: 'Gula');
  final belanja3 = Belanja(harga: 10000, produk: 'Teh');

  final listBelanjaku = ListBelanja();

  listBelanjaku.tambahkan(belanja);
  listBelanjaku.tambahkan(belanja2);
  listBelanjaku.tambahkan(belanja3);

  listBelanjaku.tampilkan();
}

class Belanja {
  String produk;
  double harga;

  Belanja({required this.harga, required this.produk});
}

class ListBelanja {
  final List<Belanja> listBelanja = [];

  void tambahkan(Belanja a) {
    listBelanja.add(a);
  }

  void tampilkan() {
    if (listBelanja.isEmpty) {
      print('Belum ada belanja');
    } else {
      print('--- Isi Keranjang Belanja ---');
      double totalBelanja = 0;

      for (var element in listBelanja) {
        print('- ${element.produk}, Harga: ${element.harga}');
        totalBelanja += element.harga;
      }
      print('-----------------------------');
      print('Total Belanja: $totalBelanja');
    }
  }
}
