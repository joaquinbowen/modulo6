import 'estudiante.dart';

void main() {
  final estudiante1 = Estudiante("Juan");
  final estudiante2 = Estudiante("Ana");

  estudiante1.cuaderno = "Mate";
  estudiante2.cuaderno = "Literatura";

  print(estudiante1.nombre);
  print(estudiante1.cuaderno);
  print(estudiante2.nombre);
  print(estudiante2.cuaderno);

  print(Estudiante.pizarra);
  estudiante1.escribirEnPizarra("Hola desdeJuan");
  print(Estudiante.pizarra);
  //print(Estudiante.contadorEstudiantes);
  print(Estudiante.obtenerContador());
}
