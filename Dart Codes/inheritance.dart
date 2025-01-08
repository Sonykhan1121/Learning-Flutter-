class Superclass {
  String name;
  Superclass(this.name);
}

class Subclass extends Superclass {
  int age;
  Subclass(String name, this.age) : super(name)
  {
    print("hey there");
  }
}

void main() {
  Subclass s = new Subclass('Alice', 32);
  print(s.name);
  print(s.age);
}
