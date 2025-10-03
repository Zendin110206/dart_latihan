void main() {
  // no 71
  List<int> nilaiUjian = [75, 88, 60, 95, 48, 92];
  int total = 0;
  int tertinggi = nilaiUjian.first;
  int terendah = nilaiUjian.first;
  for (var nilai in nilaiUjian) {
    total += nilai;
  }

  for (var i = 0; i < nilaiUjian.length; i++) {
    if (terendah > nilaiUjian[i]) {
      terendah = nilaiUjian[i];
    }

    if (tertinggi < nilaiUjian[i]) {
      tertinggi = nilaiUjian[i];
    }
  }

  print('Total nilai: $total');
  print('Nilai tertinggi: $tertinggi');
  print('Nilai terendah: $terendah');
}
