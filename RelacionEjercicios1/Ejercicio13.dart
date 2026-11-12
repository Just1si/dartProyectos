/*13- Calcula en Dart el cociente y el resto de la división entera entre dos números enteros y 
positivos utilizando el algoritmo de Euclides 
*/

void main() {
  // definimos el dividendo y el divisor (números enteros y positivos)
  int dividendo = 23;
  int divisor = 5;

  // guardamos los valores originales para mostrarlos al final
  int a = dividendo;
  int b = divisor;

  int cociente = 0;

  // restamos el divisor de forma sucesiva hasta que el dividendo sea menor que el divisor
  while (a >= b) {
    a -= b;
    cociente++; // cada resta cuenta como una unidad del cociente
  }

  // el resto es lo que ha quedado en a tras las restas
  int resto = a;

  print('Para la división entera de $dividendo entre $divisor:');
  print('Cociente: $cociente');
  print('Resto: $resto');
}