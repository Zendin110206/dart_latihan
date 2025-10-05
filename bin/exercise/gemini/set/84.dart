void main() {
  // no 84
  final temanAndi = {
    "Siti",
    "Eka",
    "Dewi",
    "Joko",
  }; // gini juga boleh, cuman kurang rekomendasi untuk readibility dan kejelasannya lah ya
  final temanBudi = <String>{"Joko", "Dewi", "Putra", "Bayu"};

  print('Teman Andi: $temanAndi');
  print('Teman Budi: $temanBudi');

  final temanIrisan = temanAndi.intersection(temanBudi);
  print('Teman bersama (irisan): $temanIrisan');
}
