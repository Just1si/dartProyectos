void main(List<String> args) {
  DateTime fechaDesplazada = cambiarHora(3);
  print("Fecha y hora calculada: $fechaDesplazada");
}

DateTime cambiarHora(int diferencia) {
  DateTime horaActual = DateTime.now();
  DateTime nuevaHora = horaActual.add(Duration(hours: diferencia));
  return nuevaHora;
}