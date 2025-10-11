void main() {
  // no 118

  List<Kendaraan> kendaraan = [Mobil(), Pesawat(), Mobil()];

  for (var element in kendaraan) {
    element.bergerak();
    if (element is Pesawat) {
      element.terbang();
    }
  }
}

class Kendaraan {
  void bergerak() {
    print('Kendaraan ini bergerak');
  }
}

class Mobil extends Kendaraan {
  // tidak usah dioverride untuk bergerak(), nyoba aja
}

class Pesawat extends Kendaraan {
  void terbang() => print('Terbang');
}
