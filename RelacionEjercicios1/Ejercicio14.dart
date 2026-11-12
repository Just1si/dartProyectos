/*14- Haz un pequeño programa en Dart que simule el lanzamiento de un dado. Investiga la 
librería ‘dart:math’ en la documentación oficial 
*/

import 'dart:math';

void main() {
  // creamos una instancia para generar números aleatorios
  Random random = Random();

  // generamos un número entre 1 y 6 (nextInt(6) da de 0 a 5, por lo que sumamos 1)
  int resultado = random.nextInt(6) + 1;

  // mostramos el resultado del lanzamiento del dado
  print('Dado lanzado y ha salido un: $resultado');
}