/* 
10- Haz un programa en Dart que calcule la suma de los n primeros números naturales. El 
valor de n será inicializado en el propio programa. 
 */

 void main() {
  // definimos el número de elementos a sumar
  int n = 10; 

  // recorremos desde el 1 hasta n acumulando la suma
  int suma = 0;
  for (int i = 1; i <= n; i++) {
    suma += i;
  }

  // mostramos el resultado final por pantalla
  print('La suma de los primeros $n$ números naturales es: $suma');
}