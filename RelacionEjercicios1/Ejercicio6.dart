import 'dart:io';

void ejercicio6() {
  // 1. Pedir los dos números enteros
  print("Introduzca el primer número entero:");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Introduzca el segundo número entero:");
  int num2 = int.parse(stdin.readLineSync()!);

  // 2. Pedir el operador como String
  print("Introduzca el operador (+, -, *, /, %):");
  String operador = stdin.readLineSync()!;

  // 3. Estructura switch para actuar según el operador
  switch (operador) {
    case '+':
      print("Resultado de la suma: ${num1 + num2}");
      break;

    case '-':
      print("Resultado de la resta: ${num1 - num2}");
      break;

    case '*':
      print("Resultado de la multiplicación: ${num1 * num2}");
      break;

    case '/':
      // Validamos que no se divida entre cero
      if (num2 == 0) {
        print("Error: No se puede dividir entre cero.");
      } else {
        // En Dart, ~/ realiza la división entera (devuelve un int)
        print("Resultado de la división entera: ${num1 ~/ num2}");
      }
      break;

    case '%':
      if (num2 == 0) {
        print("Error: No se puede calcular el resto con divisor cero.");
      } else {
        print("Resultado del resto (módulo): ${num1 % num2}");
      }
      break;

    default:
      print("Error: Operador '$operador' no válido.");
      break;
  }
}
