void main() {
  // no 80
  final nilai = [100, 85, 92, 78, 60, 45];
  print(
    'Apakah ada nilai di bawah 50? ${nilai.any((element) => element < 50)}',
  );
  print('Apakah ada nilai di bawah 70? ${nilai.every((element) => element > 70)}');
}
