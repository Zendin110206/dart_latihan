import 'dart:io';

void main() {
  // no 11
  final int tinggi = 5;

  for (var i = tinggi; i >= 1; i--) {
    print('');
    for (var j = i; j <= tinggi; j++) {
      stdout.write('* ');
    }
  }
  // ini secara keterbacaan code sangat kurang yaa ( atau aman aman aja?), enggak enak sama
  print('\n------');
  for (var i = tinggi; i >= 1; i--) {
    String baris = '';
    for (var j = i; j <= tinggi; j++) {
      baris += '* ';
    }
    print(baris);
  }
}

