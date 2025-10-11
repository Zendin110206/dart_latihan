void main() {
  // no 129
  Email email = Email();
  email.kirim('Halo ini email');

  SMS sms = SMS();
  sms.kirim('Halo ini sms');
}

abstract class DapatDikirim {
  void kirim(String pesan);
}

class Email implements DapatDikirim {
  @override
  void kirim(String pesan) {
    print('Mengirim email dengan pesan: $pesan');
  }
}

class SMS implements DapatDikirim {
  @override
  void kirim(String pesan) {
    print('Mengirim sms dengan pesan: $pesan');
  }
}
