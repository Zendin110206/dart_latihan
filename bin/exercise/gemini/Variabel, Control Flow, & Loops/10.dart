void main() {
  // no 10
  int angka = 6;
  int faktorial = 1;

  for (var i = 1; i <= angka; i++) {
    faktorial *= i;
  }
  print('Faktorial dari $angka adalah: $faktorial');
}
