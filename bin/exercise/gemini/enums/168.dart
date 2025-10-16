enum Level { mudah, sedang, sulit }

void main() {
  // no 168
  final mapLevel = {Level.mudah: 5, Level.sedang: 3, Level.sulit: 1};
  print(mapLevel); // memastikan saja
  print(mapLevel[Level.sulit]);
}
