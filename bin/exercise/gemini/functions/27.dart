void main() {
  // no 27
  for (var angka = 1; angka < 50; angka++) {
    if (angka == 1) {
      continue;
    }

    if (isPrima(angka)) {
      print(angka);
    }
  }
}

bool isPrima(int angka) {
  for (int i = 2; i < angka; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}
