void main() {
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var names = ['Sultan', 'Dolon', 'pias', 'shuvo'];
  Map<String, Object> map = {
    'tags': ['saturn'],
    'url': '//to/saturn.jpg'
  };

  print(name.runtimeType);
  print(year.runtimeType);

  print(antennaDiameter.runtimeType);
  print(names.runtimeType);
  print(map.runtimeType);

  Object companyName = "THT";
  print(companyName.runtimeType);
}
