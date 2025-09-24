// Compile-time error: ketahuan sebelum program jalan (saat “di-cek”/di-build). Contoh: coba masukin String ke variabel yang tipe-nya int.
// Runtime error: program sudah jalan, lalu meledak di tengah jalan (misal: manggil method yang gak ada pada nilai tertentu).

void main() {
  // Functions
  print(printName); // lihat terminal
  printName();
  printMyName(); // dia gak keluar kan? nah makanya itu perlu disimpen di variabel
  print(printMyName());
  // print(printName()); // lihat terminal untukk kasus tipe data void
  String namaku = printMyName();
  print(namaku);


  print('----------------');
  var name = printAngka();
  print(name);

  var angkaDanKalimat = printAngkaKalimat();
  print(angkaDanKalimat);


  print('----------------');
  var banyakTipe2 = banyakTipe();
  print(banyakTipe2);
  print(
    banyakTipe2.$2,
  ); // namanya getter? apa itu? saya juga gak tau, katanya entar dijelasin


  print('----------------');
  var (age, ageDesimal, isAdult, greeting) = banyakTipe();
  print(greeting);
  print(age);
  print(ageDesimal);
  print(isAdult);


  print('----------------');
}

// FUNGSI DASAR
void printName() {
  print('Zaenal');
}

int printAngka() {
  return 12;
}

String printMyName() {
  return 'halo namaku zaenal';
}

dynamic printName2() {
  // not recommended
  print('ini tipe data fungsinya adalah dynamic');
}

// ------------  //
//FUNGSI RECORD / tuple

(int, String) printAngkaKalimat() {
  return (12, 'zaenal');
}

(int, double, bool, String) banyakTipe() {
  // sesuaikan urutan
  return (12, 12.5, true, 'waw ada 4 tipe data');
}


// ------------  //

