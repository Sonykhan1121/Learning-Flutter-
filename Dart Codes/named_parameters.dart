void main() {
  Map userData = userMap(name: "Khan",gender:"male", age: 15, cls: 10);
  print(userData);
}
//we can give name and value any order 
//require and null also be valued

Map userMap({required String name, int? age, String? gender, int? cls}) {
  return {"name": name, "age": age, "gender": gender, "class": cls};
}
