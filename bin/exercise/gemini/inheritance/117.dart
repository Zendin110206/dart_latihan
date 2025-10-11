void main() {
  // no 117
  Programmer programmer = Programmer(nama: 'Zaenal');
  Designer designer = Designer(nama: 'Abidin');
  cetakLaporanGaji(programmer);
  cetakLaporanGaji(designer);
}

class Karyawan {
  String nama;
  Karyawan({required this.nama});

  double hitungGaji() {
    return 5000000.0;
  }
}

class Programmer extends Karyawan {
  Programmer({required super.nama});
  @override
  double hitungGaji() {
    return 10000000.0;
  }
}

class Designer extends Karyawan {
  Designer({required super.nama});
  @override
  double hitungGaji() {
    return 8000000.0;
  }
}

void cetakLaporanGaji(Karyawan karyawan) {
  print(
    "Seorang karyawan bernama ${karyawan.nama} digaji perusahaan sesuai jenis pekerjaan yaitu : ${karyawan.hitungGaji()}",
  );
}


