void main() {
  // no 9
  final perpustakaan = Perpustakaan(judul: 'Sejarah Dunia', jumlahHalaman: 450);
  perpustakaan.tampilkan();
}

class Perpustakaan {
  String judul;
  int jumlahHalaman;

  Perpustakaan({required this.judul, required this.jumlahHalaman});

  void tampilkan() {
    print('Buku "$judul" memiliki $jumlahHalaman halaman.');
  }
}
