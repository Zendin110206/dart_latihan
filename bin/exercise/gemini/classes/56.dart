void main() {
  // no 56
  var pensil = ItemStock(nama: 'Pensil', jumlah: 20);
  print('Stok awal pensil: ${pensil.jumlah}');
  pensil.tambahStok(10);
  print('Stok setelah d;itambah 10: ${pensil.jumlah}');
  pensil.kurangiStok(5);
  print('Stok setelah dikurangi 5: ${pensil.jumlah}');
  pensil.kurangiStok(30);
  print('Stok akhir Pensil: ${pensil.jumlah}');
}

class ItemStock {
  String nama;
  int _jumlah;

  ItemStock({required this.nama, required int jumlah}) : _jumlah = jumlah;
  int get jumlah => _jumlah;

  void kurangiStok(int kurang) {
    if (_jumlah - kurang <= 0) {
      print('Stok tidak mencukupi');
    } else {
      _jumlah -= kurang;
    }
  }

  void tambahStok(int tambah) {
    _jumlah += tambah;
  }
}
