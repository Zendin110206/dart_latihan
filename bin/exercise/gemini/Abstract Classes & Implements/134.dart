import 'dart:io';

void main() {
  // no 134
  stdout.write('Masukkan pesan melalui (SMS / Email)? ');
  String pilihan = stdin.readLineSync()!;
  Notifikasi notifikasi = getNotifikasiChannel(pilihan);
  notifikasi.kirim('Hai ini pesan yang dikirim melalui $pilihan');
}

abstract class Notifikasi {
  void kirim(String pesan);
}

class EmailNotifikasi extends Notifikasi {
  @override
  void kirim(String pesan) {
    print('Ini adalah pesan yang diperoleh dari Email: $pesan');
  }
}

class SMSNotifikasi extends Notifikasi {
  @override
  void kirim(String pesan) {
    print('Ini adalah pesan yang diperoleh dari SMS: $pesan');
  }
}

Notifikasi getNotifikasiChannel(String channel) {
  if (channel.trim().toLowerCase() == 'email') {
    return EmailNotifikasi();
  }
  if (channel.trim().toLowerCase() == 'sms') {
    return SMSNotifikasi();
  } else {
    return EmailNotifikasi();
  }
}
