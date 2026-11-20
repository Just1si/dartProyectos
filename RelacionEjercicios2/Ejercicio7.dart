void main() {
  int n = 5;
  int resultado = factorial(n);
  print("El factorial de $n es: $resultado");
}

int factorial(int n) {
  if (n < 0) {
    throw ArgumentError("El número debe ser entero y positivo.");
  }

  int acumulado = 1;
  for (int i = 2; i <= n; i++) {
    acumulado *= i;
  }
  return acumulado;
}