void main() {
  // no 89
  
  Set<Produk> kumpulanProduk = {
    Produk(id: '1', nama: 'Apel'),
    Produk(id: '1', nama: 'Apel2'),
    Produk(id: '2', nama: 'Jeruk'),
  };

  print(kumpulanProduk);
}

class Produk {
  String id;
  String nama;

  Produk({required this.id, required this.nama});

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(Object other) => other is Produk && other.id == id;
}
