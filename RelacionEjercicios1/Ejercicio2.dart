void ejercicio2() {
  List<int> numeros = List.filled(
    10,
    0,
  ); // inicializamos un array de 10 elementos con valor 0

  // puede imprimirse un array tal cual usando la llamada a la variable
  print("Impresión del array con llamada a la variable $numeros");

  for (int i = 0; i < numeros.length; i++) {
    numeros[i] = i + 2;

    //puede imprimirse un array de la forma tradicional en java
    print("Modificando posición $i del array con valor ${numeros[i]}");
  }

  print(numeros);
  // puede imprimirse una lista/array con una llamada al método forEach(print)
  print("Forma de imprimir un array con un forEach");
  numeros.forEach(print);
}

void ejercicio2_2() {
  // se puede hacer lo mismo que en el apartado anterior con la clase map

  Map<String, int> mapIDUser = {
    "Isidoro": 123456789,
    "Carmen": 987654321,
    "Maria": 12349876,
  };
  print(mapIDUser);

  mapIDUser.forEach((key, value) {
    print("ID $key $value");
  });
}
