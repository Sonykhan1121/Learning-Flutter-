void main() async {
  print("Step 1");

  await Future.delayed(Duration(seconds: 2));
  print("Step 2");
  print("Step 3");
}
