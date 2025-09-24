// 🧠 Intuisi dulu
// extends = warisan + pakai ulang kode dari parent. (anak mewarisi perilaku)
// implements = kontrak saja → wajib menulis ulang semua properti & method yang dijanjikan. (anak tidak mewarisi kode, hanya janji tanda tangan)
// Bayangin implements itu seperti tanda tangan perjanjian kerja: “Saya janji punya method ini & properti itu”, tapi cara kerja di dalamnya kamu tulis sendiri dari nol.

void main() {
  final car = Car();
  print(car.noOfWheels);

  var car2 = Car2();
  car2.accelerate();
}

class Vehicle {
  bool isEngineWorking = false;
  bool isLightOn = true;
  int noOfWheels = 10;

  void accelerate() {
    print('accelarating');
  }
}

class Car implements Vehicle {
  @override
  int noOfWheels = 4;

  void printSomething() {
    print(noOfWheels);
  }

  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  void accelerate() {
    print('accelarating the car');
  }
}

class Truck implements Vehicle {
  @override
  int noOfWheels = 8; // both of car and truck have noOfWheels, and we independently define that

  void printSomething() {
    print(noOfWheels);
  }

  @override
  bool isEngineWorking = true;

  @override
  bool isLightOn = true;

  @override
  void accelerate() {
    print('accelarating the truck');
  }
}

class SomeClass {
  bool isEngineWorking = false;
  bool isLightOn = true;
  int noOfWheels = 10;
}

class Vehicle2 {
  void accelerate() {
    print('accelarating');
  }
}

class Car2 extends SomeClass implements Vehicle2 {
  @override
  int noOfWheels = 20;

  @override
  void accelerate() {
    print('accelarating the car');
    print(isEngineWorking);
    print(isLightOn);
    print(noOfWheels);
  }
}
