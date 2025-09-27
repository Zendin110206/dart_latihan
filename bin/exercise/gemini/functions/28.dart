void main() {
  // no 28

  double hasilTambah = kalkulator(10, 5, tambah);
  double hasilKurang = kalkulator(10, 5, kurang);
  double hasilKali = kalkulator(10, 5, kali);
  double hasilBagi = kalkulator(10, 5, bagi);

  print('Hasil tambah: $hasilTambah');
  print('Hasil kurang: $hasilKurang');
  print('Hasil kali: $hasilKali');
  print('Hasil bagi: $hasilBagi');
}

double tambah(double angka1, double angka2) {
  return angka1 + angka2;
}

double kurang(double angka1, double angka2) {
  return angka1 - angka2;
}

double kali(double angka1, double angka2) {
  return angka1 * angka2;
}

double bagi(double angka1, double angka2) {
  return angka1 / angka2;
}

double kalkulator(
  double angka1,
  double angka2,
  double Function(double, double) operasi,
) {
  double hasilAkhir = operasi(angka1, angka2);
  return hasilAkhir;
}
