/*
 2- Haremos una nueva versión del programa y la función anterior para que ésta última
reciba un parámetro: las horas hacia adelante o atrás a partir del momento actual, y calcule
y muestre esa fecha/hora. Investiga en la librería dart:core los métodos disponibles para el
manejo de DateTime. Utiliza el método add en este caso, pero experimenta otros.
*/

void main(List<String> args) {}
// recibimos un int como parámetro
DateTime cambiarHora(int diferencia) {
  //creamos una variable con la hora actual
  DateTime horaActual = DateTime.now();
  //creamos otra para la nueva hora a la que le añadimos el parámetro recibido
  DateTime nuevahora = horaActual.add(Duration(hours: diferencia));
  //devolvemos la variable modificada
  return nuevahora;
}
