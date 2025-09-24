// 1) Abstract base: ada yg abstrak, ada yg sudah ada kodenya
abstract class Animal {
  void sound(); // abstrak (wajib diisi anak)
  void breathe() {
    // sudah ada implementasi
    print("Hewan bernapas 🌬️");
  }
}

// A) EXTENDS -> mewarisi kode breathe(), cukup isi yang abstrak
class Cat extends Animal {
  @override
  void sound() => print("Meow 🐱");
}

// B) IMPLEMENTS -> KONTRAK saja, harus tulis ulang SEMUA (termasuk breathe)
class Dog implements Animal {
  @override
  void sound() => print("Woof 🐶");

  @override
  void breathe() => print("Anjing juga bernapas 🌬️ (diisi ulang)");
}

abstract class Shape {
  int get sides; // janji punya getter
  set sides(int value); // janji punya setter
}

class Triangle implements Shape {
  int _sides = 3; // field privat
  @override
  int get sides => _sides;

  @override
  set sides(int value) {
    if (value < 3) {
      print("❌ segitiga minimal punya 3 sisi");
    } else {
      _sides = value;
    }
  }
}

void main() {
  Animal a1 = Cat(); // boleh: Cat is-a Animal
  Animal a2 = Dog(); // boleh: Dog implements Animal

  a1.sound(); // Meow
  a1.breathe(); // pakai bawaan Animal (re-use via extends)

  a2.sound(); // Woof
  a2.breathe(); // versi Dog sendiri (wajib tulis ulang karena implements)

  var t = Triangle();
  print(t.sides); // 3
  t.sides = 4; // setter dipanggil
  print(t.sides); // 4
  t.sides = 1; // ❌ error dari setter
}
