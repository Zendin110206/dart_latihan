enum StatusPengguna { aktif, tidakAktif }

class Pengguna {
  String nama;
  StatusPengguna status;

  Pengguna({required this.nama, required this.status});
}

void main() {
  // no 169
  Pengguna pengguna = Pengguna(nama: 'zaenal', status: StatusPengguna.aktif);
  print(pengguna.status);
}
