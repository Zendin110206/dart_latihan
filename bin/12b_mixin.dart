void main() {
  // ========== RECAP dari punyamu ==========
  print('===== Recap basic mixin =====');
  final animal = Animal();
  animal.fn(); // 10

  final cat = Cat();
  cat.func(); // 10 (turun dari Animal yg sudah pakai Jump)

  final animal2 = Animal2();
  animal2.fn2(); // 10 & false

  // ========== (1) ORDER / URUTAN PENTING ==========
  // Right-most wins (yang paling kanan "menang" override).
  print('\n===== (1) Order matters (right-most wins) =====');
  final o1 = HostWithAB();
  o1.speak(); // B

  final o2 = HostWithBA();
  o2.speak(); // A

  // ========== (2) SUPER DI MIXIN (CHAINING) ==========
  print('\n===== (2) super di mixin (chaining) =====');
  final h = HostChain();
  h.speak();
  // Urutan:
  // B pre
  // A pre
  // Base speaks
  // A post
  // B post

  // ========== (3) MIXIN "on" CONSTRAINT ==========
  print('\n===== (3) mixin dengan "on" constraint =====');
  final kitty = Cat3('Mochi');
  kitty.greet(); // Halo, aku Mochi

  // ========== (4) MIXIN DENGAN MEMBER ABSTRAK ==========
  print('\n===== (4) mixin dengan member abstrak =====');
  final civic = CarWithSpeed(80);
  civic.drive(); // Driving at 80 km/h
}

/* =========================
   RECAP: contoh dari kamu
   ========================= */
mixin Jump {
  int jumping = 10;
}

class Animal with Jump {
  void fn() {
    print(jumping);
  }
}

class Cat extends Animal {
  void func() {
    print(jumping);
  }
}

mixin Scream {
  bool isScreaming = false;
}

class Animal2 with Jump, Scream {
  void fn2() {
    print(jumping);
    print(isScreaming);
  }
}

/* =========================================
   (1) ORDER / URUTAN: right-most wins
   ========================================= */
mixin A {
  void speak() => print('A');
}

mixin B {
  void speak() => print('B');
}

class HostWithAB with A, B {} // B di kanan → B yg menang

class HostWithBA with B, A {} // A di kanan → A yg menang

/* =========================================
   (2) SUPER di MIXIN: chaining antar mixin
   - super di dalam mixin akan memanggil
     "lapisan berikutnya" ke kiri, atau superclass.
   ========================================= */
class Base {
  void speak() => print('Base speaks');
}

mixin MixA on Base {
  @override
  void speak() {
    print('A pre');
    super.speak(); // panggil ke "lapisan berikutnya"
    print('A post');
  }
}

mixin MixB on Base {
  @override
  void speak() {
    print('B pre');
    super.speak(); // panggil MixA (kiri) atau Base
    print('B post');
  }
}

class HostChain extends Base with MixA, MixB {}
// Urutan resolve:
// HostChain.speak -> MixB.speak
// MixB.super -> MixA.speak
// MixA.super -> Base.speak

/* =========================================
   (3) "on" CONSTRAINT:
   - Bikin mixin hanya bisa ditempel ke tipe tertentu.
   - Keuntungannya: mixin bisa akses member host yg dijamin ada.
   ========================================= */
class Animal3 {
  final String name;
  Animal3(this.name);
}

mixin Greeter on Animal3 {
  // Karena "on Animal3", kita DIJAMIN punya 'name'
  void greet() => print('Halo, aku $name');
}

// Hanya class yg extends/implements Animal3 yg boleh pakai Greeter
class Cat3 extends Animal3 with Greeter {
  Cat3(String name) : super(name);
}

/* =========================================
   (4) MIXIN DENGAN MEMBER ABSTRAK:
   - Mixin bisa mendeklarasikan member abstrak (kontrak).
   - Host wajib menyediakannya.
   ========================================= */
mixin Drivable {
  int get speed; // abstrak: host harus sediakan

  void drive() {
    // bisa pakai 'speed' seolah-olah ada,
    // karena host WAJIB menyediakannya.
    print('Driving at $speed km/h');
  }
}

class CarWithSpeed with Drivable {
  int _speed;
  CarWithSpeed(this._speed);

  @override
  int get speed => _speed;
}
