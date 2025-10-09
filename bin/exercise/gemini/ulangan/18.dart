import 'dart:io';

int jumlahA = 0;
int jumlahB = 0;
void main() {
  // no 18
  for (var i = 0; i < 5; i++) {
    stdout.write('Pemilih ke-${i + 1}, pilih kandidat (A/B): ');
    String votingString = stdin.readLineSync()!.toLowerCase();
    if (votingString == 'a') {
      jumlahA++;
    } else {
      jumlahB++;
    } // anggap saja masalah untuk kemungkinan lainnya kita hiraukan dulu, fokus intinya
  }

  print('\n--- Hasil Voting ---');
  print('Kandidat A: $jumlahA suara');
  print('Kandidat B: $jumlahB suara');
  if (jumlahA > jumlahB) {
    print('Pemenangnya adalah Kandidat A!');
  } else {
    print('Pemenangnya adalah Kandidat B!');
  }
}
