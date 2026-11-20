void main() {
  int n = 30;
  List<int> primos = primosHasta(n);

  print("Números primos entre 1 y $n: $primos");
}

List<int> primosHasta(int n) {
  List<int> listaPrimos = [];

  for (int i = 1; i <= n; i++) {
    if (esPrimo(i)) {
      listaPrimos.add(i);
    }
  }

  return listaPrimos;
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