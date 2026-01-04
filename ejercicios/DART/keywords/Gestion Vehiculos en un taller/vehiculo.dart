import 'taller.dart';

class Vehiculo {
  final String placa;
  late String diagnostico;
  String estado = "Pendiente";
  dynamic extraInfo;

  Vehiculo(this.placa);

  void registrarDiagnostico(String txt) {
    diagnostico = txt;
    estado = "Reparado";
    Taller.incrementarContador();
  }

  void resumen() {
    print(Taller.nombre);
    print(Taller.mensajeGeneral);
    print("Resumen Vehiculo");
    print(placa);
    print(diagnostico);
    print(estado);
    print(extraInfo);
  }
}
