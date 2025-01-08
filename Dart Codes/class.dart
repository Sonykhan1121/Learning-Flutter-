class Spacecraft {
  String name;
  DateTime? launchDate;

  int? get launchYear => launchDate?.year;

  Spacecraft(this.name, this.launchDate);
  Spacecraft.unlaunched(String name) : this(name, null);
  void describe() {
    print("Spacecraft : $name");
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print("Launched : $launchYear ($years years ago)");
    } else {
      print("Unlaunched");
    }
  }
}

void main() {
  Spacecraft voy1 = Spacecraft("Voyager I", DateTime(1990, 12, 1));
  voy1.describe();

  Spacecraft voy2 = Spacecraft.unlaunched("Voyager II");
  voy2.describe();

}
