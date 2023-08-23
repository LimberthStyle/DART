void main(List<String> args) {
  mostrarMensaje();
  print(suma(5, 2));
  print(multiplicacion(5, 10));
}

//Funciones sin retorno
mostrarMensaje() {
  print("Hola mundo !!!! Desde una funcion");
}
/*void suma() {
  print("La suma es: ${2 + 2}");
}*/

//Funciones con retorno
int suma(int n1, int n2) {
  print("La suma es:");
  return n1 + n2;
}

//Funcion que multiplique cualquier numero
double multiplicacion(double n1, double n2) {
  return n1 * n2;
}
