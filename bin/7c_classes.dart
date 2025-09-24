class Person {
  String _name = "Tanpa Nama";
  int _age = 0;

  // === GETTER ===
  String get name => _name; // baca nama
  int get age => _age; // baca umur

  // === SETTER ===
  set name2(String newName) {
    if (newName.isEmpty) {
      print("❌ Nama tidak boleh kosong");
    } else {
      _name = newName;
    }
  }

  set age(int newAge) {
    if (newAge < 0) {
      print("❌ Umur tidak boleh negatif");
    } else {
      _age = newAge;
    }
  }

  // === FUNGSI BIASA ===
  void sayHello() {
    print("Halo, nama saya $_name dan umur saya $_age tahun.");
  }

  void ulangTahun() {
    _age++;
    print("🎉 Selamat ulang tahun $_name! Sekarang umur $_age.");
  }
}

void main() {
  var p = Person();

  // pakai setter
  p.name2 = "Zaenal"; // otomatis setter jalan
  p.age = 21;

  // pakai getter
  print(p.name); // Zaenal
  print(p.age); // 21

  // pakai fungsi biasa
  p.sayHello(); // Halo, nama saya Zaenal dan umur saya 21 tahun.

  p.ulangTahun(); // 🎉 Selamat ulang tahun Zaenal! Sekarang umur 22.
}
