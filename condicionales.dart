void main() {
  //Estructuras condicionales
  if (6 > 1) {
    //INSTRUCCIONES
    int n1 = 10;
    int n2 = 20;
    int suma = (n1 + n2);
    print("Entro al if y el resultado de la suma es: " + suma.toString());
  } else {
    //INSTRUCCIONESolol
    print("Entro al else");
  }
  //Control Condicional
  int calificacion = 5;

  if (calificacion >= 11) {
    print('Aprobado');
  } else if (calificacion >= 7) {
    print('Desaprobado');
  } else {
    print('Reprobado');
  }
//Niveles de logro
//AD -> 18 A 20
//A -> 16 A 17
//B -> 14 A 16
//C -> 12 A 13
//D -> 10 A 11
//E -> MENORES 10
  int nota = 20;

  if (nota >= 18 && nota <= 20) {
    print('Tiene nota AD');
  } else if (nota >= 16 && nota <= 17) {
    print('Tiene nota A');
  } else if (nota >= 14 && nota <= 16) {
    print('Tiene nota B');
  } else if (nota >= 12 && nota <= 13) {
    print('Tiene nota C');
  } else if (nota >= 10 && nota <= 11) {
    print('Tiene nota D');
  } else if (nota < 10) {
    print('Tiene nota E');
  }
}
