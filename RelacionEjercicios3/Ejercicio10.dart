import 'Ejercicio12_validaciones.dart';

void main() {
  String cadena1 = "isidoro@gmail.com";
  String cadena2 = "isidoro es genial, es el rey de la ciudad";

  if (isEmail(cadena1)) {
    print("$cadena1 es una dirección de email");
  } else {
    print("$cadena1 no es un email");
  }
  if (isEmail(cadena2)) {
    print("$cadena2 es una dirección de email");
  } else {
    print("$cadena2 No es una dirección de mail");
  }
}
