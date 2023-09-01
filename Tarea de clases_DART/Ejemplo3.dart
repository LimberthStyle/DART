void main() {
  final Cuenta cuenta1 = Cuenta();

  cuenta1.setNombre('Juan Pérez');
  cuenta1.setDni('12345678A');
  print('Nombre: ${cuenta1.getNombre()}');
  print('DNI: ${cuenta1.getDni()}');
  print('Cantidad: ${cuenta1.getCantidad()}');

  cuenta1.ingreso(1000);
  print('Cantidad después de ingreso: ${cuenta1.getCantidad()}');

  cuenta1.reintegro(500);
  print('Cantidad después de reintegro: ${cuenta1.getCantidad()}');

  Cuenta cuenta2 = Cuenta.conParametros('María García', '87654321B', 2000);
  print('Nombre: ${cuenta2.getNombre()}');
  print('DNI: ${cuenta2.getDni()}');
  print('Cantidad: ${cuenta2.getCantidad()}');

  cuenta1.transferencia(cuenta2, 250);
  print(
      'Cantidad de cuenta1 después de transferencia: ${cuenta1.getCantidad()}');
  print(
      'Cantidad de cuenta2 después de transferencia: ${cuenta2.getCantidad()}');
}

class Cuenta {
  String nombre;
  String dni;
  double cantidad;

  Cuenta() {
    this.cantidad = 0;
  }

  Cuenta.conParametros(this.nombre, this.dni, [this.cantidad = 0]);

  String getNombre() => nombre;
  void setNombre(String nombre) => this.nombre = nombre;

  String getDni() => dni;
  void setDni(String dni) => this.dni = dni;

  double getCantidad() => cantidad;
  void setCantidad(double cantidad) => this.cantidad = cantidad;

  void ingreso(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  void reintegro(double cantidad) {
    if (cantidad > 0 && this.cantidad - cantidad >= 0) {
      this.cantidad -= cantidad;
    }
  }

  void transferencia(Cuenta cuentaDestino, double cantidad) {
    if (cantidad > 0 && this.cantidad - cantidad >= 0) {
      this.reintegro(cantidad);
      cuentaDestino.ingreso(cantidad);
    }
  }
}
