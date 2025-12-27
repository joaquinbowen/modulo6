import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico {
  Celular(super.codigo, super.marca);
  @override
  void imprimir() {
    print("Codigo: ${super.codigo}");
    print("Marca: ${super.marca}");
  }

  @override
  void registrarParametros() {
    print("Registrando inventario");
    print("Codigo: ${super.codigo}");
    print("Marca: ${super.marca}");
  }
}

void main() {
  final cel = new Celular(1896, "Iphone");
  cel.imprimir();
  cel.registrarParametros();
}
