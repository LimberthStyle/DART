void main() {
  Cuenta cuenta = Cuenta('Juan Pérez');
  print('Titular: ${cuenta.titular}');
  print('Cantidad: ${cuenta.cantidad}');

  cuenta.ingresar(1000);
  print('Cantidad después de ingresar: ${cuenta.cantidad}');

  cuenta.retirar(500);
  print('Cantidad después de retirar: ${cuenta.cantidad}');
}

class Cuenta {
  String titular;
  double cantidad;

  Cuenta(this.titular, [this.cantidad = 0]);

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  void retirar(double cantidad) {
    if (this.cantidad - cantidad < 0) {
      this.cantidad = 0;
    } else {
      this.cantidad -= cantidad;
    }
  }
}
