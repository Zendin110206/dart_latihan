void main() {
  final car = Car();

  print(car.noOfWheels);
  car.accelerate();
}

abstract class Vehicle {
  void accelerate();
  int get noOfWheels;
}

class Car implements Vehicle {
  @override
  void accelerate() {
    print("Ngenggggggg");
  }

  @override
  int get noOfWheels => 4;
}

class Truck implements Vehicle {
  @override
  void accelerate() {
    print("Ngoooonggggggg");
  }

  @override
  int get noOfWheels => 8;
}
