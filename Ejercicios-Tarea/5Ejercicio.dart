import 'dart:math';

void main() {
  double x1 = 1;
  double y1 = 2;
  double x2 = 4;
  double y2 = 6;

  double distancia = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

  print("La distancia entre los puntos ($x1, $y1) y ($x2, $y2) es $distancia");
}
