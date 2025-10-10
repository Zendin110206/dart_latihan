void main() {
  // no 104
  List<dynamic> inventaris = [
    {'nama': 'Apel', 'kategori': 'Buah', 'stok': 20},
    {'nama': 'Bayam', 'kategori': 'Sayur', 'stok': 30},
    {'nama': 'Jeruk', 'kategori': 'Buah', 'stok': 25},
    {'nama': 'Wortel', 'kategori': 'Sayur', 'stok': 40},
    {'nama': 'Mangga', 'kategori': 'Buah', 'stok': 15},
  ];

  // Map untuk menampung total stok per kategori.
  Map<String, int> totalStokPerKategori = {};

  for (var produk in inventaris) {
    String kategori = produk['kategori'];
    int stok = produk['stok'];

    if (totalStokPerKategori.containsKey(kategori)) {
      // Jika kategori sudah ada, tambahkan stoknya.
      totalStokPerKategori[kategori] = totalStokPerKategori[kategori]! + stok;
    } else {
      // Jika belum, buat entri baru.
      totalStokPerKategori[kategori] = stok;
    }
  }

  print('Total stok per kategori: $totalStokPerKategori');
}
