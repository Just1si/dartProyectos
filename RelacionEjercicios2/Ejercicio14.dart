void main() {
  int n = 5;
  int resultado = sumaPrimerosNaturalesRecursiva(n);
  print("La suma de los $n primeros números naturales es: $resultado");
}

int sumaPrimerosNaturalesRecursiva(int n) {
  if (n <= 0) {
    return 0;
  }
  return n + sumaPrimerosNaturalesRecursiva(n - 1);
}