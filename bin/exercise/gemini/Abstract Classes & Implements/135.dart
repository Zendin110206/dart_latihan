void main() {
  // no 135
  final list = [
    LaporanCSV(),
    LaporanPDF(),
  ]; // lagi dan lagi kamu menyebut interface
  for (var element in list) {
    element.format();
  }
}

abstract class Formattable {
  void format();
}

class LaporanCSV implements Formattable {
  @override
  void format() {
    print('Memformat ke CSV');
  }
}

class LaporanPDF implements Formattable {
  @override
  void format() {
    print('Memformat ke PDF');
  }
}
