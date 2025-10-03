void main() {
  // no 47
  Mobil mobil = Mobil();
  mobil.merk = 'Toyota';
  mobil.warna = 'Hitam';
  mobil.tahun = 2020;

  print('Merk : ${mobil.merk}');
  print('Warna : ${mobil.warna}');
  print('Tahun : ${mobil.tahun}');
  mobil.klakson();
}

class Mobil {
  String? merk;
  String? warna;
  int? tahun;

  void klakson() {
    print('Tin! Tin!');
  }
}
