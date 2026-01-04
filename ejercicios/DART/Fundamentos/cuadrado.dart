import 'figura.dart';

class Cuadrado extends Figura {
  const Cuadrado(this.lado, super.color);
  final double lado;

  @override
  double calcularArea() {
    return lado * lado;
  }

  @override
  double calcularPerimetro() {
    return lado * 4;
  }
}

void main() {
  final c = const Cuadrado(17, "rojo");
  final area1 = c.calcularArea();
  final perimetro1 = c.calcularPerimetro();

  print("area: $area1 perimetro: $perimetro1");
}
