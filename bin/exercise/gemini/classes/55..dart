void main() {
  // no 55
  Produk produk = Produk(nama: 'Laptop', id: 'P001');
  print('ID produk: ${produk.id}');
  print('Nama Produk: ${produk.nama}');
  // produk.id = 'P002'; // There isn't a setter named 'id' in class 'Produk'.Try correcting the name to reference an existing setter, or declare the setter.
}

class Produk {
  String nama;
  final String _id;

  Produk({required this.nama, required String id}) : _id = id;

  String get id => _id;
}

