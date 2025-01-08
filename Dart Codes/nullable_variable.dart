void main() {
  String? name = null;
  print(name ?? 'Guest'); // Output: Guest

  name = 'Alice';
  print(name ?? 'Guest'); // Output: Alice
}
