void main() {
  // === Buat objek TRUCK ===
  final truck = Truck();

  // Akses MILIK Industry langsung dari truck (turunan berantai):
  print(truck.industryName); // <- field dari Industry, bisa diakses oleh Truck
  truck
      .describeIndustry(); // <- method di-override berantai (Industry -> Vehicle -> Truck)

  truck.halo();

  // Buktikan Truck bisa MENGUBAH field yang diwarisi dari Industry
  truck.industryName = "Heavy Vehicle Manufacturing";
  print(truck.industryName); // sudah berubah

  print('--------------');

  // === Buat objek CAR (turunan lain dari Vehicle) ===
  final car = Car();
  print(car.industryName); // masih pakai default dari Industry ("Automotive")
  car.describeIndustry(); // chain override: Industry -> Vehicle -> (opsional Car)

  print('--------------');

  // === Polymorphism: variabel bertipe Industry menampung Truck ===
  Industry i = Truck();
  i.describeIndustry(); // akan pakai versi override Truck (dynamic dispatch)
  // i.noOfWheels;               // ❌ gak bisa: tipe variabelnya Industry (umum)
  if (i is Truck) {
    print(
      'Truck wheels via Industry ref: ${i.noOfWheels}',
    ); // ✅ cek tipe dulu, baru akses spesifik
  }
}

/// ======================= LEVEL 1 (SUPER PALING ATAS) =======================
class Industry {
  String industryName = "Automotive";

  void describeIndustry() {
    print("Ini adalah industri $industryName.");
  }

  void halo() {
    print('halo');
  }
}

/// ======================= LEVEL 2 (MENURUNI INDUSTRY) =======================
class Vehicle extends Industry {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;

  void accelerate() {
    speed += 10;
    print("ngebut + 10 (speed: $speed)");
  }

  @override
  void describeIndustry() {
    // panggil versi Industry dulu (optional)
    super.describeIndustry();
    // lalu tambahkan konteks Vehicle
    print("Produk industri ini adalah KENDARAAN bermotor.");
  }

  void saySomething() {
    print('Vehicle: waw (default)');
  }
}

/// ======================= LEVEL 3 (MENURUNI VEHICLE) =======================
/// TRUCK mewarisi Vehicle -> otomatis mewarisi juga Industry
class Truck extends Vehicle {
  int noOfWheels = 8;

  void loadCargo() {
    print("Truk mengangkut barang...");
  }

  void printSomething() {
    print(noOfWheels);
  }

  void jumlahRoda() {
    print('jumlah roda = $noOfWheels');
  }

  // override method yang diwarisi (tambahkan info spesifik Truck)
  @override
  void describeIndustry() {
    // chain: Industry.describeIndustry() -> Vehicle.describeIndustry() -> Truck.describeIndustry()
    super.describeIndustry();
    // ini manggil versi Vehicle (yang di dalamnya manggil Industry)
    print("Subproduk spesifik: TRUCK untuk logistik & komersial.");
  }

  @override
  void saySomething() {
    print('Truck: HOOONK!');
  }
}

/// CAR mewarisi Vehicle -> otomatis mewarisi juga Industry
class Car extends Vehicle {
  int noOfWheels = 4;

  void printSomething() {
    print(noOfWheels);
  }

  void jumlahRoda() {
    print('jumlah roda = $noOfWheels');
  }

  @override
  void saySomething() {
    print('Car: brumm!');
  }

  // (opsional) bisa override juga kalau mau tambah konteks khusus Car
  // @override
  // void describeIndustry() {
  //   super.describeIndustry();
  //   print("Subproduk spesifik: MOBIL penumpang.");
  // }
}
