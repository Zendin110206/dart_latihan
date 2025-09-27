void main() {
  // no 19
  var luasPersegiPanjang = hitungLuasPersegiPanjang(10.5, 4.0);
  print('Luas persegi panjang adalah: $luasPersegiPanjang');

  // Ada pertanyaan disini : kenapa kok nama variabel di dalam main yang luasPersegiPanjang tidak boleh diganti dengan hitungLuasPersegiPanjang? kenapa harus beda nama variabel dengan nama fungsi?
  // lalu kenapa kok fungsi tidak bisa ya kalau saya tulis sebagi var? oh ya sama dynamic juga fungsi katanya tidak direkomendasikan? boleh dijelasin lebih detail emngenai hal hal ini?
}

double hitungLuasPersegiPanjang(double panjang, double lebar) {
  return panjang * lebar;
}
