void main() {
  int n = 5;
  int resultado = sumaPrimerosNaturales(n);
  print("La suma de los $n primeros números naturales es: $resultado");
}

int sumaPrimerosNaturales(int n) {
  if (n <= 0) {
    return 0;
  }

  int suma = 0;
  for (int i = 1; i <= n; i++) {
    suma += i;
  }
  return suma;
}