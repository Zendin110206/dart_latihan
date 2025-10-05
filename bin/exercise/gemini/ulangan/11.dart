void main() {
  // no 11
  List<int> data = [45, 89, 72, 98, 65, 77];
  int tertinggi = data[0];

  for (var i = 0; i < data.length; i++) {
    if (tertinggi < data[i]) {
      tertinggi = data[i];
    }
  }

  print('Nilai tertinggi dalam daftar adalah: $tertinggi');
}
