void main() {
  int numero = 29;
  bool primo = esPrimo(numero);

  if (primo) {
    print("El número $numero es primo.");
  } else {
    print("El número $numero no es primo.");
  }
}

bool esPrimo(int n) {
  if (n <= 1) {
    return false;
  }

  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}