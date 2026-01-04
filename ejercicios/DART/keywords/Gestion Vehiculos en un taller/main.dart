import 'taller.dart';
import 'vehiculo.dart';
import 'empleado.dart';

void main() {
  final empleado1 = Empleado("Carlos");
  empleado1.actualizarMensajeDelTaller("Bienvenido a taller el perno");
  final vehiculo1 = Vehiculo("PCK-6923");
  final vehiculo2 = Vehiculo("TCG-8923");
  vehiculo1.registrarDiagnostico("Fuga de aceite");
  vehiculo2.registrarDiagnostico("Cambio de pastillas");
  vehiculo1.extraInfo = "Aceite 10w30";
  vehiculo2.extraInfo = 150.37;
  vehiculo1.resumen();
  vehiculo2.resumen();
  print("Reparaciones realizadas: ${Taller.obtenerReparaciones()}");
}
