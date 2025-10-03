void main() {
  final kalkulator = Kalkulator();

  // Riwayat awal
  print('Riwayat awal: ${kalkulator.operasiTerakhir}');

  // Penjumlahan
  final hasilTambah = kalkulator.tambah(10, 5);
  print('Hasil tambah: $hasilTambah');
  print('Riwayat sekarang: ${kalkulator.operasiTerakhir}');

  // Perkalian
  final hasilKali = kalkulator.kali(10, 5);
  print('Hasil kali: $hasilKali');
  print('Riwayat sekarang: ${kalkulator.operasiTerakhir}');
}

class Kalkulator {
  String _operasiTerakhir = 'Belum ada operasi';
  String get operasiTerakhir => _operasiTerakhir;

  // Method tambah
  double tambah(double a, double b) {
    final hasil = a + b;
    _operasiTerakhir = 'Penjumlahan: $a + $b = $hasil';
    return hasil;
  }

  // Method kali
  double kali(double a, double b) {
    final hasil = a * b;
    _operasiTerakhir = 'Perkalian: $a * $b = $hasil';
    return hasil;
  }
}
