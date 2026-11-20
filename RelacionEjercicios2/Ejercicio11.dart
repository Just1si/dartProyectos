void main() {
  List<double> temperaturasMaximas = [22.5, 24.0, 19.8, 26.2, 21.3, 25.0, 23.1];

  double maxima = temperaturaMaxima(temperaturasMaximas);
  double minima = temperaturaMinima(temperaturasMaximas);
  double media = temperaturaMedia(temperaturasMaximas);

  print("Temperaturas máximas: $temperaturasMaximas");
  print("Temperatura máxima: $maxima");
  print("Temperatura mínima: $minima");
  print("Temperatura media: ${media.toStringAsFixed(2)}");
}

double temperaturaMaxima(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas no puede estar vacía.");
  }

  double max = temperaturas.first;
  for (double temp in temperaturas) {
    if (temp > max) {
      max = temp;
    }
  }
  return max;
}

double temperaturaMinima(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas no puede estar vacía.");
  }

  double min = temperaturas.first;
  for (double temp in temperaturas) {
    if (temp < min) {
      min = temp;
    }
  }
  return min;
}

double temperaturaMedia(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError("La lista de temperaturas no puede estar vacía.");
  }

  double suma = 0;
  for (double temp in temperaturas) {
    suma += temp;
  }
  return suma / temperaturas.length;
}

/*
Pregunta: estas funciones devuelven un valor numérico que queda descontextualizado en el
caso de la máxima y la mínima, perdiendo el dato de en qué día se produjeron. ¿Cómo lo
solucionarías? Hay varias opciones.

Una opción es crear una clase o un Record (en Dart 3) que agrupe el valor de la temperatura
junto con el día o índice en el que ocurrió, por ejemplo devolviendo un registro como
({int dia, double temperatura}) o una clase RegistroTemperatura con los campos dia y
temperatura. Otra opción es devolver el índice del día (o buscarlo con indexOf) para luego
consultar el día o la fecha asociada en otra lista paralela de días/fechas o en un Map que
relacione cada día con su temperatura. También se podría modelar cada registro como un objeto
o Map con fecha/día y temperatura desde el principio, de modo que al calcular el máximo o el
mínimo se conserve siempre su contexto.
*/