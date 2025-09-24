// =====================================================
// ENUM — versi dasar banget (pondasi)
// =====================================================
//
// 1) Enum = tipe khusus berisi pilihan yang terbatas.
//    Contoh: jabatan/role karyawan: swe, finance, hr.
//    Tujuan: anti-typo & lebih aman dibanding String bebas.
//
// 2) Cara pakai:
//    - Definisikan enum:    enum Role { swe, finance, hr }
//    - Pakai sebagai tipe:  final Role role;
//    - Isi nilainya:        Role.swe, Role.finance, ...
//
// 3) switch di enum:
//    Wajib handle setiap nilai. Tambahkan 'break' tiap case.
//

void main() {
  // ------ A. Bikin objek dengan enum ------
  final e1 = Employee('Zaenal', Role.swe);
  final e2 = Employee('Naman', Role.finance);
  final e3 = Employee('Abidin', Role.hr);

  // ------ B. Panggil method yang pakai switch enum ------
  e1.describe(); // Output: Software Engineering
  e2.describe(); // Output: Finance
  e3.describe(); // Output: Human Resources

  print('------------------------');

  // ------ C. Properti dasar enum ------
  print(Role.values); // daftar semua nilai: [Role.swe, Role.finance, Role.hr]
  print(Role.swe.name); // 'swe' (nama persis di enum)
  print(Role.hr.index); // 2 (urutan, mulai dari 0)

  print('------------------------');

  // ------ D. Enum dipakai untuk logika sederhana ------
  print(gajiDasar(Role.swe)); // 8000000
  print(gajiDasar(Role.finance)); // 9000000
  print(gajiDasar(Role.hr)); // 7000000

  print('------------------------');

  // ------ E. Tampilkan role dengan ramah (pakai .name) ------
  print('Role e1: ${e1.role.name}'); // 'swe'
  print('Role e2: ${e2.role.name}'); // 'finance'
  print('Role e3: ${e3.role.name}'); // 'hr'
}

// =====================================================
// ENUM dasar: pilihan role karyawan
// =====================================================
enum Role { swe, finance, hr }

// =====================================================
// Class sederhana yang memakai enum sebagai tipe field
// =====================================================
class Employee {
  final String name;
  final Role role;

  Employee(this.name, this.role);

  // switch sederhana berdasarkan enum
  void describe() {
    switch (role) {
      case Role.swe:
        print('Software Engineering');
        break;
      case Role.finance:
        print('Finance');
        break;
      case Role.hr:
        print('Human Resources');
        break;
    }
  }
}

// =====================================================
// Fungsi contoh: gaji dasar berdasar role (pakai switch enum)
// =====================================================
int gajiDasar(Role role) {
  switch (role) {
    case Role.swe:
      return 8_000_000;
    case Role.finance:
      return 9_000_000;
    case Role.hr:
      return 7_000_000;
  }
}
