void main() {
  List<String> words = ['apple', 'banana', 'cherry','bbbb'];
  words.where((element) => element.startsWith('b')).forEach(print);
}
