void main() {
  // no 107
  final persegi = Persegi(sisi: 5, warna: "merah");
  print('Sebuah persegi berwarna ${persegi.warna} dengan sisi ${persegi.sisi}');
}

class BangunDatar {
  String warna;
  BangunDatar({required this.warna});
}

class Persegi extends BangunDatar {
  double sisi;

  // 1. Minta 'warna' di constructor Persegi.
  // 2. Langsung teruskan 'warna' itu ke constructor super.
  // Persegi({required this.sisi, required String warna}) : super(warna: warna);

  // Sintaksis 'super.warna' secara otomatis melakukan hal yang sama.
  Persegi({required this.sisi, required super.warna});
}
