void main() {
  List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

  Iterable<int> doublenumber = a.map((e) => e * e);
  print(doublenumber.toList());
}
