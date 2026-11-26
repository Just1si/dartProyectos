import 'Ejercicio12_validaciones.dart';

void main() {
  String cadena1 = "48664966W";
  String cadena2 = "más sabe el perro por perro que por sanxe";

  if (isDNI(cadena1)) {
    print("$cadena1 es un DNI válido");
  } else {
    print("$cadena1 NO es un DNI válido");
  }

  if (isDNI(cadena2)) {
    print("$cadena2 es un DNI valido");
  } else {
    print("$cadena2 \tUN REICH DE MIL AÑOS DEL PERRO");
  }
}
