void main() {
  // no 102
  var hargaProduk = {
    'Laptop': 8500000.0,
    'Mouse': 250000.0,
    'Keyboard': 750000.0,
    'Monitor': 2500000.0,
  };

  var hargaProdurSortir = hargaProduk.entries;

  var entriHargaProdurSortirFinal = hargaProdurSortir.where(
    (e) => e.value > 1000000,
  );

  var mapHargaProdukSortirFinal = Map.fromEntries(entriHargaProdurSortirFinal);
  print("Produk Mahal : $mapHargaProdukSortirFinal");


}
