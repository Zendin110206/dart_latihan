void main() {
  // no 60
  final lingkaran = Lingkaran(jariJari: 10);
  print('--- Lingkaran Awal ---');
  print('Jari-jari: ${lingkaran.jariJari}');
  print('Luas ${lingkaran.luas}');
  print('Keliling: ${lingkaran.keliling}');

  print('\n---Setelah jari-jari diubah---');
  lingkaran.jariJari = 5;
  print('Jari-jari: ${lingkaran.jariJari}');
  print('Luas ${lingkaran.luas}');
  print('Keliling: ${lingkaran.keliling}');
}

class Lingkaran {
  double _jariJari;
  Lingkaran({required double jariJari}) : _jariJari = jariJari;

  double get jariJari => _jariJari;

  set jariJari(double jariJariBaru) {
    if (jariJariBaru < 0) {
      print("Jari-jari tidak boleh negatif");
    } else {
      _jariJari = jariJariBaru;
    }
  }

  double get luas => 3.14 * _jariJari * _jariJari;
  double get keliling => 2 * 3.14 * _jariJari;
}
