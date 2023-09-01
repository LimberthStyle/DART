void main() {
  final Persona titular = Persona('Juan Pérez', 20, '12345678A');
  CuentaJoven cuenta = CuentaJoven(titular, 1000, 5);
  cuenta.mostrar();

  cuenta.ingresar(500);
  print('Cantidad después de ingresar: ${cuenta.getCantidad()}');

  cuenta.retirar(250);
  print('Cantidad después de retirar: ${cuenta.getCantidad()}');

  bool esTitularValido = cuenta.esTitularValido();
  if (esTitularValido) {
    print('El titular es válido');
  } else {
    print('El titular no es válido');
  }
}

class CuentaJoven extends Cuenta {
  double bonificacion;

  CuentaJoven(Persona titular, [double cantidad = 0, this.bonificacion = 0])
      : super(titular, cantidad);

  double getBonificacion() => bonificacion;
  void setBonificacion(double bonificacion) => this.bonificacion = bonificacion;

  bool esTitularValido() {
    return titular.edad >= 18 && titular.edad < 25;
  }

  @override
  void retirar(double cantidad) {
    if (esTitularValido()) {
      super.retirar(cantidad);
    }
  }

  @override
  void mostrar() {
    super.mostrar();
    print('Cuenta Joven');
    print('Bonificación: $bonificacion%');
  }
}
