enum Car {
  // Enum values with specific attributes
  sedan(type: 'Passenger Car', seats: 5, hasSunroof: true),
  suv(type: 'Utility Vehicle', seats: 7, hasSunroof: false),
  hatchback(type: 'Compact Car', seats: 5, hasSunroof: false);

  // Constructor to initialize the attributes
  const Car({
    required this.type,
    required this.seats,
    required this.hasSunroof,
  });

  // Final properties for each car
  final String type;
  final int seats;
  final bool hasSunroof;

  // Getter to check if the car has many seats
  bool get isSpacious => seats > 5;
}

void main() {
  // Accessing a specific car model
  Car myCar = Car.suv;

  // Accessing the properties of the car
  print('Car Model: SUV');
  print('Type: ${myCar.type}');
  print('Seats: ${myCar.seats}');
  print('Has Sunroof: ${myCar.hasSunroof}');
  print('Is Spacious: ${myCar.isSpacious}');
}
