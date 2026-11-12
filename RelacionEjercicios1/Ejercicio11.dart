/*
11- Haz el pequeño programa en Dart que calcule el factorial de un número n inicializado a 
un valor entero y positivo 
 */

void main() {
  // definimos el número entero y positivo del que queremos calcular el factorial
  int n = 5;

  // guardamos el resultado acumulado, empezando en 1
  int factorial = 1;

  // multiplicamos de forma sucesiva desde 1 hasta n
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  // mostramos el resultado final por pantalla
  print('El factorial de $n es: $factorial');
}