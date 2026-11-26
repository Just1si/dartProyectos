import 'dart:io';

void main() {
  print("Introduzca una palabra o frase toda en mayúscula o toda en minúscula");
  String frase = stdin.readLineSync()!;

  if (cadenaMayus(frase)) {
    print("La cadena introducida es toda en mayusculas");
  } else if (cadenaMinus(frase)) {
    print("La cadena es toda en minuscula");
  } else {
    print("La cadena no es ni toda en mayuscula ni minuscula");
  }
}

bool cadenaMayus(String cadena) {
  bool resultado = false;

  if (cadena.toUpperCase() == cadena) {
    resultado = true;
  }
  return resultado;
}

bool cadenaMinus(String cadena) {
  bool resultado = false;
  if (cadena.toLowerCase() == cadena) {
    resultado = true;
  }
  return resultado;
}
