void main() {
  Persona persona = Persona('Juan Pérez', 30, '12345678A');
  persona.mostrar();

  bool esMayorDeEdad = persona.esMayorDeEdad();
  if (esMayorDeEdad) {
    print('${persona.getNombre()} es mayor de edad');
  } else {
    print('${persona.getNombre()} no es mayor de edad');
  }
}

class Persona {
  String nombre;
  int edad;
  String dni;

  Persona(this.nombre, this.edad, this.dni);

  String getNombre() => nombre;
  void setNombre(String nombre) => this.nombre = nombre;

  int getEdad() => edad;
  void setEdad(int edad) => this.edad = edad;

  String getDni() => dni;
  void setDni(String dni) => this.dni = dni;

  void mostrar() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('DNI: $dni');
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }
}
