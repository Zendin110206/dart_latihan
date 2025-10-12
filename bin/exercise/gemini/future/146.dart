Future<Map<String, String>> getdata() {
  return Future.delayed(Duration(milliseconds: 1500), () {
    return {'theme': 'dark', 'language': 'id'};
  });
} // ternyata gak bisa kalau seconds:1.5

void main() {
  // no 146
  print("Mulai memuat data");

  final dataDiambil = getdata();

  dataDiambil.then((data) {
    print(data);
  });
}
