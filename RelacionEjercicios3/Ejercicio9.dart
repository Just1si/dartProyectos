import 'Ejercicio12_validaciones.dart';

void main() {
  String cadena1 = "https://classroom.google.com/h/st";
  String cadena2 = "hola holita vecenito";

  if (isURL(cadena1)) {
    print(" $cadena1 es una URL");
  } else {
    print("$cadena1 no es una url");
  }

  if (isURL(cadena2)) {
    print("$cadena2 es una URL");
  } else {
    print("$cadena2 no es una URL");
  }
}
