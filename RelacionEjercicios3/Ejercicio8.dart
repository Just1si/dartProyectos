/**8- Vamos por fin a trabajar la validación de strings. Investiga cómo se definen las
expresiones regulares en Dart y construye una función que devuelva true si el string que
se le pase como parámetro hace match con la expresión regular de un color codificado en
RGB:
●
●
ejemplos positivos: #4F6, #982A3B
ejemplos negativos: red, 987s, 882244
 */

import 'Ejercicio12_validaciones.dart';

void main() {
  String cadena1 = "#982A3B";
  String cadena2 = "red, 987s, 882244";

  if (isRGB(cadena1)) {
    print("$cadena1 es un RGB");
  } else {
    print("$cadena1 No RBG");
  }
  if (isRGB(cadena2)) {
    print("$cadena2 es un RGB");
  } else {
    print("$cadena2 no es RGB");
  }
}
