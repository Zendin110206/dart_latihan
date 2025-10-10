void main() {
  // no 7
  var data = [1, 2, 3, 4, 5];

  List dataKebalik = <int>[];

  for (var i = data.length - 1; i >= 0; i--) {
    dataKebalik.add(data[i]);
  }
  print("List Asli: $data");
  print('List Terbalik: $dataKebalik');
}
