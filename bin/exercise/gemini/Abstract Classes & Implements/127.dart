void main() {
  // no 127
}

abstract class ObjekGeometri {
  String nama;
  ObjekGeometri({required this.nama});

  void gambar();
}

class Segitiga extends ObjekGeometri {
  Segitiga({required super.nama});

  @override
  void gambar() {
    print('Menggambar sebuah segita dengan nama: $nama');
  }
}


