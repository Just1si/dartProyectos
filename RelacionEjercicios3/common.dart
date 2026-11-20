/*
Librería de métodos en común para las relaciones
 */

import 'dart:io';

int inputInt(String mensaje) {
  bool isNum = false;
  int num = 0;
  while (!isNum) {
    print(mensaje);
    try {
      num = int.parse(stdin.readLineSync()!).abs();
      isNum = true;
    } on FormatException {
      print("introduzca un numero entero");
    }
  }
  return num;
}

int menu(String menu, int min, int max) {
  print(menu);

  int respuesta = 0;

  while (respuesta < min || respuesta > max) {
    respuesta = inputInt("Introduzca la opcion a elegir: ");
    if (respuesta < min || respuesta > max) {
      print("Respuesta no válida.\nIntentelo de nuevo.");
    }
  }
  return respuesta;
}
