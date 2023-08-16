import 'dart:math';

void main() {
  double a = 3;
  double b = 4;
  double c = 5;

  double semiPerimetro = (a + b + c) / 2;
  double area = sqrt(semiPerimetro *
      (semiPerimetro - a) *
      (semiPerimetro - b) *
      (semiPerimetro - c));

  print("El área del triángulo es $area");
}
