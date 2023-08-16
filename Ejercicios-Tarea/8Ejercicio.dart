void main() {
  int segundosTotales = 5000;

  int horas = segundosTotales ~/ 3600;
  int minutos = (segundosTotales % 3600) ~/ 60;
  int segundos = segundosTotales % 60;

  print('$segundosTotales segundos equivale a:');
  print('$horas horas, $minutos minutos, $segundos segundos');
}
