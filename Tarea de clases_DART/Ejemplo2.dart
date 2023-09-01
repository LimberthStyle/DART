void main() {
  Persona persona3 = Persona.completo('Juan', 30, '12345678A', 'H', 80, 1.75);
  print('Nombre: ${persona3.nombre}');
  print('Edad: ${persona3.edad}');
  print('DNI: ${persona3.dni}');
  print('Sexo: ${persona3.sexo}');
  print('Peso: ${persona3.peso}');
  print('Altura: ${persona3.altura}');

  int imc = persona3.calcularIMC();
  if (imc == Persona.PESO_IDEAL) {
    print('${persona3.nombre} está en su peso ideal');
  } else if (imc == Persona.POR_DEBAJO_PESO_IDEAL) {
    print('${persona3.nombre} está por debajo de su peso ideal');
  } else {
    print('${persona3.nombre} tiene sobrepeso');
  }

  bool esMayorDeEdad = persona3.esMayorDeEdad();
  if (esMayorDeEdad) {
    print('${persona3.nombre} es mayor de edad');
  } else {
    print('${persona3.nombre} no es mayor de edad');
  }
}

class Persona {
  String nombre;
  int edad;
  String dni;
  String sexo;
  double peso;
  double altura;

  static const int PESO_IDEAL = 0;
  static const int POR_DEBAJO_PESO_IDEAL = -1;
  static const int SOBREPESO = 1;

  //Persona() {
  //  this.sexo = 'H';
  //}

  //Persona.conNombreEdadSexo(this.nombre, this.edad, this.sexo) {
  //  this.sexo = _comprobarSexo(sexo);
  //}

  Persona.completo(
      this.nombre, this.edad, this.dni, this.sexo, this.peso, this.altura) {
    this.sexo = _comprobarSexo(sexo);
  }

  int calcularIMC() {
    double imc = peso / (altura * altura);
    if (imc < 20) {
      return POR_DEBAJO_PESO_IDEAL;
    } else if (imc >= 20 && imc <= 25) {
      return PESO_IDEAL;
    } else {
      return SOBREPESO;
    }
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }

  String _comprobarSexo(String sexo) {
    if (sexo == 'H' || sexo == 'M') {
      return sexo;
    } else {
      return 'H';
    }
  }
}
