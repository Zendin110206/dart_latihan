class Bentuk {
  double hitungLuas() {
    return 0;
  }
}

class Lingkaran extends Bentuk {
  double jariJari;
  Lingkaran({required this.jariJari});

  @override
  double hitungLuas() {
    return 3.14 * jariJari * jariJari;
  }
}

void main() {
  // no 112
  Lingkaran lingkaran = Lingkaran(jariJari: 10);
  print(
    'Luas Lingkaran dnegan jari-jari ${lingkaran.jariJari} adalah ${lingkaran.hitungLuas()}',
  );
}
