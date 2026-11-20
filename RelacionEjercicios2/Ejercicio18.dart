void main() {
  int n = 8;
  List<int> fibonacci = serieFibonacci(n);

  print("Serie de Fibonacci hasta el término $n: $fibonacci");
}

List<int> serieFibonacci(int n) {
  if (n <= 0) {
    return [];
  }

  List<int> serie = [0];
  if (n == 1) {
    return serie;
  }

  serie.add(1);
  for (int i = 2; i < n; i++) {
    serie.add(serie[i - 1] + serie[i - 2]);
  }

  return serie;
}