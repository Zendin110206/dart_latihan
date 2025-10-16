enum LampuLalulintas { merah, kuning, hijau }

void beriAksi(LampuLalulintas warna) {
  switch (warna) {
    case LampuLalulintas.merah:
      print('Berhenti');
    case LampuLalulintas.kuning:
      print('Hati-hati');
    case LampuLalulintas.hijau:
      print('Jalan');
  }
}

void main() {
  // no 167
  beriAksi(LampuLalulintas.hijau);
}
