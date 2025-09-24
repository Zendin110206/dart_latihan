// ===============================
// BELAJAR FUNGSI DASAR DI DART
// ===============================

// 1. Fungsi biasa (ada nama, ada return)
String haloNama(String nama) {
  return "Halo, $nama";
}

// 2. Fungsi void (tidak mengembalikan nilai)
void cetakHalo() {
  print("Halo semuanya!"); // hanya print
}

// 3. Fungsi dengan parameter (positional, harus berurutan)
void cetakIdentitas(String nama, int umur) {
  print("Nama: $nama, Umur: $umur");
}

// 4. Fungsi dengan return angka
int tambah(int a, int b) {
  return a + b;
}

// 5. Fungsi dengan positional parameter tapi ada default value
void sapaDenganKota(String nama, [String kota = "Bandung"]) {
  // tanda [] = parameter opsional positional
  print("Halo $nama dari $kota");
}

// 6. Fungsi dengan named parameters (urutan bebas, harus pakai nama)
void buatProfil({
  required String nama, // wajib diisi
  int? umur, // boleh null
  String hobi = "tidur", // default value
}) {
  print("Nama: $nama, Umur: ${umur ?? "belum diisi"}, Hobi: $hobi");
}

// 7. Anonymous function (tanpa nama, disimpan ke variabel)
var sapa = (String nama) {
  return "Hai, $nama";
};

// 8. Arrow function (bentuk singkat)
int kali(int a, int b) => a * b;

// ===============================
// PROGRAM UTAMA
// ===============================
void main() {
  print("=== 1. Fungsi biasa ===");
  print(haloNama("Zaenal"));
  print(haloNama("Salsa"));

  print("\n=== 2. Fungsi void ===");
  cetakHalo();

  print("\n=== 3. Positional parameter ===");
  cetakIdentitas("Budi", 20); // urutannya harus pas

  print("\n=== 4. Fungsi return angka ===");
  int hasil = tambah(5, 7);
  print("Hasil penjumlahan: $hasil");

  print("\n=== 5. Positional dengan default value ===");
  sapaDenganKota("Ani"); // kota default = Bandung
  sapaDenganKota("Rudi", "Jakarta");

  print("\n=== 6. Named parameters ===");
  buatProfil(nama: "Zaenal", umur: 21, hobi: "ngoding");
  buatProfil(nama: "Salsa"); // umur null, hobi pakai default

  print("\n=== 7. Anonymous function ===");
  print(sapa("Chika")); // lewat variabel
  print(sapa("Doni"));

  print("\n=== 8. Arrow function ===");
  print("3 x 4 = ${kali(3, 4)}");
  print("10 x 2 = ${kali(10, 2)}");

  print("\n=== SELESAI ===");
}
