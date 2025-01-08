Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched";
}

void main() async {
  print("Data fetching....");
  String data = await fetchData();
  print(data);
}
