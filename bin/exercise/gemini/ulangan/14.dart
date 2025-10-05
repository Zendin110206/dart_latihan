void main() {
  // no 14
  Kalkulator kalkulator = Kalkulator(angka1: 10, angka2: 5);
  print('Hasil 10 + 5 = ${kalkulator.jumlah()}');
  print('Hasil 10 * 5 = ${kalkulator.kali()}');
  
}

class Kalkulator {
  double angka1;
  double angka2;

  Kalkulator({required this.angka1, required this.angka2});

  double jumlah() {
    return angka1 + angka2;
  }

  double kali() {
    return angka1 * angka2;
  }
}
