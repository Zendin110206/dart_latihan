void main() {
  // no 116
  List<BangunDatar> bangunDatar = [Persegi(), Lingkaran()];

  print(bangunDatar); // memastikan saja

  for (var element in bangunDatar) {
    element.gambar();
  }
}

class BangunDatar {
  void gambar() {
    print('Menggambar bangun datar...');
  }
}

class Persegi extends BangunDatar {
  @override
  void gambar() {
    print('Menggambar Persegi');
  }
}

class Lingkaran extends BangunDatar {
  @override
  void gambar() {
    print('Menggambar Lingkaran');
  }
}
