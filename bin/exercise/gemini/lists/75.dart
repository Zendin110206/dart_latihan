void main() {
  // no 75
  final semuaAngka = [];
  for (var i = 1; i <= 10; i++) {
    semuaAngka.add(i);
  }

  final angkaGenap = [];
  for (var angka in semuaAngka) {
    if (angka % 2 == 0) {
      angkaGenap.add(angka);
    }
  }

  print('Semua angka: $semuaAngka');
  print('Angka genap: $angkaGenap');
}
