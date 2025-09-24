// implements_tutorial.dart
// Fokus: implements (interface) — dasar banget, step by step

void main() {
  print('===== 1. Interface sederhana (Drivable) =====');
  Drivable d1 = Car(); // polymorphism: variabel bertipe interface
  Drivable d2 = Bike();

  d1.drive(); // Car sedang berjalan...
  d2.drive(); // Bike sedang berjalan...

  print('-----');

  print('===== 2. Interface dengan properti (HasSpeed) =====');
  final car = Car();
  print(car.speed); // 0 (default)
  car.speed = 30; // pakai setter dari interface
  print(car.speed); // 30
  car.drive();

  print('-----');

  print('===== 3. Multiple implements (Drivable + Chargeable) =====');
  final tesla = ElectricCar();
  tesla.charge();
  tesla.speed = 80;
  tesla.drive();

  print('-----');

  print('===== 4. "Concrete class" juga bisa jadi interface =====');
  // Meskipun LegacyVehicle punya KODE nyata, saat di-implements -> cuma KONTRAK-nya saja!
  final modern = ModernCar();
  modern
      .accelerate(); // implementasi versi ModernCar (bukan pakai kode LegacyVehicle)
  print('ModernCar speed: ${modern.speed}');

  print('-----');

  print('===== 5. Polymorphism list interface =====');
  final fleet = <Drivable>[Car(), Bike(), ElectricCar()];
  for (final x in fleet) {
    x.drive(); // semua punya drive() karena kontrak Drivable
  }
}

/* -------------------------------------------------------------------------- */
/*  STEP 1: Interface sederhana: method saja                                  */
/* -------------------------------------------------------------------------- */

// Di Dart, interface biasanya direpresentasikan dengan abstract class
abstract class Drivable {
  void drive(); // kontrak: siapa pun yang implements harus menyediakan ini
}

// Car implements Drivable -> wajib menulis method drive()
class Car implements Drivable, HasSpeed {
  int _speed = 0;

  @override
  void drive() {
    print('Car sedang berjalan dengan kecepatan $_speed km/h');
  }

  // Implement kewajiban dari HasSpeed (getter + setter)
  @override
  int get speed => _speed;

  @override
  set speed(int value) {
    if (value < 0) value = 0;
    _speed = value;
  }
}

class Bike implements Drivable {
  @override
  void drive() {
    print('Bike sedang berjalan (dikayuh manusia)');
  }
}

/* -------------------------------------------------------------------------- */
/*  STEP 2: Interface dengan properti (getter/setter)                          */
/* -------------------------------------------------------------------------- */

// Catatan penting: Saat interface punya field, implementasinya harus berupa
// getter + setter (kontrak akses), bukan field konkret.
abstract class HasSpeed {
  int get speed; // kontrak getter
  set speed(int value); // kontrak setter
}

/* -------------------------------------------------------------------------- */
/*  STEP 3: Multiple implements                                               */
/* -------------------------------------------------------------------------- */

abstract class Chargeable {
  void charge();
}

class ElectricCar implements Drivable, HasSpeed, Chargeable {
  int _speed = 0;
  int _battery = 0; // persen

  @override
  void charge() {
    _battery = 100;
    print('ElectricCar terisi penuh ($_battery%)');
  }

  @override
  void drive() {
    if (_battery <= 0) {
      print('Battery habis! Tidak bisa jalan.');
      return;
    }
    print('ElectricCar melaju $_speed km/h dengan battery $_battery%');
    _battery -= 5;
  }

  @override
  int get speed => _speed;

  @override
  set speed(int value) {
    if (value < 0) value = 0;
    _speed = value;
  }
}

/* -------------------------------------------------------------------------- */
/*  STEP 4: Implement "concrete class" sebagai interface                       */
/* -------------------------------------------------------------------------- */

// LegacyVehicle PUNYA implementasi (bukan abstract),
// tapi saat "implements", kita TIDAK mewarisi kodenya — hanya kontraknya saja.
class LegacyVehicle {
  int speed = 0;

  void accelerate() {
    speed += 10;
    print('LegacyVehicle accelerate() -> speed: $speed');
  }
}

// ModernCar "implements" LegacyVehicle:
// -> wajib menyediakan speed (getter+setter) dan accelerate(), dengan versinya sendiri
class ModernCar implements LegacyVehicle {
  int _speed = 0;

  // Karena di LegacyVehicle speed adalah field konkret,
  // kontrak interface-nya jadi: getter + setter speed
  @override
  int get speed => _speed;

  @override
  set speed(int value) => _speed = value;

  @override
  void accelerate() {
    // versi kita sendiri — TIDAK memanggil/menyalin kode LegacyVehicle
    _speed += 25;
    print('ModernCar accelerate() -> speed: $_speed');
  }
}
