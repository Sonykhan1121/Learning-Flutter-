void main() {
  Cow cow = Cow();
  cow.walking();
  cow.eating();
  Cat cat = Cat();
  cat.eating();
  cat.walking();
}

class Animal {
  void walking() {
    print("Walking...");
  }

  void eating() {
    print("Eating...");
  }
}

class Cow extends Animal {}

class Cat implements Animal {
  @override
  void eating() {
    print("Cat eating");
  }

  @override
  void walking() {
    print("Cat walking");
  }
}
