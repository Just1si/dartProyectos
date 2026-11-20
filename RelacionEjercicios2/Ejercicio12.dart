void main() {
  Map<String, double> temperaturasPorDia = {
    "Lunes": 22.5,
    "Martes": 24.0,
    "Miércoles": 19.8,
    "Jueves": 26.2,
    "Viernes": 21.3,
    "Sábado": 25.0,
    "Domingo": 23.1,
  };

  mostrarTemperaturaMaxima(temperaturasPorDia);
  mostrarTemperaturaMinima(temperaturasPorDia);
  mostrarTemperaturaMedia(temperaturasPorDia);
}

void mostrarTemperaturaMaxima(Map<String, double> registros) {
  if (registros.isEmpty) {
    print("No hay registros de temperatura.");
    return;
  }

  String diaMax = registros.keys.first;
  double tempMax = registros.values.first;

  registros.forEach((dia, temp) {
    if (temp > tempMax) {
      tempMax = temp;
      diaMax = dia;
    }
  });

  print("Temperatura máxima: $tempMax°C (el $diaMax)");
}

void mostrarTemperaturaMinima(Map<String, double> registros) {
  if (registros.isEmpty) {
    print("No hay registros de temperatura.");
    return;
  }

  String diaMin = registros.keys.first;
  double tempMin = registros.values.first;

  registros.forEach((dia, temp) {
    if (temp < tempMin) {
      tempMin = temp;
      diaMin = dia;
    }
  });

  print("Temperatura mínima: $tempMin°C (el $diaMin)");
}

void mostrarTemperaturaMedia(Map<String, double> registros) {
  if (registros.isEmpty) {
    print("No hay registros de temperatura.");
    return;
  }

  double suma = 0;
  for (double temp in registros.values) {
    suma += temp;
  }

  double media = suma / registros.length;
  print("Temperatura media: ${media.toStringAsFixed(2)}°C");
}