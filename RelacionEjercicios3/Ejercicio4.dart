void main() {
  int num1 = 3;
  double decimal1 = 2.3;
  List lista = [1, 4, 6, 9];
  Map mapa = {1: 'Primero', 2: 'Segundo', 3: 'Tercero'};
  Set setNum = {1, 2, 3, 4, 5, 6};

  print(aCadena(num1));
  print(aCadena(decimal1));
  print(aCadena(lista));
  print(aCadena(mapa));
  print(aCadena(setNum));
}

String aCadena(dynamic dato) {
  String resultado = "";
  resultado += dato.toString();
  return resultado;
}
