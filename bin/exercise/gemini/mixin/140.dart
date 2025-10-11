void main() {
  // no 140
}

mixin Identitas {
  String? id; // tanpa tanda tanya error
}

class Produk with Identitas {}
class Pengguna with Identitas{}

// mau nanSSya gitu gimana kalau misalnya dia itu berupa yang kek konstructor gitu atau semacamnya?
