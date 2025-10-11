// Parent class
class Hewan {
  void bersuara() {
    print("Suara hewan...");
  }
}

// Child classes
class Anjing extends Hewan {
  @override
  void bersuara() {
    print("Guk Guk!");
  }
}

class Kucing extends Hewan {
  @override
  void bersuara() {
    print("Meow!");
  }
}

void main() {
  // Satu list bisa menampung berbagai "bentuk" dari Hewan.
  List<Hewan> kebunBinatang = [Anjing(), Kucing(), Anjing()];

  // Kita bisa loop melalui list ini tanpa peduli apa jenis hewan spesifiknya.
  for (var hewan in kebunBinatang) {
    // Dart cukup pintar untuk tahu method .bersuara() mana yang harus dipanggil.
    // Jika 'hewan' adalah objek Anjing, ia akan memanggil @override dari Anjing.
    // Jika 'hewan' adalah objek Kucing, ia akan memanggil @override dari Kucing.
    hewan.bersuara();
    print(hewan);
  }

  print('----------');
  print('Sama aja kek gini');
  Hewan hewan = Kucing();
  hewan.bersuara();
  Kucing().bersuara();
}
