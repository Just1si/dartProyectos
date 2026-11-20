void main() {
  int a = 28;
  int b = 68;

  int resultado = mcd(a, b);
  print("El MCD de $a y $b es: $resultado");
}

int mcd(int a, int b) {
  while (b != 0) {
    int resto = a % b;
    a = b;
    b = resto;
  }
  return a;
}