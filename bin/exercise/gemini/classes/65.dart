void main() {
  // no 65
  var warnaMerah1 = const Warna(red: 255, blue: 0, green: 0);
  var warnaMerah2 = const Warna(red: 255, blue: 0, green: 0);
  var warnaBiru = const Warna(red: 0, blue: 255, green: 0);

  print(
    'Apakah warnaMerah1 identik dengan warnaMerah2? ${identical(warnaMerah1, warnaMerah2)}',
  );
  print('Apakah warnaMerah1 identik dengan warnaBiru? ${identical(warnaMerah1, warnaBiru)}');
}

class Warna {
  final int red;
  final int green;
  final int blue;

  const Warna({required this.red, required this.blue, required this.green});
}
