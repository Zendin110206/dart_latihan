void main() {
  // no 88
  List<String> list1 = ["apel", "mangga", "jeruk"];
  List<String> list2 = ["mangga", "pisang", "anggur"];
  List<String> list3 = ["apel", "kiwi", "pisang"];

  List<String> semuaList = list1 + list2 + list3;
  print(semuaList);
  Set<String> setSemua =  semuaList.toSet();
  print('Item unik dari semua list: $setSemua');
}
