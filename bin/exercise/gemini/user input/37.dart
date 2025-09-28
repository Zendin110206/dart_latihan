import 'dart:io';

void main() {
  // no 37
  double total = 0;
  while (true) {
    stdout.write('Masukkan angka (atau ketik \'selesai\' untuk berhenti): ');
    String angkaString = stdin.readLineSync()!;
    if (angkaString.toLowerCase() == 'selesai') {
      break;
    } else {
      double angkaDouble = double.tryParse(angkaString)!;
      total += angkaDouble;
    }
  }
  print('Total akhir adalah: $total');
}

// bagaimana kalau kasusnya dia tuh kek ngisi selainnnn selesai, atau mungkin cuman enter doank, itu gimana ya??
