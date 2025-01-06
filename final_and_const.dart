void main() {
  final int test1 = 140;

  ///wait for some task then save here //runtime
  const String name = "Aksat";
//we have to initialize with something
  print(name);
  print(My.age);

}

class My {
  final String name = "Something";
  static const age = 20;
  //when we initialize with static variable we can access this . from anywhere
}
