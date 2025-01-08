void main() {
  List<String> words = [
    'Apple',
    'Banana',
    'Orange',
    'Mango',
    'Pineapple',
    'Grapes',
    'Peach',
    'Strawberry',
    'Blueberry',
    'Watermelon'
  ];

  String s = (words.where((element) => element.startsWith('B')).join(' '));
  print(s); 
}
