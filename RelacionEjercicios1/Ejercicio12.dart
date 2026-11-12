/*12- Calcula en Dart el MCD de dos números enteros positivos utilizando el algoritmo de 
Euclides 
*/

void main() {
  // definimos los dos números enteros positivos
  int a = 144;
  int b = 128;

  // guardamos los valores originales para mostrarlos al final
  int num1 = a;
  int num2 = b;

  // aplicamos el algoritmo de Euclides mediante divisiones sucesivas
  while (b != 0) {
    int resto = a % b;
    a = b;
    b = resto;
  }

  // mostramos el resultado, que se queda guardado en la variable 'a'
  print('El MCD de $num1 y $num2 es: $a');
}