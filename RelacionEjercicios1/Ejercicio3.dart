void ejercicio3() {
  const pi = 3.141592;

  final annoActual = DateTime.now().year;
  bool esBisiesto = DateTime(annoActual, 2, 29).month == 2;

  final diasAnno = esBisiesto ? "si" : "no";

  print("valor de pi: $pi");

  print("$annoActual es bisiesto o no?: $diasAnno");
  ;
}
