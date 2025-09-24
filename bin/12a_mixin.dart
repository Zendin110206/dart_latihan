void main() {
  // ==============================
  // 🎯 Contoh 1: Mixin tunggal
  // ==============================
  final animal = Animal();
  animal.fn(); // 10

  final cat = Cat();
  cat.func(); // 10 (warisan dari Animal, yang dapet Jump)

  // ==============================
  // 🎯 Contoh 2: Multi mixin
  // ==============================
  final animal2 = Animal2();
  animal2.fn2();
  // Output:
  // 10 (dari Jump)
  // false (dari Scream)
}

// -----------------------------
// Mixin 1
// -----------------------------
mixin Jump {
  int jumping = 10;
}

// Class biasa + pakai mixin Jump
class Animal with Jump {
  void fn() {
    print(jumping); // bisa akses langsung property dari Jump
  }
}

// Class turunan juga bisa otomatis pakai Jump
class Cat extends Animal {
  void func() {
    print(jumping); // ini datang dari Animal (yang pakai Jump)
  }
}

// -----------------------------
// Mixin 2
// -----------------------------
mixin Scream {
  bool isScreaming = false;
}

// Bisa combine beberapa mixin sekaligus
class Animal2 with Jump, Scream {
  void fn2() {
    print(jumping); // dari Jump
    print(isScreaming); // dari Scream
  }
}
