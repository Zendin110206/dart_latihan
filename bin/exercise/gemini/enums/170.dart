enum UkuranKaos {
  s(68, 48),
  m(70, 50),
  l(72, 52),
  xL(74, 54);

  final int panjang;
  final int lebar;
  const UkuranKaos(this.panjang, this.lebar);
}

void main() {
  // no 170
  var ukuranku = UkuranKaos.m;
  print(
    'Panjang kaos = ${ukuranku.panjang} dan Lebar kaos = ${ukuranku.lebar}',
  );
}

