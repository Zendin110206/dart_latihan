void main() {
  // no 12
  int angka = 29;
  bool isAngkaPrima = true;

  for (var i = 2; i < angka; i++) {
    if (angka % i == 0) {
      isAngkaPrima = false;
      break;
    }
  }

  if (isAngkaPrima) {
    print('$angka adalah bilangan prima');
  } else {
    print('$angka adalah bukan bilangan prima');
  }
}
