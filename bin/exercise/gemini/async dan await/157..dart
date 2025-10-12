void main() async {
  //   // INI BELUM JAWAB DI PERTANYAAN SEBELUMNYA , ya ga sih? aku sebelumnya nanya ini gak di no 153 ( konfirm dulu apakah kamu munri kelupaan/kelewatan atau emmang gak ada).  saya melihat ada kek async* gitu di auti complete, apakah beda? terus saya kalau auti correct dari si dart, dia ngasihnya gini Future<void> main() async { sama ajakah? lebih best practises kah?
  // no 157
  try {
    final data = login('admin', '123');
    final hasil = await data;
    print(hasil);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }

  try {
    final data = login('adminnn', '123455');
    final hasil = await data;
    print(hasil);
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}

Future<String> login(String username, String password) async {
  await Future.delayed(Duration(seconds: 1));

  if (username == "admin" && password == '123') {
    return "Login berhasil! Token: xyz-abc";
  } else {
    throw Exception("Username atau password salah");
  }
}
