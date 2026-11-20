void main() {
  int dividendo = 23;
  int divisor = 4;

  int cociente = calcularCociente(dividendo, divisor);
  int resto = calcularResto(dividendo, divisor);

  print("División de $dividendo entre $divisor:");
  print("Cociente: $cociente");
  print("Resto: $resto");
}

int calcularCociente(int dividendo, int divisor) {
  if (divisor <= 0) {
    throw ArgumentError("El divisor debe ser un entero positivo.");
  }

  int cociente = 0;
  int actual = dividendo;

  while (actual >= divisor) {
    actual -= divisor;
    cociente++;
  }

  return cociente;
}

int calcularResto(int dividendo, int divisor) {
  if (divisor <= 0) {
    throw ArgumentError("El divisor debe ser un entero positivo.");
  }

  int actual = dividendo;

  while (actual >= divisor) {
    actual -= divisor;
  }

  return actual;
}

/*
Pregunta 1: qué estructura de datos nos permitiría que una función pudiera devolver dos valores simultáneamente?
En Dart se pueden devolver dos valores a la vez utilizando un Record, que se introdujo en Dart 3 y permite agrupar varios valores con su tipo de forma directa sin necesidad de crear una estructura compleja, o bien creando una clase propia con los atributos correspondientes. También es posible recurrir a colecciones como una lista o un mapa, aunque suelen ofrecer menor claridad de tipos o exigir comprobaciones extra al acceder a cada dato.

Pregunta 2: ¿Por qué no sería recomendable hacer una función así? Investiga el principio SRP
El principio SRP, o principio de responsabilidad única, indica que cada función o módulo debe tener una única razón para cambiar, es decir, ocuparse de una sola tarea bien definida. Mezclar el cálculo del cociente y el del resto dentro de una misma función une dos responsabilidades distintas en un mismo bloque, lo que dificulta leer el código, probar cada parte por separado o modificar una de las dos operaciones en el futuro sin arriesgarse a afectar a la otra.
*/