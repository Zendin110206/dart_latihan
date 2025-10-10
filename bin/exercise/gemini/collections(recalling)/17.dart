void main() {
  // no 17
  var data1 = {"Andi", "Budi", "Siti", "Dewi", "Eka"};
  var data2 = {"Siti", "Andi", "Eka"};
  print('Anggota yang belum bayar: ${data1.difference(data2)}');
}
