void main() {
  // no 24
  final data = {"Italia": "Roma", "Prancis": "Paris", "Spanyol": "Madrid"};
  for (var element in data.entries) {
    print("Ibu kota dari ${element.key} adalah ${element.value}.");
  }
}
