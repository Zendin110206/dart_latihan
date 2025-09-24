void main() {
  // Object Oriented Programming
  // 1. Polymorphism
  // 2. Abstraction
  // 3. Inheritance
  // 4. Encapsulation

  final date = DateTime.now();
  print(date);

  // 1 Polymorphism
  // 🎯 Apa itu Polymorphism?
  // 👉 Poly = banyak, morph = bentuk.
  // Polymorphism artinya: satu tipe induk bisa punya banyak “bentuk” lewat class turunannya.
  // Di OOP, ini biasanya muncul lewat:
  // Inheritance (extends) → class anak override method class induk.

  // Dynamic dispatch → ketika method dipanggil lewat variabel induk, yang jalan tetap versi anak.
  Animal cat = Cat();
  cat.sound();
  cat = Dog();
  cat.sound();

  Animal a = Cat();
  // a.purr(); // ❌ gak bisa: variabelnya bertipe Animal, di Animal gak ada kontrak purr

  //   Solusi: type check / casting
  // Type check + cast manual
  if (a is Cat) {
    a.purr(); // ✅ sekarang aman
  }

  // Direct casting (kalau yakin isinya Cat)
  (a as Cat).purr();

  // 🎯 2. Abstraction
  // Abstraction = nyembunyiin detail, cuma kasih "kontrak".
  // Caranya: pakai abstract class atau interface (implements).
  // Kita cuma tahu "apa yang bisa dilakukan", bukan "gimana cara dilakukannya".

  // ✅ Contoh 1: Abstract class dengan method abstract
  Animal2 cat2 = Cat2();
  cat2.sound();

  Animal2 dog2 = Dog2();
  dog2.sound();

  // ✅ Contoh 2: Abstract class dengan getter
  Shape circle = Circle(10);
  Shape square = Square(5);

  print("Luas lingkaran: ${circle.area}");
  print("Luas persegi: ${square.area}");

  // ✅ Contoh 3: Implements (interface)
  // Car = kontrak, ElectricCar & GasCar harus implement semua method
  Car tesla = ElectricCar();
  Car toyota = GasCar();

  tesla.drive();
  toyota.drive();

  // 🎯 3. Inheritance
  // Inheritance = pewarisan: anak mewarisi isi induk.
  // Kata kunci: extends.
  // Anak bisa pakai isi induk, bisa juga override.

  var motor = Motor();
  motor.kecepatan = 50; // warisan dari Kendaraan
  motor.jalan(); // method dari Kendaraan
  motor.nyalakanLampu();

  var bus = Bus();
  bus.kecepatan = 40;
  bus.jalan(); // ini override (punya Bus)
  bus.turunPenumpang();

  // 4 Encapsulation
  var akun = BankAccount();
  print("Saldo awal: ${akun.balance}");

  akun.deposit(1000);
  print("Setelah setor: ${akun.balance}");

  akun.withdraw(200);
  print("Setelah tarik: ${akun.balance}");

  akun.withdraw(2000); // ❌ error saldo tidak cukup
}

class Animal {
  void sound() {
    print('Animal making sound');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    super.sound();
    print('Cat making sound meowwww');
  }

  void purr() => print('prrrrrr');
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog making sound whoof');
  }
}

abstract class Animal2 {
  // Kontrak: semua hewan bisa bersuara
  void sound(); // 👈 gak ada body
}

class Cat2 extends Animal2 {
  @override
  void sound() {
    print("Meow");
  }
}

class Dog2 extends Animal2 {
  @override
  void sound() {
    print("Woof");
  }
}

// ----------------------
// Abstraction dengan getter/setter
// ----------------------

abstract class Shape {
  // 👇 kenapa pakai getter, bukan variabel biasa?
  // Karena luas (area) tiap shape berbeda rumusnya.
  // Lingkaran pakai πr², persegi pakai sisi*sisi.
  // Jadi kita cuma janji "semua Shape punya area".
  double get area;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double get area => 3.14 * radius * radius;
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double get area => side * side;
}

// ----------------------
// Abstraction dengan implements (interface style)
// ----------------------

abstract class Car {
  void drive();
}

class ElectricCar implements Car {
  @override
  void drive() {
    print("Brrr... Tesla jalan dengan listrik ⚡");
  }
}

class GasCar implements Car {
  @override
  void drive() {
    print("Vroom... Toyota jalan dengan bensin ⛽");
  }
}

// ----------------------
// Inheritance
// ----------------------

class Kendaraan {
  int kecepatan = 0;

  void jalan() {
    print("Kendaraan berjalan dengan kecepatan $kecepatan km/h");
  }
}

class Motor extends Kendaraan {
  void nyalakanLampu() {
    print("Motor menyalakan lampu depan 💡");
  }
}

class Bus extends Kendaraan {
  @override
  void jalan() {
    print("Bus melaju dengan pelan tapi stabil 🚌");
  }

  void turunPenumpang() {
    print("Bus menurunkan penumpang di halte 🚏");
  }
}

class BankAccount {
  // field private (hanya bisa diakses dari class ini)
  double _balance = 0.0;

  // getter → cara aman untuk baca saldo
  double get balance => _balance;

  // method untuk setor uang
  void deposit(double amount) {
    if (amount <= 0) {
      print("❌ Jumlah setor harus > 0");
      return;
    }
    _balance += amount;
  }

  // method untuk tarik uang
  void withdraw(double amount) {
    if (amount <= 0) {
      print("❌ Jumlah tarik harus > 0");
      return;
    }
    if (amount > _balance) {
      print("❌ Saldo tidak cukup");
      return;
    }
    _balance -= amount;
  }
}
