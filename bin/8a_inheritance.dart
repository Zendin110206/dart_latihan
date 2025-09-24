void main() {
  // Inheritance -> "is-a"
  // Object Oriented Programming (OOP)

  var car = Car();
  print(car.isEngineWorking); // nih inheritance
  car.printSomething();
  car.accelerate();
  car.accelerate();
  print(car.speed);
  car.saySomething();
  car.jumlahRoda();

  print('--------------');
  print('--------------');
  Truck truck = Truck();
  print(truck.isLightOn);
  truck.printSomething();
  truck.jumlahRoda();

  print('--------------');
  print('--------------');
  //cara dua, aneh aku sedikit kurang paham
  Vehicle car2 = Car();
  print(car2.isEngineWorking);
  print((car2 as Car).noOfWheels); // katanya ini Polymorphism

  print('--------------');
  print('--------------');
  var mobil = Mobil();
  print(mobil.speed);
  mobil.tambahSpeed();
  print(mobil.speed);
}

class Vehicle {
  // base class / parent class / super class
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;

  void accelerate() {
    speed += 10;
    print("ngebut + 10");
  }

  void saySomething() {
    print('waw');
  }
}

class Car extends Vehicle {
  // car is-a inheritance of vehicle  ( )
  int noOfWheels = 4;

  void printSomething() {
    print(noOfWheels);
  }

  void jumlahRoda() {
    print('jumlah roda = $noOfWheels ');
  }
}

class Truck extends Vehicle {
  // car is-a inheritance of vehicle  ( )
  int noOfWheels = 8;

  void printSomething() {
    print(noOfWheels);
  }

  void jumlahRoda() {
    print('jumlah roda = $noOfWheels ');
  }
}

class SomeClass {
  int speed = 15;
  void tambahSpeed() {
    speed += 100;
  }
}

class Kendaraan extends SomeClass {
  @override
  void tambahSpeed() {
    speed += 150;
  }
}

class Mobil extends Kendaraan {
  int noOfWheels = 4;
}
