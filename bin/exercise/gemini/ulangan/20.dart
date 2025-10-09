void main() {
  // no 20
  List<int> daftarNilaiMentah = [88, 65, 92, 74, 77, 50];

  daftarNilaiMentah.where((x) => x >= 75); // iterable gak kesimpan

  final hasil = daftarNilaiMentah
      .where((n) => n >= 75)
      .map((n) => 'Nilai: $n')
      .toList();
  print('Nilai yang lulus: $hasil');
}

