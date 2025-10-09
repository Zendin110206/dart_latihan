void main() {
  // no 24
  Set<String> daftarKaryawan = {'Budi', 'Siti', 'Andi', 'Eka'};
  Set<String> karyawanHadir = {'Budi', 'Siti'};

  print('Daftar Karyawan : $daftarKaryawan');
  print('\n--- Absensi Hari Ini ---');
  print('Karyawan Hadir : $karyawanHadir');
  print('Karyawan Tidak Hadir : ${daftarKaryawan.difference(karyawanHadir)}');
}
