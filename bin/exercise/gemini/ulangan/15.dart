void main() {
  // no 15
  List data = <String>[
    "apel",
    "pisang",
    "semangka",
    "jeruk",
    "stroberi",
    "kiwi",
  ];

  print('Kata dnegan lebih dari 5 karakter: ');

  for (String element in data) {
    if (element.length > 5) {
      print(element);
    }
  }
}
