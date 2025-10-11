void main() {
  // no 122
  Persegi persegi = Persegi(lebar: 10, panjang: 20);

  print(
    'Luas sebuah persegi dengan panjang ${persegi.panjang} dan lebar ${persegi.lebar} adalah ${persegi.hitungLuas()}',
  );

  
  print(
    'Keliling sebuah persegi dengan panjang ${persegi.panjang} dan lebar ${persegi.lebar} adalah ${persegi.hitungKeliling()}',
  );
}

abstract class Bentuk {
  double panjang;
  double lebar;
  Bentuk({required this.panjang, required this.lebar});
  double hitungLuas();
  double hitungKeliling();
}

class Persegi extends Bentuk {
  Persegi({required super.lebar, required super.panjang});

  @override
  double hitungKeliling() {
    return 2 * (panjang + lebar);
  }

  @override
  double hitungLuas() {
    return panjang * lebar;
  }
}
