void main() {
  // no 8
  int ketemu = 0;
  var data = ["Andi", "Budi", "Siti", "Dewi", "Sari", "Eka"];
  var data2 = <String>[];
  for (var element in data) {
    if (element.startsWith('S')) {
      data2.add(element);
      ketemu = 1;
      break;
    }
  }

  if (ketemu == 0) {
    print('Tidak ada nama yang sesuai');
  }
  else{
    print('Nama pertama yang berawalan \'S\' adalah: ${data2.first}');
  }
}
