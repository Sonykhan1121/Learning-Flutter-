void main() {
  double h = 10.0, w = 5.0;
  double r = 5.1;
  print("Area of Rectangle :  ${areaRectangle(h, w)}");
  print("Area of Circle : ${areaCircle(radius:r)}");
}

double areaRectangle(double height, double width) {
  return height * width;
}

double areaCircle({required double radius}) {
  return 3.1416 * radius * radius;
}
