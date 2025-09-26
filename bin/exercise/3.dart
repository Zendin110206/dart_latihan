void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print(a);
  print(a.runtimeType);

  List<int> a2 = [];
  print(a2);

  print('\ncara 1');
  // cara 1
  for (var i = 0; i < a.length; i++) {
    if (a[i] < 5) {
      print(a[i]);
      a2.add(a[i]);
    }
  }

  print(a2);

  print('\ncara 2');
  // cara 2
  a2 = [];
  print(a2);

  for (final filtered in a) {
    print(filtered);
    if (filtered < 5) {
      print(filtered);
      a2.add(filtered);
    }
  }

  print(a2);

  print('\ncara 3');
  // cara 3
  final filtered3 = a.where((s) => s < 5).toList();
  print(filtered3);

  print('\ncara 4');
  // cara 4
  for (final s in a.where((s) => s < 5)) {
    print(s);
  }
}
