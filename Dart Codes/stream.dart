Stream<int> countStream() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}

void main() async {
  print("printing....");
  await for (int num in countStream()) {
    print(num);
  }
}
