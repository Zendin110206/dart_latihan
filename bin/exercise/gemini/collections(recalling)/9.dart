void main() {
  // no 9
  var list1 = ["Budi", "Siti", "Andi"];
  var list2 = ["Siti", "Eka", "Budi", "Dewi"];

  var set1 = list1.toSet();
  var set2 = list2.toSet();

  set1.addAll(set2);
  var listFinal = set1.toList();
  print('Daftar tamu final: $listFinal');
}
