void main(List<String> args) {
  //Colecciones
/*   String texto = 'Mi texto';
  String textoMultilinea = '''Mi texto
es
multilinea
asi se configura
                              ''';
  int suma = 2 + 2;
  String respuesta = "Respuesta es: ${5 + 6}";

  print(texto);
  print(textoMultilinea);
  print(respuesta);

  int edad = 20;
  String nombre = "Juan";
  print("Mi nombre es $nombre y tengo $edad años"); */

/*   int numero = 100;
  double precio = 15.50;
  String texto = numero.toString();
  String texto1 = precio.toString();

  print(texto);
  print(texto1); */

  String nombre = "Juan Gabriel Lopez";
  print(nombre.isEmpty); //trato el string como un booleano
  print(nombre.length); //trato el string como un entero
  print(nombre.toUpperCase());
  print(nombre.toLowerCase());
  print(nombre.trim());
  print(nombre.compareTo("Juan Gabriel Lopez"));
  print(nombre.replaceAll("e", "a"));
  print(nombre.substring(2, 10));
  print(nombre.contains("juan"));
  print(nombre.startsWith("A"));
  print(nombre.endsWith("z"));

  String dni = "71921735";
  String name = "Limberth";
  String lastName = "Falcon";
/*
1. Crear un codigo personalizado de usuario
2. Primeras letras del nombre, las dos ultimas letras del apellido 
y los 4 ultimos digitos del DNI
******************* Lion1735 **********************
*/
  String cod = name.substring(0, 2) +
      lastName.substring(lastName.length - 2) +
      dni.substring(dni.length - 4);
  print(cod);
}
