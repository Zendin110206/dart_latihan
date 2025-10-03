void main() {
  // no 79
  List<String> namaNama = ["Siti", "Andi", "Eka", "Budi", "Dewi"];
  namaNama.sort();
  print(
    namaNama,
  ); // memastikan bahwa yang dikembalikan buka iterable / lazy atau kek harus disimpen di variaebl abru lagi)

  List<String> namaKapitalSemua = namaNama.map((s) => s.toUpperCase()).toList();
  print(namaKapitalSemua);
}
