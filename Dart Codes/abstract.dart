void main() {
  MobilePhone m = new MobilePhone();
  m.watching();
}

abstract class ElectronicsItem {
  void watching();
}

class MobilePhone extends ElectronicsItem {
  void watching() {
    // TODO: implement watching
    print("anything");
  }
}
