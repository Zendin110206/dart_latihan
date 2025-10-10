void main() {
  // no 105
  var hargaAsli = {'Buku': 20000.0, 'Pensil': 5000.0, 'Tas': 150000.0};

  // Gunakan .map() untuk membuat map baru dari map yang sudah ada.
  var hargaSetelahDiskon = hargaAsli.map((produk, harga) {
    // Untuk setiap entri, kembalikan MapEntry baru dengan harga yang sudah didiskon.
    return MapEntry(produk, harga * 0.9);
  });

  print('Harga setelah diskon: $hargaSetelahDiskon');
}
