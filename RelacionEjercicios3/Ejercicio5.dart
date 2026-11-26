/*
 */

import 'dart:convert';
import 'dart:developer';

void main() {
  int num = int.parse("4");
  print("Parse int: \t$num");

  double numDecimal = double.parse("3.1416");
  print("Decimal parseado $numDecimal");

  bool numBol = bool.parse("true");
  print("Parseando booleano $numBol");

  String listaStr = "1,2,3,4";
  /* 
  cojemos un string, la partimos con spliy y luego usamos map() y toList()  */
  List listaNumeros = listaStr.split(',').map(int.parse).toList();
  print("Parseando listas: $listaNumeros");

  /* Creamos o recibimos un String   */
  String mapaString = '{"Primero":"1:,"Segundo":"2", "Tercero": "3"}';
  /* creamos el mapa con los tipos que vamos a recibir, en el mejor de los casos
  usamos el tipo de dato dynamic para tratarlos todos de forma
  menos estricta que en el java tradicional
  luego lo parseamos con el metodo jsonDecode */
  Map<String, dynamic> mapeado = jsonDecode(mapaString);
  print("Parseando mapas: $mapeado");

  String setString = "1,2,3,4,5,6";
  /*El mismo procedimiento que con list pero para set */
  Set setParseado = setString.split(",").map(int.parse).toSet();
}
