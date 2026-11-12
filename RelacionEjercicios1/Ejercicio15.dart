/*15- Versiona el programa anterior para que simule el lanzamiento de un dado un número n 
de veces (n>100) y muestre la frecuencia con la que se ha obtenido cada resultado.  
*/

import 'dart:math';

void main() {
  // definimos el número de lanzamientos (mayor que 100)
  int n = 1000;

  // creamos el generador de números aleatorios
  Random random = Random();

  // lista para guardar la frecuencia de cada cara (del 1 al 6)
  // dejamos el índice 0 sin usar para que coincida directamente con los números del dado
  List<int> frecuencias = List.filled(7, 0);

  // simulamos el lanzamiento del dado n veces
  for (int i = 0; i < n; i++) {
    int resultado = random.nextInt(6) + 1;
    frecuencias[resultado]++;
  }

  // mostramos cuántas veces ha salido cada cara
  print('Frecuencia tras lanzar el dado $n veces:');
  for (int i = 1; i <= 6; i++) {
    print('Cara $i: ${frecuencias[i]} veces');
  }
}