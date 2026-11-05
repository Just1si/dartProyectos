import 'dart:math';

void ejercicio7() {
  // Coeficientes declarados como double
  double a = 1.0;
  double b = -5.0;
  double c = 6.0;

  if (a == 0) {
    print("No es una ecuación de segundo grado.");
    return;
  }

  // Calculamos el discriminante (b^2 - 4ac)
  double discriminante = (b * b) - (4 * a * c);

  if (discriminante < 0) {
    print("Las raíces no son reales (son complejas/imaginarias).");
  } else if (discriminante == 0) {
    double x = -b / (2 * a);
    print("Tiene una única raíz real: x = $x");
  } else {
    double x1 = (-b + sqrt(discriminante)) / (2 * a);
    double x2 = (-b - sqrt(discriminante)) / (2 * a);
    print("Las raíces reales son: x1 = $x1 y x2 = $x2");
  }
}
