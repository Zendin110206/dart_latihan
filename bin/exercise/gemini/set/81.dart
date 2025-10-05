void main() {
  // no 81
  final tag = <String>{'dart', 'flutter', 'pemula'};
  Set<String> tag2 = {
    'dart',
    'flutter',
    'pemula',
  }; // hanya mencoba coba cara menulis syntaxnya
  // Set<String> tag2 = <String>{'dart', 'flutter', 'pemula'}; //ini juga bisa? apa bedanya? atau sama aja?

  print(tag);
  print(tag2);

  print('Tag unik: $tag');
  print('Jumlah tag: ${tag.length}');
}
