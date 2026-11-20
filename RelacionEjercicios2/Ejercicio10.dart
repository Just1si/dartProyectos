void main() {
  int numero = 25;

  // Llamada usando la base por defecto (2 -> binario)
  String binario = convertirBase(numero);
  print("$numero en base 2 (binario): $binario");

  // Llamada especificando otra base hasta la 8 (por ejemplo, octal = 8)
  String octal = convertirBase(numero, 8);
  print("$numero en base 8 (octal): $octal");
}

String convertirBase(int numero, [int base = 2]) {
  if (numero < 0) {
    throw ArgumentError("El número debe ser entero y positivo.");
  }
  if (base < 2 || base > 8) {
    throw ArgumentError("La base debe estar entre 2 y 8.");
  }
  if (numero == 0) {
    return "0";
  }

  String resultado = "";
  int actual = numero;

  while (actual > 0) {
    int resto = actual % base;
    resultado = "$resto$resultado";
    actual ~/= base;
  }

  return resultado;
}

/*
Pregunta: ¿qué habría que añadirle a la función para que también pudiera convertir a base 16?
Para convertir a base 16 (hexadecimal) habría que ampliar el rango permitido de la base
hasta 16 y mapear los restos mayores que 9 a las letras de la 'A' a la 'F' (donde 10 es 'A',
11 es 'B', 12 es 'C', 13 es 'D', 14 es 'E' y 15 es 'F'), por ejemplo usando un alfabeto o
cadena de dígitos como "0123456789ABCDEF" e indexando con digitos[resto] en lugar de
concatenar directamente el número del resto.
*/