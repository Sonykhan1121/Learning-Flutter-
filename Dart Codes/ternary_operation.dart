void main() {
  int age = 16;
  print(voteFunction(age));
}

String voteFunction(int age) {
  String result = (age >= 18)
      ? "You can vote"
      : (age >= 15)
          ? "You are about to give vote"
          : "You are child bro";
  return result;
}
