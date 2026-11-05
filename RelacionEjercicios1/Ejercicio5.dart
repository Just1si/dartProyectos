import 'dart:io';

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
