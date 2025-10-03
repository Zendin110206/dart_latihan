void main() {
  // no 61
  final hasilTambah = MathHelper.tambah(10, 5);
  final hasilKurang = MathHelper.kurang(10, 5);
  final hasilKali = MathHelper.kali(10, 5);
  final hasilBagi = MathHelper.bagi(10, 2);
  final hasilBagiNol = MathHelper.bagi(10, 0);

  print("10 + 5 = $hasilTambah");
  print("10 - 5 = $hasilKurang");
  print("10 * 5 = $hasilKali");
  print("10 / 2 = $hasilBagi");
  print("10 / 0 = $hasilBagiNol");
}

class MathHelper {
  static double tambah(double a, double b) {
    return a + b;
  }

  static double kurang(double a, double b) {
    return a - b;
  }

  static double kali(double a, double b) {
    return a * b;
  }

  static double bagi(double a, double b) {
    if (b == 0) {
      return 0.0;
    }
    return a / b;
  }
}



// // best practise menurutkku : 
// void main() {
//   printOperasi(10, 5, '+', MathHelper.tambah);
//   printOperasi(10, 5, '-', MathHelper.kurang);
//   printOperasi(10, 5, '*', MathHelper.kali);
//   printOperasi(10, 2, '/', MathHelper.bagi);
//   printOperasi(10, 0, '/', MathHelper.bagi);
// }

// void printOperasi(double a, double b, String op, double Function(double, double) operasi) {
//   final hasil = operasi(a, b);
//   print("$a $op $b = $hasil");
// }

// class MathHelper {
//   static double tambah(double a, double b) => a + b;
//   static double kurang(double a, double b) => a - b;
//   static double kali(double a, double b) => a * b;
//   static double bagi(double a, double b) => b == 0 ? 0.0 : a / b;
// }
