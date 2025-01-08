class Animal with Walk, Talk, Reproduce {
  int legs = 0;
}

void main() {
  Animal an = Animal();
  an.walk();
  an.talk();
  an.reproduce();
}

mixin Walk {
  void walk() {
    print("Walking....");
  }
}
mixin Talk {
  void talk() {
    print("Talking....");
  }
}
mixin Reproduce {
  void reproduce() {
    print("Producing");
  }
}
