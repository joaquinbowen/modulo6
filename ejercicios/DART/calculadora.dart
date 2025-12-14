class Calculadora {
  int sumar(int v1, int v2) {
    return v1 + v2;
  }
}

void main() {
  final calc = new Calculadora();
  int r = calc.sumar(7, 70);
  print(r);
}
