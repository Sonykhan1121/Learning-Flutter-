void main() {
  //list functions
  List<String> fruits = ["mango"];
  fruits.add("apple");
  fruits.addAll(["banana", "guava"]);
  print(fruits);
  bool haveThisFruitsOrNot = fruits.contains("banan");

  print(haveThisFruitsOrNot);
  fruits.sort();
  print(fruits);

  var result = fruits
      .where((element) => element == "banana" || element == "mango")
      .toList();
  print(result);

  //map functions

  Map<String, dynamic> myData = {
    "name": "Sakib",
    "Age": 26,
    "Department": "R&D"
  };
  print(myData);

  print(myData['Age']);

  print(myData.keys.toList());
  print(myData.values.toSet().runtimeType);
  print(myData.containsKey("name"));

}
