void main() {
  Contador contador1 = Contador();
  print('Contador inicial: ${contador1.contador}');

  contador1.incrementar();
  print('Contador después de incrementar: ${contador1.contador}');

  contador1.decrementar();
  print('Contador después de decrementar: ${contador1.contador}');

  Contador contador2 = Contador.conParametro(5);
  print('Contador inicial: ${contador2.contador}');

  contador2.incrementar();
  print('Contador después de incrementar: ${contador2.contador}');

  contador2.decrementar();
  print('Contador después de decrementar: ${contador2.contador}');
}

class Contador {
  int _contador;

  Contador() {
    this._contador = 0;
  }

  Contador.conParametro(int contador) {
    this._contador = contador;
  }

  int get contador => _contador;
  set contador(int contador) => this._contador = contador;

  void incrementar() {
    this._contador++;
  }

  void decrementar() {
    this._contador--;
  }
}
