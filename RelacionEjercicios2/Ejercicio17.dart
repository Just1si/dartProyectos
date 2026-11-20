void main() {
  int dividendo = 23;
  int divisor = 4;

  int cociente = calcularCocienteRecursivo(dividendo, divisor);
  int resto = calcularRestoRecursivo(dividendo, divisor);

  print("División de $dividendo entre $divisor:");
  print("Cociente: $cociente");
  print("Resto: $resto");
}

int calcularCocienteRecursivo(int dividendo, int divisor) {
  if (divisor <= 0) {
    throw ArgumentError("El divisor debe ser un entero positivo.");
  }
  if (dividendo < divisor) {
    return 0;
  }
  return 1 + calcularCocienteRecursivo(dividendo - divisor, divisor);
}

int calcularRestoRecursivo(int dividendo, int divisor) {
  if (divisor <= 0) {
    throw ArgumentError("El divisor debe ser un entero positivo.");
  }
  if (dividendo < divisor) {
    return dividendo;
  }
  return calcularRestoRecursivo(dividendo - divisor, divisor);
}