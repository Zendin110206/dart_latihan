void main() {
  // no 29

  var dataJson = [
    {"id": "E01", "nama": "Andi", "posisi": "Programmer"},
    {"id": "E02", "nama": "Budi", "posisi": "Designer"},
    {"id": "E03", "nama": "Siti", "posisi": "Project Manager"},
  ];

  List<Karyawan> daftarKaryawanFinal = [];

  for (var element in dataJson) {
    Karyawan daftarKaryawan = Karyawan(
      id: element['id']!,
      nama: element['nama']!,
      posisi: element['posisi']!,
    );

    daftarKaryawanFinal.add(daftarKaryawan);
  }

  print('Daftar nama karyawan:');
  for (var element in daftarKaryawanFinal) {
    print("- ${element.nama}");
  }
}

class Karyawan {
  String id;
  String nama;
  String posisi;
  Karyawan({required this.id, required this.nama, required this.posisi});
}
