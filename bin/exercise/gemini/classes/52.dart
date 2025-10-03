void main() {
  // no 52
  var pengguna = Pengguna(username: 'Zaenal', umur: 25);
  print('Umur awal: ${pengguna.umur}');
  pengguna.umur = 30;
  print('Umur setelah diubah menjadi 30: ${pengguna.umur}');
  pengguna.umur = -5;
  print('Umur akhir: ${pengguna.umur}');
}

class Pengguna {
  String username;
  int _umur;

  Pengguna({required this.username, required int umur}) : _umur = umur;
  int get umur => _umur;

  set umur(int umurBaru) {
    if (umurBaru < 0) {
      print('Error: Umur tidak boleh negatif.');
    } else {
      _umur = umurBaru;
    }
  }
}
