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