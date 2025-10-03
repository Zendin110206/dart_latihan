
void main() {
  // no 63
  // ignore: unused_local_variable
  var logger = Logger()
    ..setNama('AppLogger')
    ..setAktif(true)
    ..setLevel('INFO')
    ..log('Sistem berhasil dimulai');

}

class Logger {
  String? namaLogger;
  bool? aktif;
  String? level;

  void setNama(String nama) {
    namaLogger = nama;
  }

  void setAktif(bool status) => aktif = status;

  void setLevel(String lvl) => level = lvl;

  void log(String pesan) {
    if (aktif == true) {
      print('[$level][$namaLogger]: $pesan');
    }
  }
}
