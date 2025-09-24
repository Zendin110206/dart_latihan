void main() {
  // Inheritance -> "is-a"
  // OOP dasar: subclass mewarisi properti & method superclass

  // ====== CAR ======
  var car = Car();
  print(car.isEngineWorking); // diwarisi dari Vehicle
  car.printSomething(); // milik Car
  car.accelerate(); // diwarisi + dipakai Car
  car.accelerate();
  print(car.speed); // 10 -> 20 -> 30
  car.saySomething(); // di-override oleh Car
  car.jumlahRoda(); // milik Car
  car.describeIndustry(); // diwarisi (override dari Vehicle yang extend Industry)

  print('--------------');
  print('--------------');

  // ====== TRUCK ======
  Truck truck = Truck();
  print(truck.isLightOn); // diwarisi dari Vehicle
  truck.printSomething(); // milik Truck
  truck.jumlahRoda(); // milik Truck
  truck.saySomething(); // di-override oleh Truck
  truck.loadCargo(); // method khusus Truck
  truck.accelerate();
  print(truck.speed);
  truck.describeIndustry(); // override chain dari Industry -> Vehicle

  print('--------------');
  print('--------------');

  // ====== POLYMORPHISM (cara 1) ======
  // Tipe variabelnya Vehicle, isinya Car (sah!)
  Vehicle car2 = Car();
  print(car2.isEngineWorking); // OK: properti Vehicle
  // print(car2.noOfWheels);   // ❌ ERROR: Vehicle nggak punya noOfWheels
  // Cara aman: cek dulu tipe aslinya, baru akses spesifik
  if (car2 is Car) {
    print(car2.noOfWheels); // ✅ aman setelah cek tipe
  }

  print('--------------');
  print('--------------');

  // ====== POLYMORPHISM (cara 2 — koleksi campuran) ======
  final fleet = <Vehicle>[Car(), Truck(), Car()];

  for (final v in fleet) {
    v.accelerate(); // semua Vehicle bisa accelerate
    if (v is Truck) {
      v.loadCargo(); // khusus Truck
    }
    if (v is Car) {
      print('Car wheels: ${v.noOfWheels}');
    }
  }

  print('--------------');
  print('--------------');

  // ====== CASTING: hati-hati! ======
  // Vehicle x = Car();
  // print((x as Truck).noOfWheels); // ❌ runtime error (x sebenarnya Car, bukan Truck)
  // Gunakan cek `is` dulu, baru `as` kalau perlu
}

// ======================= LEVEL 1 =======================
// SUPER PALING ATAS
class Industry {
  String industryName = "Automotive";

  void describeIndustry() {
    print("Ini adalah industri $industryName.");
  }
}

// ======================= LEVEL 2 =======================
// Vehicle mewarisi Industry
class Vehicle extends Industry {
  // base class / parent class / super class (untuk Car/Truck)
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;

  void accelerate() {
    speed += 10;
    print("ngebut + 10");
  }

  // di level Vehicle, kita override describeIndustry biar ada konteks kendaraan
  @override
  void describeIndustry() {
    super.describeIndustry();
    print("Produk industri ini adalah kendaraan bermotor.");
  }

  void saySomething() {
    print('waw (default Vehicle)');
  }
}

// ======================= LEVEL 3 =======================
// Car mewarisi Vehicle (otomatis juga punya Industry)
class Car extends Vehicle {
  int noOfWheels = 4;

  void printSomething() {
    print(noOfWheels);
  }

  void jumlahRoda() {
    print('jumlah roda = $noOfWheels ');
  }

  // Override perilaku spesifik Car
  @override
  void saySomething() {
    print('Car says: brumm!');
  }

  // (opsional) bisa override describeIndustry juga kalau mau lebih spesifik
  // @override
  // void describeIndustry() {
  //   super.describeIndustry();
  //   print("Subproduk: Mobil penumpang.");
  // }
}

// Truck mewarisi Vehicle (otomatis juga punya Industry)
class Truck extends Vehicle {
  int noOfWheels = 8;

  void printSomething() {
    print(noOfWheels);
  }

  void jumlahRoda() {
    print('jumlah roda = $noOfWheels ');
  }

  void loadCargo() {
    print("Truk sedang mengangkut barang...");
  }

  @override
  void saySomething() {
    print('Truck says: HOOONK!');
  }

  // (opsional) override yang lebih spesifik
  @override
  void describeIndustry() {
    super.describeIndustry();
    print("Subproduk: Truk logistik & komersial.");
  }
}
