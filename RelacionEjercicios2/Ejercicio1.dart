/*1- Vamos a declarar en un programa Dart una función sin parámetros ni valores devueltos,
que únicamente muestre por pantalla la fecha y la hora actuales (DateTime.now() ).
*/

void main(List<String> args) {
  mostrarHora();
}

void mostrarHora() {
  String hora = DateTime.now().toString();
  print("Son las: " + hora);
}
