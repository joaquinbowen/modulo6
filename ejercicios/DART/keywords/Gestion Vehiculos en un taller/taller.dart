class Taller {
  static const String nombre = "Taller El Perno";
  // ignore: unused_field
  static String mensajeGeneral = "Bienvenidos";
  static int _totalReparaciones = 0;

  static void cambiarMensaje(String mensaje) {
    mensajeGeneral = mensaje;
  }

  static void incrementarContador() {
    _totalReparaciones++;
  }

  static int obtenerReparaciones() {
    return _totalReparaciones;
  }
}
