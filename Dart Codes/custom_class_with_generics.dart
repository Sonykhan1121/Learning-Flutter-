class Test<T> {
  T value;
  Test(this.value);
  T get val {
    return this.value;
  }
}

void main() {
  Test<String> name = Test("THT");
  Test<int> age = Test(25);
  print(name.val);
  print(age.val);
}
