void main() {
  // no 11
  Set<int> nik = {
    123,
    456,
    789,
    // ignore: equal_elements_in_set
    123,
  }; // gapapa dulu pakai int, tau kok lebih baik pake String
  print('NIK peserta yang terdaftar : $nik');
}
