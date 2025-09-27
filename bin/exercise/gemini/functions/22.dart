void main() {
  // no 22

  print(
    'Luas lingkaran dengan jari-jari 10.0 adalah ${hitungLuasLingkaran(10)}',
  );
}

double kuadrat(double angka) => angka * angka;
// cara panjang
// double kuadrat(double angka) {
//   return angka * angka;
// }

double hitungLuasLingkaran(double jariJari) {
  return kuadrat(jariJari) * 3.14;
}
