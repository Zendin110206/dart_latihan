void main() {
  // no 101
  var kamus = {'apple': 'apel', 'book': 'buku', 'car': 'mobil'};

  var kamuskebalik = kamus.map((asli, arti) {
    return MapEntry(arti, asli);
  });

  print(kamuskebalik);
}
