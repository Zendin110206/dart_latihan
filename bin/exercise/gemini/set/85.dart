void main() {
  // no 85
  List<String> listEmail = ["ana", "budi", "cici", "dodi"];
  List<String> listWhatsapp = ["cici", "dodi", "eka", "fani"];

  Set<String> setEmail = listEmail.toSet();
  Set<String> setWhatsapp = listWhatsapp.toSet();

  print(setEmail); // memastikkan saja
  print(setWhatsapp);

  print('Daftar undangan email: ${setEmail.union(setWhatsapp)}');
}
