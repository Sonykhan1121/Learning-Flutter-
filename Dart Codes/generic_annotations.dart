void main() {
  List<String> names = ['alice', 'Bob', "Charlie"];

  Map<int, String> userIds = {1: "alice", 2: "Bob"};
  print(names);
  print(userIds);
}
Future<int> fetchCount() async {
  return 42;
}
Stream<String> getNamesStream() async* {
  yield "Alice";
  yield "Bob";
}