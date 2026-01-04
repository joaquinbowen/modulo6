class Estudiante {
  final String nombre;
  late String cuaderno;
  static String pizarra = "Limpia";
  static const escuela = "14 de julio";
  static int _contadorEstudiantes = 0;

  Estudiante(this.nombre) {
    _contadorEstudiantes++;
  }

  static obtenerContador() {
    return _contadorEstudiantes;
  }

  void escribirEnPizarra(String mensaje) {
    pizarra = mensaje;
  }
}
