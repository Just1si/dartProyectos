import 'temperaturas_utils.dart';

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