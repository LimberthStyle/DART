void main() {
  //Definimos el sueldo de los empleados como DOUBLE

  double Empleado1 = 1000;
  double Empleado2 = 1500;
  double Empleado3 = 2000;

  double aumento1 = Empleado1 * 0.10;
  double aumento2 = Empleado2 * 0.12;
  double aumento3 = Empleado3 * 0.15;

  double sueldoFinal1 = Empleado1 + aumento1;
  double sueldoFinal2 = Empleado2 + aumento2;
  double sueldoFinal3 = Empleado3 + aumento3;

  print("El sueldo final del primer empleado es $sueldoFinal1");
  print("El sueldo final del segundo empleado es $sueldoFinal2");
  print("El sueldo final del tercer empleado es $sueldoFinal3");
}
