void main() {
  double gradosSexagesimales = 45;
  double pi = 3.14;

  double gradosCentesimales = gradosSexagesimales * (100 / 90);
  double radianes = gradosSexagesimales * (pi / 180);

  print(
      "El ángulo de $gradosSexagesimales grados sexagesimales equivale a $gradosCentesimales grados centesimales y $radianes radianes");
}
