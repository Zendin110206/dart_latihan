void main() {
  // no 58
  final kontak = Kontak(email: 'test@example.com');
  print('Kontak 1 dibuat dengan email: ${kontak.email}');
  kontak.email = 'Kontak-saya';

  final kontak2 = Kontak(email: 'zaenal.abidin110206 gmail.com');
  print('Kontak 2 dibuat dengan email: ${kontak2.email}');
  print('Mencoba mengubah email Kontak 1...');
  kontak.email = kontak2.email;
  print('Email akhir Kontak 1: ${kontak.email}');
}

class Kontak {
  String _email;
  Kontak({required String email}) : _email = email;

  String get email => _email;

  set email(String emailBaru) {
    if (emailBaru.contains('@') == true) {
      _email = emailBaru;
    } else {
      print('Format email tidak valid.');
    }
  }
}
