import 'celular.dart';
import 'dispositivo_electronico.dart';

class Computador extends DispositivoElectronico {
  int capacidadDisco;
  Computador(super.codigo, super.marca, this.capacidadDisco);
  @override
  void imprimir() {
    print("Codigo: ${super.codigo}");
    print("Marca: ${super.marca}");
    print("Capacidad del disco: ${capacidadDisco}");
  }

  @override
  void registrarParametros() {
    print("Registrando inventario");
    print("Codigo: ${super.codigo}");
    print("Marca: ${super.marca}");
    print("Capacidad del disco: ${capacidadDisco}");
  }
}

void main() {
  //final de = new DispositivoElectronico(7877, "intel");
  final compu = new Computador(78, "Asus", 100);
  final cel = new Celular(2369, "Motorola");
  //de.imprimir();
  //compu.imprimir();
  //cel.imprimir();
  compu.registrarParametros();
  cel.registrarParametros();
}
