/*
* Funcion que compruebe si una cadena tiene formato de color en hexadecimal RGB valido.
*
*/

// Ejercicio 8
bool isRGB(String cadena) {
  return RegExp(r'^#(?:[0-9a-fA-F]{3}){1,2}$').hasMatch(cadena);
}

// Ejercicio 9
bool isURL(String cadena) {
  return new RegExp(
    r'^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,63}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$',
  ).hasMatch(cadena);
}

// Ejercicio 10
bool isEmail(String cadena) {
  return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
      .hasMatch(cadena);
}

// Ejercicio 11
bool isDNI(String cadena) {
  return RegExp(
    r'^[0-9]{8}[TRWAGMYFPDXBNJZSQVHLCKE]$',
    caseSensitive: false,
  ).hasMatch(cadena);
}
