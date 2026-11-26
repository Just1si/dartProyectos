/*
recibe una frase y la muestra con el orden invertido
*/

import 'dart:io';

String reverseString(String cadena) {
  List<String> palabras = cadena.split(" ").reversed.toList();
  String inversa = "";

  palabras.forEach((palabra) {
    inversa += palabra + " ";
  });
  return inversa;
}

String reverseLetter(String cadena) {
  return cadena.split('').reversed.join();
}

bool esPalindromoPorMitades(String cadena) {
  String limpia = cadena.replaceAll(' ', '').toLowerCase();
  int mitad =
      limpia.length ~/ 2; // '~/' hace división entera directamente en Dart

  String primeraMitad = limpia.substring(0, mitad);
  String segundaMitad = (limpia.length % 2 == 0)
      ? limpia.substring(mitad)
      : limpia.substring(mitad + 1);

  return primeraMitad == reverseLetter(segundaMitad);
}
