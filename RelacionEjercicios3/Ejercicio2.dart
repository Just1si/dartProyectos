import 'common.dart';

import 'dart:math';

void main() {
  int aleatorio = Random().nextInt(99) + 1;
  bool acierto = false;
  int intentos = 0;
  print("//DEBUG Information aleato = $aleatorio");

  while (!acierto) {
    intentos++;
    int num = inputInt("Introduce un número del 1 al 100");

    if (num == aleatorio) {
      print(
        "Acertaste. El número era $aleatorio. \nSe ha acertado a los $intentos intentos",
      );
      acierto = true;
    } else if (num < aleatorio) {
      print("El numero introducido es menor que el aleatorio");
    } else {
      print("El número introducido es mayor que el aleatorio");
    }
  }
}
