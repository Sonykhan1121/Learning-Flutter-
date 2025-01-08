void main() {
  List<int> a = [1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 17];

  //filter even numbers
  Iterable<int> evenNumbers = a.where((element) => element % 2 == 0);
  print(evenNumbers.toList());
}
