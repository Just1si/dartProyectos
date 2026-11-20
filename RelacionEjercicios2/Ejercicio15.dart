void main() {
  int n = 5;
  int resultado = factorialRecursivo(n);
  print("El factorial de $n es: $resultado");
}

int factorialRecursivo(int n) {
  if (n < 0) {
    throw ArgumentError("El número debe ser entero y positivo.");
  }
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorialRecursivo(n - 1);
}