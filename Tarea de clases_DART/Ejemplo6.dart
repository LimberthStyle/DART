void main() {
  Persona titular = Persona('Juan Pérez', 30, '12345678A');
  Cuenta cuenta = Cuenta(titular, 1000);
  cuenta.mostrar();

  cuenta.ingresar(500);
  print('Cantidad después de ingresar: ${cuenta.getCantidad()}');

  cuenta.retirar(250);
  print('Cantidad después de retirar: ${cuenta.getCantidad()}');
}

class Cuenta {
  Persona titular;
  double cantidad;

  Cuenta(this.titular, [this.cantidad = 0]);

  Persona getTitular() => titular;
  void setTitular(Persona titular) => this.titular = titular;

  double getCantidad() => cantidad;
  void setCantidad(double cantidad) => this.cantidad = cantidad;

  void mostrar() {
    print('Titular: ${titular.nombre}');
    print('Cantidad: $cantidad');
  }

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  void retirar(double cantidad) {
    this.cantidad -= cantidad;
  }
}
