void main() {
  // no 23
  final skorAwal = SkorTim();
  print('Skor Awal: Tim A [${skorAwal.timA}] vs Tim B [${skorAwal.timB}]');
  print('(Setelah Tim A mencetak 2 poin)');
  skorAwal.tambahkanA(2);
  print('Skor Saat ini: Tim A [${skorAwal.timA}] vs Tim B [${skorAwal.timB}]');
  print('(Setelah Tim B mencetak 1 poin)');
  skorAwal.tambahkanB(1);
  print('Skor Saat ini: Tim A [${skorAwal.timA}] vs Tim B [${skorAwal.timB}]');

}

class SkorTim {
  int timA = 0;
  int timB = 0;

  void tambahkanA(int gol) {
    timA += gol;
  }

  void tambahkanB(int gol) {
    timB += gol;
  }
}
