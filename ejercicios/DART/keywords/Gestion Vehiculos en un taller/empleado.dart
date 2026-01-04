import 'taller.dart';

class Empleado {
  final String nombre;

  Empleado(this.nombre);

  void actualizarMensajeDelTaller(String txt) {
    Taller.cambiarMensaje(txt);
  }
}
