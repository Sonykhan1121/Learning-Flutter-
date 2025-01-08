class Car {
  String model;
  int speed;

  Car(this.model, this.speed);

  void accelerate() {
    speed += 10;
    print('Accelerated! New speed: $speed');
  }

  void brake() {
    speed -= 10;
    print('Braked! New speed: $speed');
  }
}

void main() {
  Car car = Car('Sedan', 50);
  
  // Using cascade operator
  car..accelerate()..accelerate()..brake();
  // Output:
  // Accelerated! New speed: 60
  // Accelerated! New speed: 70
  // Braked! New speed: 60
}

