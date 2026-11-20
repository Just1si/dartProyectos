void main() {
  int a = 48;
  int b = 18;

  int resultado = mcdRecursivo(a, b);
  print("El MCD de $a y $b es: $resultado");
}

int mcdRecursivo(int a, int b) {
  if (b == 0) {
    return a;
  }
  return mcdRecursivo(b, a % b);
}