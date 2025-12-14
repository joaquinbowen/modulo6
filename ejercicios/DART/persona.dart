class Persona {
  String? nombre;
  int edad = 0;
  double? estatura;
}

void main() {
  Persona p;
  p = new Persona();
  p.nombre = "Mario";
  p.edad = 50;
  p.estatura = 1.67;
  print("Nombre: ${p.nombre}");
  print("Edad: ${p.edad}");
  print("Estatura: ${p.estatura}");
}
