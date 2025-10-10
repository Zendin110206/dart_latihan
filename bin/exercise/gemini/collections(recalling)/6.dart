void main() {
  // no 6
  var dataAwal = [10.5, 20.0, 15.5, 5.0];

  double total = 0;
  for (var element in dataAwal) {
    total += element;
  }
  print('Data: $dataAwal');
  print('Total: $total');
  print("Rata-rata: ${total / dataAwal.length}");
}
