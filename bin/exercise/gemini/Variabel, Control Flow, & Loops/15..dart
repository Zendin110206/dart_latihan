void main() {
  // no 15
  int angkaRahasia = 7;
  int angkaTebakan = 0;

  do {
    print('Mencoba menebak : $angkaTebakan');
    angkaTebakan++;
  } while (angkaTebakan != angkaRahasia);

  if (angkaTebakan == angkaRahasia) {
    print('Angka rahasia $angkaTebakan berhasil ditemukan!');
  }
}
