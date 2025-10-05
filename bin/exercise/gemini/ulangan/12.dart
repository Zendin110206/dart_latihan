import 'dart:io';

void main() {
  // no 12
  stdout.write('Masukkan username: ');
  String username = stdin.readLineSync()!;
  stdout.write('Masukkan password: ');
  String pw = stdin.readLineSync()!;

  if (username == 'admin' && pw == '12345') {
    print('Login berhasil!');
  } else {
    print('Username atau password salah.');
  }


}
