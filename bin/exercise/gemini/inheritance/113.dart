class Ponsel {
  // no 113
  void telepon(String nomor) {
    print('Menelpon nomor $nomor');
  }
}

class PonselPintar extends Ponsel {
  void kirimChat(String pesan) {
    print('Mengirim chat: $pesan');
  }
}

void main() {
  PonselPintar ponselPintar = PonselPintar();
  ponselPintar.telepon('08123456');
  ponselPintar.kirimChat('Halo, apa kabar?');
}
