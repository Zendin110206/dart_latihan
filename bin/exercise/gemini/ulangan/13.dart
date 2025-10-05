void main() {
  // no 13
  Set<String> timA = {"Ana", "Budi", "Cici"};
  Set<String> timB = {"Budi", "Dodi", "Eka"};

  Set<String> timGab = timA.union(timB);
  print('Daftar gabungan semua anggota: $timGab');

  
}
