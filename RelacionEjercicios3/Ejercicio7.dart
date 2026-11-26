import 'dart:io';

void comprobarSubcadena(String frase, String sub) {
  if (frase.contains(sub)) {
    print("La frase contiene la sub frase");

    int inicio = frase.indexOf(sub);
    int fin = frase.lastIndexOf(sub);

    print(
      "La primera posición de la subcadena es: $inicio\t y la última es: $fin",
    );
  } else {
    print("La frase no contiene la subfrase");
  }
}
