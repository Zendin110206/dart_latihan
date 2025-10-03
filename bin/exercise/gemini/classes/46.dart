void main() {
  // no 46
  Mobil mobil = Mobil();
  mobil.merk = 'Toyota';
  mobil.warna = 'Hitam';
  mobil.tahun = 2020;

  print('Merk : ${mobil.merk}');
  print('Warna : ${mobil.warna}');
  print('Tahun : ${mobil.tahun}');
}

class Mobil {
  String? merk;
  String? warna;
  int? tahun; // kalau gak ada tanda tanya di bakalan error, bukan cuman peringatan, tolong lebih teliti lagi akalu kamu ngasih contoh, seperti yang kucingOyen, itu gagal dijalankan karena tidak ada null check
}


// ini contoh salah yang kamu berikan dan akan error karena null safety 

// class Kucing {
//   // 1. Properties (Data)
//   String nama;
//   int umur;
//   String warnaBulu;

//   // 2. Methods (Perilaku)
//   void makan() {
//     print("$nama sedang makan!");
//   }

//   void bersuara() {
//     print("Meow!");
//   }
// }

// void main() {
//   // Membuat object 'kucingOyen' dari class 'Kucing'
//   var kucingOyen = Kucing();

//   // Mengisi nilai properties menggunakan notasi titik (.)
//   kucingOyen.nama = "Oyen";
//   kucingOyen.umur = 3;
//   kucingOyen.warnaBulu = "Oranye";

//   // Mengakses properties
//   print("Nama kucingku adalah ${kucingOyen.nama}");
//   print("Warnanya ${kucingOyen.warnaBulu}");

//   // Memanggil methods
//   kucingOyen.makan(); // Output: Oyen sedang makan!
//   kucingOyen.bersuara(); // Output: Meow!
// }

