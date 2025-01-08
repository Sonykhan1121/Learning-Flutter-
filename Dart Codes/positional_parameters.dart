void main() {
  Map newUser = userMap("THT", 20, "Male", 12);
  print(newUser);
}

Map userMap(String name, int age, String gender, int cls) {
  return {"name": name, "age": age, "gender": gender, "class": cls};
}
