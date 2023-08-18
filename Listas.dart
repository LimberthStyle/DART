void main(List<String> args) {
  //Lista (array)
  List items = [2, 5, 12.5, 'Brayan', 'Hola', true];
  List<int> numeros = [10, 15, 18, 12, 5];
  List<String> nombres = ['Papita', 'Limbert', 'Jhon', 'Leonidas'];

  print(items[4]);
  print(numeros);
  print(nombres[1]);

  items[3] = 'Sergio';
  print(items);
  /*
  for (int i = 0; i < items.length; i++) {
    print('ELEMENTO: ${items[i]}');
  }*/
  // for in
  for (var valor in items) {
    print('ElEMENTO: $valor');
  }

  print(nombres.isEmpty);
  print(nombres.isNotEmpty);
  print(nombres.first);
  print(nombres.last);

  nombres.add('Elyon');
  print(nombres);
  nombres.addAll(['Marco', 'Buleje']);
  print(nombres);

  print(nombres.indexOf('Leonidas'));
  print(nombres.elementAt(4));

  print(nombres.contains('Papita'));

  print(nombres.getRange(1, 3).toList());

  nombres.insert(2, 'Rivas');
  print(nombres);

  nombres.insertAll(0, ['Sabino', 'Ladislao']);
  print(nombres);

  nombres.remove('Marco');
  print(nombres);

  nombres.removeAt(6);
  print(nombres);
  //Para ordenar alfabeticamente
  nombres.sort();
  print(nombres);
  //Para desordenar de manera aleatoria
  nombres.shuffle();
  print(nombres);
}
