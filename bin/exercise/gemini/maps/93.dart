void main() {
  // no 93
  Map<String, int> mapBuah = {};
  mapBuah.addAll({"Apel": 10, "Mangga": 15, "Jeruk": 20});
  print('Stok awal: $mapBuah');
  mapBuah['Mangga'] = 25;
  print('Stok akhir: $mapBuah');
}
