void main() {
  // no 114
  Anjing anjing = Anjing(jenis: 'Golden Retriever', umur: 5);
  anjing.info();
}

class Hewan {
  int umur;
  Hewan({required this.umur});

  void info() {
    print('Seekor hewan berumur $umur tahun');
  }
}

class Anjing extends Hewan {
  String jenis;
  Anjing({required this.jenis, required super.umur});

  @override
  void info() {
    print('Seekor anjing jenis $jenis berumur $umur tahun.');
  }
}

