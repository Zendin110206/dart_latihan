void main() {
  // no 21
  cekGanjilGenap(10);
  cekGanjilGenap(7);
}

void cekGanjilGenap(int angka) {
  if (angka % 2 == 0) {
    print('$angka adalah angka genap');
  } else {
    print('$angka adalah angka ganjil');
  }
}
