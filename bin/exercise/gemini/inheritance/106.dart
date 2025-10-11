void main() {
  // no 106
  Mobil mobil = Mobil();
  print('Jumlah roda mobil: ${mobil.jumlahRoda}');
  print('Jumlah pintu mobil: ${mobil.jumlahPintu}');
  mobil.klakson();
}

class Kendaraan {
  int jumlahRoda = 4;
  void klakson() {
    print('Beep');
  }
}

class Mobil extends Kendaraan {
  int jumlahPintu = 4;
}
