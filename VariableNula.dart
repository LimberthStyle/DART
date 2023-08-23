void main(List<String> args) {
  //Nullsafety
  String? nombre;
  nombre = "Juanito";
  print(nombre.toUpperCase());

//lA VARIABLE ACEPTA VALORES NULOS CON  EL ?
  int? numero;
  numero = 5;
//El signo (!) es para que no lanze error el valor nulo,
//confiando que el usuario ingrese un valor a la variablenumero
  int total = numero! + 5;
  print(total);

  print(suma());

//Condicional nula, para asignar a una variable que no acepta nulos
  String? apellido;
  apellido = "Buleje";
  String apellido1 = apellido ?? "Sin Apellido";
  print(apellido1);
}

int? suma() {
  return 2 + 2;
}
