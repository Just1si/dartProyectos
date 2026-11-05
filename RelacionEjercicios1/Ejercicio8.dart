/**
 * 8- Haz un programa en Dart que muestre la tabla de multiplicar de un número entero (entre
1 y 10) que se introducirá por consola. Investiga la función stdin.readLineSync() para
realizar entrada de datos desde consola. ¿Qué ocurre con el sistema “sound type”?.
Soluciónalo utilizando un tipo nullable. Testea la entrada sometiéndola a distintas pruebas
de datos de entrada.
 */
import 'dart:io';

void main(List<String> args) {
  print("Introduzca el numero para mostrar la tabla de multiplicar.");
  int num1 = int.parse(stdin.readLineSync()!);
  ejercicio8(num1);
}

void ejercicio8(int num1) {
  for (int i = 1; i <= 10; i++) {
    print(num1 * i);
  }
}
