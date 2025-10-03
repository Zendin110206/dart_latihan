void main() {
  // no 48
  final buku = Buku(
    judul: 'Laskar Pelangi',
    penulis: 'Andrea Hirata',
    jumlahHalaman: 529,
  );
  print('Judul: ${buku.judul}, Penulis: ${buku.penulis}');
}

class Buku {
  String judul;
  String penulis;
  int jumlahHalaman;

  Buku({
    required this.judul,
    required this.penulis,
    required this.jumlahHalaman,
  }); // paling rekomended kan?
}
