// class RekeningBank {
//   String namaPemilik;

//   // Properti '_saldo' ini privat.
//   // Kode di luar class RekeningBank tidak bisa mengaksesnya secara langsung.
//   double _saldo;

//   RekeningBank(this.namaPemilik, this._saldo);
// }

// void main() {
//   var rekeningBudi = RekeningBank("Budi", 1000.0);

//   print(rekeningBudi.namaPemilik); // BISA, karena 'namaPemilik' publik.
//   // print(rekeningBudi._saldo); // ERROR! Tidak bisa diakses dari luar class.
// }

// // CONTOHMU INI SALAH, seharusnya ini bisa bisa aja, karena private di dart itu hanya private di dalam SATU FILE, bukan dalam class, tolong donk kamu udah sering membuat beberapa kesalahan

void main() {
  final karyawan = Karyawan('Siti', 5000000.0);
  print('Nama Karyawan: ${karyawan.nama}');
  print('Gaji: ${karyawan.gaji}');
}

class Karyawan {
  final String nama;
  final double _gaji;

  Karyawan(this.nama, this._gaji);

  double get gaji => _gaji;
  // double get gaji {
  // return _gaji };
}

// cara lain : 
// class Karyawan {
//   final String nama;
//   final double _gaji;

//   Karyawan({required this.nama, required double gaji}) : _gaji = gaji;

//   double get gaji => _gaji;
// }