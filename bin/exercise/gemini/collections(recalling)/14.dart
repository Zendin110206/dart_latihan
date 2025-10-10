void main() {
  // no 14
  Set<String> email = {};
  email.add("user1@example.com");
  email.add("user2@example.com");
  email.remove("user1@example.com");

  print('Daftar email saat ini: $email');
  print('Jumlah pelanggan: ${email.length}');
}
