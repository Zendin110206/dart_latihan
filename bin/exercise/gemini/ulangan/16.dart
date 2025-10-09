import 'dart:io';

void main() {
  // no 16
  final daftar = DaftarAnggota();

  while (true) {
    stdout.write('Masukkan nama calon anggota (atau \'selesai\'): ');
    String namaAnggota = stdin.readLineSync()!;
    if (namaAnggota.trim().toLowerCase() == 'selesai') {
      break;
    }

    stdout.write("Masukkan umur $namaAnggota: ");
    String umurAnggotaString = stdin.readLineSync()!;
    int umurAnggotaInt = int.parse(umurAnggotaString);

    if (umurAnggotaInt <= 18) {
      print('Maaf, $namaAnggota belum cukup umur');
    } else {
      daftar.tambahkan(Anggota(nama: namaAnggota, umur: umurAnggotaInt));
      print('Pendaftaran $namaAnggota berhasil.');
    }
  }

  daftar.cetak();
}

class Anggota {
  final String nama;
  final int umur;
  Anggota({required this.nama, required this.umur});
}

class DaftarAnggota {
  final List<Anggota> daftar = [];

  void tambahkan(Anggota a) {
    daftar.add(a);
  }

  void cetak() {
    if (daftar.isEmpty) {
      print('--- Daftar Anggota Terdaftar ---');
      print('(Belum ada anggota terdaftar)');
      return;
    }
    print('--- Daftar Anggota Terdaftar ---');
    for (final a in daftar) {
      print('- Nama: ${a.nama}, Umur: ${a.umur}');
    }
  }
}


// ini jujur lumayan sulit sih udah bukan normal nih menurut akuuu, agak turunkan dikit yaa next timee
