void main(List<String> args) {
  mostrarMensaje();
  print(suma(5, 2));
  multiplicacion(9);
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
void multiplicacion(int n1) {
  for (var i = 0; i < 13; i++) {
    print("$n1 * $i = ${n1 * i} ");
  }
}
