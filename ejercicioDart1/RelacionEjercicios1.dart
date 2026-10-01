/*
 * 1. mensaje hola mundo
 * variable int inicializada a 1 y un string con tu nombre
 * mostrar con print una operación con la variable numerica y otra con el string
 * 
 */

import 'dart:io';

void main() {
  ejercicio1();
  ejercicio2();
  ejercicio2_2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
  ejercicio6();
}

void ejercicio1() {
  // 1.
  print("hola mundo");

  // 2.

  int valor1 = 1;
  String nombre = "isidoro";

  print("mi nombre es: $nombre");

  print("La variable 1: $valor1 más cuatro es igual a: ($valor1+4)");
}

void ejercicio2() {
  List numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // puede imprimirse un array tal cual usando la llamada a la variable
  print("Impresión del array con llamada a la variable $numeros");

  for (int i = 0; i < numeros.length; i++) {
    numeros[i] = i + 2;

    //puede imprimirse un array de la forma tradicional en java
    print("Impresion del array como en java $numeros");
  }

  print(numeros);
  // puede imprimirse una lista/array con una llamada al método forEach(print)
  print("Forma de imprimir un array con un forEach");
  numeros.forEach(print);
}

void ejercicio2_2() {
  // se puede hacer lo mismo que en el apartado anterior con la clase map

  Map<String, int> mapIDUser = {
    "Isidoro": 123456789,
    "Carmen": 987654321,
    "Maria": 12349876,
  };
  print(mapIDUser);

  mapIDUser.forEach((key, value) {
    print("ID $key $value");
  });
}

void ejercicio3() {
  const pi = 3.141592;

  final annoActual = DateTime.now().year;
  bool esBisiesto = DateTime(annoActual, 2, 29).month == 2;

  final diasAnno = esBisiesto ? "si" : "no";

  print("valor de pi: $pi");

  print("$annoActual es bisiesto o no?: $diasAnno");
  ;
}

void ejercicio4() {
  String? esNull;

  print("Esta variable puede ser null o no: $esNull");
}

void ejercicio5() {
  List lados = [];

  for (int i = 0; i < 3; i++) {
    print("Introduzca el lado ${i + 1}:");
    lados.add(double.parse(stdin.readLineSync() ?? '1'));
  }

  if (lados[0] == lados[1] && lados[1] == lados[2]) {
    print("El triangulo es equilátero");
  } else if (lados[0] == lados[1] ||
      lados[1] == lados[2] ||
      lados[0] == lados[2]) {
    print("El triangulo es isósceles");
  } else {
    print("El triangulo es escaleno");
  }
}

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
