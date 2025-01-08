void main() {
  MobilePhone mobilePhone = MobilePhone();
  mobilePhone.watch();
}

class Electronics {
  double height = 34;
  double width = 67;
  double thickness = 78;

  void watch() {
    print("Electronics item is being watched");
  }
}

class MobilePhone extends Electronics {
  void playGames() {
    print("Playing games on mobile  phone.");
  }

  void watch() {
    print("Mobile phone is being watched.");
    super.watch();
  }
}
