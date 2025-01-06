void main() {
  int age = 17;
  print(vote(age));
}

bool vote(int age) {
  if (age >= 18) {
    return true;
  } else {
    return false;
  }
}
