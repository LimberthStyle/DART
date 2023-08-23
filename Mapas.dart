void main(List<String> args) {
  Map<String, dynamic> miMapa = {
    "id": 1,
    "nombre": "Juan",
    "apellidos": "Buleje",
    "edad": 18,
  };
  print(miMapa);
  //Mostrar datos(keys) y valores(values)
  print(miMapa.keys.toList());
  print(miMapa.values.toList());
  //Cambiar valor de un dato
  miMapa["nombre"] = "Jean Carlos";
  print(miMapa);

  print(miMapa.length);
  //Mostrar si el dato o el valor existe dentro del mapa
  print(miMapa.containsKey("apellidos"));
  print(miMapa.containsValue("Buleje"));

  miMapa.forEach((key, value) {
    //print(key)
    print(value);
  });
}
