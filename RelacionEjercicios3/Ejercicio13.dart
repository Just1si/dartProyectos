import 'dart:io';

import 'common.dart';

void main() {
  List<String> colores = ["rojo", "amarillo", "violeta"];
  String entrada = "";
  int opcion = 0;

  print("Introduzca qué desea hacer: ");

  do {
    print(
      "1. Incluir color. \n2. Eliminar color\n3. Buscar color \n4. Mostrar lista de colores. \n5. Salir",
    );
    opcion = int.parse(stdin.readLineSync()!);
    {
      switch (opcion) {
        case 1:
          print("introduzca el color que desee");
          entrada = stdin.readLineSync()!;
          if (colores.contains(entrada.toLowerCase())) {
            print("Color ya en la lista. \nIntroduzca otro");
          } else {
            colores.add(entrada.toLowerCase());
            print(colores);
          }
          break;
        case 2:
          print("Introduzca el color a eliminar:");
          entrada = stdin.readLineSync()!;
          int objetivo = colores.indexOf(entrada);
          print("Eliminando color... " + colores.elementAt(objetivo));
          colores.removeAt(objetivo);
          print(colores);
          break;
        case 3:
          print("Introduzca el color a buscar");
          entrada = stdin.readLineSync()!;
          if (colores.contains(entrada)) {
            print("El color está en la lista");
          } else {
            print("El color no está en la lista");
          }
          break;
        case 4:
          print("Mostrando lista de colores");
          colores.forEach(print);
          break;
        case 5:
          break;
      }
    }
  } while (opcion != 5);
}
